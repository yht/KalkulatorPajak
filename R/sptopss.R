sptopss <- function(bruto, pengurangan=0, status_kawin="K",
                    penggabungan=0, tanggungan=2, dipotong=0) {
  ptkp = pph7p1(status_kawin, penggabungan, tanggungan)
  if(bruto < 0) {
    sptopss <- data.frame(bruto=bruto, pengurangan=0,
                          ptkp=ptkp, pkp=0, pph=0, dipotong=0,
                          pph7=0, status_kawin=status_kawin,
                          combined=penggabungan, dependents=2)
  } else {
    pkp <- bruto - pengurangan - ptkp
    pph <- pph17p1a(pkp)
    pph7 <- pph - dipotong
    sptopss <- data.frame(bruto=bruto, pengurangan=pengurangan,
                          ptkp=ptkp, pkp=pkp, pph=pph, dipotong=dipotong,
                          pph7=pph7, status_kawin=status_kawin,
                          penggabungan=penggabungan, tanggungan=tanggungan)
  }
  return(sptopss)
}
