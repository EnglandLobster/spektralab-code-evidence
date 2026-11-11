"""Check a notice file in the SpektraLab iOS 1.0.1 App Store package and the state of three public repositories.

Usage: python3 check.py <SpektraLab ipa> <clone of JamesQiu2005/SpektraLab>
                        <clone of JamesQiu2005/spektralab-engine> <clone of andreavolpato/spektrafilm>

The package is the file downloaded from the App Store; it is not in this archive. The clones need all
branches and tags. Writes record.json and the two excerpts next to this script. Standard library only.
"""
import hashlib
import json
import subprocess
import sys
import zipfile
from pathlib import Path

here = Path(__file__).resolve().parent
ipa, desktop, engine, upstream = sys.argv[1:5]
RES = 'Payload/SpektraLab.app/EngineResources/'
DESKTOP_COMMIT = 'fd891c6bc5eb350387602deb5c1ef9b6dcdab948'
UPSTREAM_COMMIT = '3bb2c2d2801ff68b92019cf1dbcbb133d60832bc'
QUOTES = ["**In this repository (the phone)**, synced from the desktop's `0bca29da` on 2026-10-09",
          '**On the desktop** (SpektraLab, where these files are made)',
          '`app/SpektraLab/tools/build_engine.sh`', '`engine/tests/bw_checks.py`',
          '`engine/tests/mobile_checks.py` takes them through a phone engine the same way']


def sha256(data):
    return hashlib.sha256(data).hexdigest()


def git(repo, *args, check=True):
    return subprocess.run(['git', '-C', repo, *args], check=check, capture_output=True, text=True)


def has_commit(repo, rev):
    return git(repo, 'cat-file', '-e', rev + '^{commit}', check=False).returncode == 0


def refs(repo):
    out = git(repo, 'for-each-ref', '--format=%(refname) %(objectname)', 'refs/remotes/origin', 'refs/tags').stdout
    return {name.replace('refs/remotes/', '').replace('refs/', ''): commit
            for name, commit in (line.split() for line in out.strip().split('\n')) if not name.endswith('/HEAD')}


def roots(repo, rev):
    return git(repo, 'rev-list', '--max-parents=0', rev).stdout.split()


def commit_info(repo, rev):
    commit, date, subject = git(repo, 'log', '-1', '--format=%H%x09%aI%x09%s', rev).stdout.strip().split('\t')
    return dict(commit=commit, author_date=date, subject=subject)


def paragraph(text, start):
    """The paragraph beginning with start, up to the next blank line."""
    i = text.index(start)
    j = text.find('\n\n', i)
    return text[i:j if j != -1 else len(text)].rstrip()


# --- the package -----------------------------------------------------------------------------
z = zipfile.ZipFile(ipa)
entries = {}
for name in ('PRODUCT_PROFILES_NOTICE.md', 'ENGINE-COMMIT.txt', 'ENGINE-HARDENED.txt', 'LICENSE-PROFILES.txt'):
    info = z.getinfo(RES + name)
    entries[name] = dict(path=RES + name, bytes=info.file_size, sha256=sha256(z.read(info)),
                         zip_timestamp='%04d-%02d-%02d %02d:%02d:%02d' % info.date_time)
notice = z.read(RES + 'PRODUCT_PROFILES_NOTICE.md').decode()
profiles = {n[len(RES + 'profiles/'):]: sha256(z.read(n)) for n in z.namelist()
            if n.startswith(RES + 'profiles/') and n.endswith('.json')}


def blob_hashes(repo, commit, prefix):
    names = [p for p in git(repo, 'ls-tree', '-r', '--name-only', commit, prefix).stdout.split('\n') if p.endswith('.json')]
    return {p.rsplit('/', 1)[1]: sha256(subprocess.run(['git', '-C', repo, 'show', f'{commit}:{p}'],
                                                       check=True, capture_output=True).stdout) for p in names}


