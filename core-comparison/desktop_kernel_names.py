"""Count desktop Metal kernel names that also occur in the iOS 1.0.1 Metal library.

Usage: python3 core-comparison/desktop_kernel_names.py <clone of JamesQiu2005/SpektraLab> <clone of JamesQiu2005/spektralab-engine>

Compares names only. Reads air-functions.json in this directory (the functions recovered from the
iOS library) and the *.metal files of two pinned commits. Writes desktop-kernel-names.json.
"""
import json
import re
import subprocess
import sys
from pathlib import Path

here = Path(__file__).resolve().parent
DESKTOP_COMMIT = 'fd891c6bc5eb350387602deb5c1ef9b6dcdab948'
ENGINE_COMMIT = '1f6cad722d0fae4d6dc569590697b718193724fc'
KERNEL = re.compile(r'\bkernel\s+void\s+(\w+)')


def git(repo, *args):
    return subprocess.run(['git', '-C', repo, *args], check=True, capture_output=True, text=True).stdout


def kernels(repo, commit, prefix):
    """Kernel names per .metal file under prefix at commit."""
    found = {}
    for path in git(repo, 'ls-tree', '-r', '--name-only', commit, prefix).split('\n'):
        if path.endswith('.metal'):
            names = KERNEL.findall(git(repo, 'show', f'{commit}:{path}'))
            if names:
                found[path] = names
    return found


desktop_repo, engine_repo = sys.argv[1], sys.argv[2]
modules = json.loads((here / 'air-functions.json').read_text())
ios_functions = sorted({f for m in modules for f in m['functions']})
ios = set(ios_functions)

desktop = kernels(desktop_repo, DESKTOP_COMMIT, 'engine/src/shaders')
engine = kernels(engine_repo, ENGINE_COMMIT, 'kernels')
desktop_names = sorted({n for names in desktop.values() for n in names})
engine_names = sorted({n for names in engine.values() for n in names})

record = dict(
    ios=dict(sample='SpektraLab iOS 1.0.1 build 202610271810', source='air-functions.json',
             modules=len(modules), functions=len(ios_functions),
             functions_named_spk=sum(f.startswith('spk_') for f in ios_functions)),
    desktop=dict(repository='https://github.com/JamesQiu2005/SpektraLab', commit=DESKTOP_COMMIT,
                 files={p: len(n) for p, n in sorted(desktop.items())}, kernels=len(desktop_names),
                 names_in_ios=sorted(set(desktop_names) & ios), names_not_in_ios=sorted(set(desktop_names) - ios)),
    engine=dict(repository='https://github.com/JamesQiu2005/spektralab-engine', commit=ENGINE_COMMIT,
                files={p: len(n) for p, n in sorted(engine.items())}, kernels=len(engine_names),
                names_in_ios=sorted(set(engine_names) & ios), names_in_desktop=sorted(set(engine_names) & set(desktop_names))),
    ios_names_not_in_desktop=sorted(ios - set(desktop_names)),
    scope='Names only. Function bodies and parameter lists are not compared here; see D03 for parameter metadata.')
record['desktop']['count_in_ios'] = len(record['desktop']['names_in_ios'])
record['engine']['count_in_ios'] = len(record['engine']['names_in_ios'])
(here / 'desktop-kernel-names.json').write_text(json.dumps(record, indent=2) + '\n')
print(f"iOS: {len(modules)} modules, {len(ios_functions)} functions")
print(f"desktop {DESKTOP_COMMIT[:7]}: {len(desktop_names)} kernels in {len(desktop)} files, "
      f"{record['desktop']['count_in_ios']} names in iOS, not in iOS: {record['desktop']['names_not_in_ios']}")
print(f"engine {ENGINE_COMMIT[:7]}: {len(engine_names)} kernels in {len(engine)} files, "
      f"{record['engine']['count_in_ios']} names in iOS, {len(record['engine']['names_in_desktop'])} in desktop")
