% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getRiskMetrics.R
\name{getRiskMetrics}
\alias{getRiskMetrics}
\title{Get VaR and ES metrics}
\usage{
getRiskMetrics(ticker.new, amt = 12500L, ...)
}
\arguments{
\item{ticker.new}{Character; a string or vector of strings specifying tickers}

\item{amt}{Numeric; a numeric or vector of numerics specifying a dollar amount of the
ticker to add.}

\item{...}{additional parameters (passed to \code{getHoldings.SMIF})}
}
\value{
A \code{list} of following objects:
\itemize{
  \item{Data.frame; VaR/ES data, in USD and percentages, before and after addition}
  \item{Numeric; percentage change in size of portfolio caused by additions}
  \item{Numeric; percentage of total portfolio comprised by additions}
}
}
\description{
Retrieves metrics related to risk for a proposed addition. Additions specified by
tickers of new positions and corresponding sizes (in USD).
}
\details{
Retrieves current holdings in SMIF portfolio, determines current portfolio Value at
Risk and Expected Shortfall metrics. Determines portfolio metrics for new "proposed"
portfolio (with additions), returns comparisons.

All metrics are calculated with a 95% confidence interval and for monthly data.
If length of \code{amt} is less than length of \code{ticker.new}, the function will
attempt to expand \code{amt} to match number of tickers.
}
\examples{
\donttest{
getRiskMetrics(c("NVDA", "T", "VZ"), amt = c(10000, 4500, 7500))
}
}
\seealso{
\code{\link{getHoldings.SMIF}}

Other data processing functions: \code{\link{getSlides}}
}