desktop_profiles = blob_hashes(desktop, DESKTOP_COMMIT, 'engine/resources/profiles')
identical = sorted(n for n, h in profiles.items() if desktop_profiles.get(n) == h)
package = dict(
    sample='SpektraLab iOS 1.0.1 build 202610271810, App Store ID 6820950508',
    ipa_bytes=Path(ipa).stat().st_size, ipa_sha256=sha256(Path(ipa).read_bytes()),
    entries=entries, engine_commit_txt=z.read(RES + 'ENGINE-COMMIT.txt').decode().strip(),
    notice_contains={q: q in notice for q in QUOTES},
    profiles=dict(in_package=len(profiles), desktop_commit=DESKTOP_COMMIT,
                  in_desktop_engine_resources=len(desktop_profiles),
                  byte_identical_to_desktop=len(identical),
                  in_package_only=sorted(set(profiles) - set(desktop_profiles))))

desktop_notice = git(desktop, 'show', f'{DESKTOP_COMMIT}:engine/resources_product/NOTICE.md').stdout
ios_excerpt = paragraph(notice, '**On the desktop**') + '\n\n' + paragraph(notice, '**In this repository (the phone)**')
desktop_excerpt = paragraph(desktop_notice, '**In the macOS app')
(here / 'PRODUCT_PROFILES_NOTICE-excerpt.md').write_text(
    'Excerpt of `' + RES + 'PRODUCT_PROFILES_NOTICE.md` in the SpektraLab iOS 1.0.1 package: the two paragraphs\n'
    'that replace the "In the macOS app" paragraph of the desktop file. The complete file is '
    f"{entries['PRODUCT_PROFILES_NOTICE.md']['bytes']} bytes,\nSHA-256 `{entries['PRODUCT_PROFILES_NOTICE.md']['sha256']}`.\n\n---\n\n"
    + ios_excerpt + '\n')
(here / 'desktop-NOTICE-fd891c6-excerpt.md').write_text(
    'Excerpt of `engine/resources_product/NOTICE.md` in JamesQiu2005/SpektraLab at commit\n'
    f'`{DESKTOP_COMMIT}`: the paragraph that the iOS file replaces.\n\n---\n\n' + desktop_excerpt + '\n')

# --- the repositories ------------------------------------------------------------------------
lookups = {rev: dict(in_desktop_repository=has_commit(desktop, rev), in_engine_repository=has_commit(engine, rev))
           for rev in ('0bca29da', '998fd80', DESKTOP_COMMIT[:7])}
desktop_refs = refs(desktop)
by_root = {}
for name in sorted(desktop_refs):
    by_root.setdefault(','.join(r[:7] for r in roots(desktop, desktop_refs[name])), []).append(name)
upstream_root = roots(upstream, UPSTREAM_COMMIT)
main_notice = git(desktop, 'show', 'origin/main:license/NOTICE.md').stdout
repositories = dict(
    commit_lookups=lookups,
    desktop=dict(repository='https://github.com/JamesQiu2005/SpektraLab', refs=desktop_refs,
                 refs_by_root_commit=by_root,
                 root_commits={r[:7]: commit_info(desktop, r) for r in sorted({r for k in by_root for r in roots(desktop, desktop_refs[by_root[k][0]])})},
                 merge_base_main_and_main_v1=git(desktop, 'merge-base', 'origin/main', 'origin/main_v1', check=False).stdout.strip() or None,
                 commits_on_main=int(git(desktop, 'rev-list', '--count', 'origin/main').stdout),
                 commits_on_main_v1=int(git(desktop, 'rev-list', '--count', 'origin/main_v1').stdout),
                 pinned_commit_on=sorted(n for n, c in desktop_refs.items()
                                         if git(desktop, 'merge-base', '--is-ancestor', DESKTOP_COMMIT, c, check=False).returncode == 0),
                 license_notice_first_sentence=' '.join(paragraph(main_notice, '**The SpektraLab engine').split('**')[1].split())),
    engine=dict(repository='https://github.com/JamesQiu2005/spektralab-engine', refs=refs(engine),
                commits=int(git(engine, 'rev-list', '--all', '--count').stdout)),
    upstream=dict(repository='https://github.com/andreavolpato/spektrafilm', pinned_commit=UPSTREAM_COMMIT,
                  root_commit=commit_info(upstream, upstream_root[0])))

(here / 'record.json').write_text(json.dumps(dict(package=package, repositories=repositories), indent=2, ensure_ascii=False) + '\n')
print(json.dumps(package, indent=1, ensure_ascii=False)[:1800])
print(json.dumps({k: v for k, v in repositories['desktop'].items() if k not in ('refs',)}, indent=1, ensure_ascii=False)[:2600])
print(lookups)
