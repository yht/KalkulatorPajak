\name{pph17p1a}
\alias{pph17p1a}
\title{
Individual Income Tax Function
}
\description{
Individual Income Tax Calculation based on Income Tax Law
article 17 paragraph 1 (a).
}
\usage{
pph17p1a(pkp, bracket)
}
\arguments{
  \item{pkp}{Taxable Income}
  \item{bracket}{Bracket Table, default: tbl_pph17p1a}
}
\examples{
pph17p1a(60000000)
}
