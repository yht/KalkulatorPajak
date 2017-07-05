\name{sptopss}
\alias{sptopss}
\title{
Individual Income Tax, Super Simple
}
\description{
Calculate Individual Income Tax on Super Simple form.
}
\usage{
sptopss(bruto, pengurangan, ptkp, dipotong)
}
\arguments{
  \item{bruto}{Gross Income}
  \item{pengurangan}{Allowed deductions}
  \item{ptkp}{Personal exemptions}
  \item{dipotong}{Tax credit}
}
\examples{
sptopss(60000000, 0, 50625000, 60000)
}
