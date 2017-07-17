\name{sptopss}
\alias{sptopss}
\title{
Individual Income Tax, Super Simple
}
\description{
Calculate Individual Income Tax on Super Simple form.
}
\usage{
sptopss(bruto, pengurangan, status_kawin,
        penggabungan, tanggungan, dipotong)
}
\arguments{
  \item{bruto}{Gross Income}
  \item{pengurangan}{Allowed deductions}
  \item{status_kawin}{Merital status: K=married, TK=non}
  \item{penggabungan}{Combined spouse income: 1=yes}
  \item{tanggungan}{Dependents: max=3}
  \item{dipotong}{Tax credit}
}
\examples{
sptopss(60000000, 0, 50625000, 60000)
}
