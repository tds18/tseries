\name{pp.test}
\title{Phillips-Perron Unit Root Test}
\usage{
pp.test (x, lshort = TRUE)
}
\alias{pp.test}
\arguments{
  \item{x}{a numeric vector or time series.}
  \item{shortl}{a logical indicating whether the short or long version
    of the truncation lag parameter is used.}
}
\description{
  Computes the Phillips-Perron test for the null that \code{x} has
  a unit root. The general regression
  equation which incorporates a constant and a linear trend is used and
  the corrected t-statistic for a first order autoregressive coefficient
  equals one is computed. To estimate \code{sigma^2} the Newey-West
  estimator is used. If \code{shortl} is \code{TRUE}, then the
  truncation lag parameter is set to \code{trunc(4*(n/100)^0.25)},
  otherwise \code{trunc(12*(n/100)^0.25)} is used. The p-values are
  interpolated from Table 4.2, p. 103 of Banerjee et al. (1993).
  
  Missing values are not handled.
}
\value{
  A list with class \code{"htest"} containing the following components:
  \item{statistic}{the value of the test statistic.}
  \item{parameter}{the truncation lag parameter.}
  \item{p.value}{the p-value of the test.}
  \item{method}{a character string indicating what type of test was
    performed.} 
  \item{data.name}{a character string giving the name of the data.}
}
\references{
  A. Banerjee, J. J. Dolado, J. W. Galbraith, and D. F. Hendry (1993):
  \emph{Cointegration, Error Correction, and the Econometric Analysis of
  Non-Stationary Data}, Oxford University Press, Oxford.
  
  P. Perron (1988): Trends and Random Walks in Macroeconomic Time
  Series. \emph{Journal of Economic Dynamics and Control} 12, 297-332.
}
\author{A. Trapletti}
\examples{
x <- rnorm (1000)
pp.test (x)
y <- intgrt (x)
pp.test (y)
}
\keyword{ts}
