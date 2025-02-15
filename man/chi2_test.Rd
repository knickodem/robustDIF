% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robustDIF_functions.R
\name{chi2_test}
\alias{chi2_test}
\title{The R-DIF test of both item parameters.}
\usage{
chi2_test(theta.y, theta.z, irt.mle, log = F)
}
\arguments{
\item{theta.y}{the IRT scale parameter for the item intercepts}

\item{theta.z}{the IRT scale parameter for the item slopes}

\item{irt.mle}{the output of \code{\link[robustDIF]{get_irt_pars}}}

\item{log}{logical: use log of scaling function for the slopes?}
}
\value{
A named list containing the value of the chi2.test and p(chi.square > chi2.test), for each item.
}
\description{
Simultaneously tests for DIF in both the item intercepts and slopes using a asymptotic chi-square test.
}
\examples{
# Using the built-in example dataset "rdif.eg"
\dontrun{
rdif.intercepts <- rdif(irt.mle = rdif.eg)
rdif.slopes <- rdif(irt.mle = rdif.eg, par = "slope")
chi2_test(theta.y = rdif.intercepts$est,
          theta.z = rdif.slopes$est,
          irt.mle = rdif.eg)
}

}
