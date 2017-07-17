\name{pph7p1}
\alias{pph7p1}
\title{
Tax Personal Deductions
}
\description{
Tax Personal Deductions based on Income Tax Article 7 paragraph 1
}
\usage{
pph7p1(merital_status, combined, dependents)
}
\arguments{
  \item{merital_status}{K = Married, TK = non}
  \item{combined}{1 = combined income}
  \item{dependents}{How many dependents}
}
\examples{
pph7p1("K", 1, 3)
}
