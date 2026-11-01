#include <algorithm>
#include <cmath>
constexpr double kSqrt2Pi = 2.50662827463100050242;
extern "C" double locked_logistic_rising(double x, double mu, double sigma, double nu) {
    nu = std::max(nu, 1e-5);
    const double S = 1.0 / (sigma * kSqrt2Pi);
    const double k = (2.0 * nu * S) / (1.0 - std::pow(2.0, -nu));
    double exponent = -k * (x - mu);
    exponent = std::max(-500.0, std::min(500.0, exponent));
    const double nu_log2 = nu * std::log(2.0);
    const double log_q = nu_log2 > 50.0 ? nu_log2 + std::log1p(-std::exp(-nu_log2))
                                        : std::log(std::expm1(nu_log2));
    // np.logaddexp(0, log_q + exponent)
    const double t = log_q + exponent;
    const double log_denom = t > 0.0 ? t + std::log1p(std::exp(-t)) : std::log1p(std::exp(t));
    return std::exp(-(1.0 / nu) * log_denom);
}

