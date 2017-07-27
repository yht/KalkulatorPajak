\name{tbl_pph17p1a}
\alias{tbl_pph17p1a}
\docType{data}
\title{
Bracket based on Income Tax Law article 17 paragraph 1 (a).
}
\description{
A dataset containing the minimum and maximum on each part
and tarifs.
}
\usage{data("tbl_pph17p1a")}
\format{
  A data frame with 4 observations on the following 5 variables.
  \describe{
    \item{\code{No}}{Id: a numeric vector}
    \item{\code{Min}}{Minimum Taxable Income: a numeric vector}
    \item{\code{Max}}{Maximum Taxable Income: a numeric vector}
    \item{\code{Tarif}}{a numeric vector}
    \item{\code{Vmin}}{Tax Minimum on Range: a numeric vector}
  }
}
\source{
Income Tax Law article 17 paragraph 1 (a).
}
\examples{
data(tbl_pph17p1a)
## maybe str(tbl_pph17p1a) ; plot(tbl_pph17p1a) ...
}
\keyword{datasets}
