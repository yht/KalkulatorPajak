sptopss <- function(bruto, pengurangan=0, ptkp=26325000, dipotong=0) {
  if(bruto < 0) {
    sptopss <- data.frame(bruto=bruto, pengurangan=0,
                          ptkp=0, pkp=0, pph=0, dipotong=0,
                          pph7=0)
  } else {
    pkp <- bruto - pengurangan - ptkp
    pph <- pph17p1a(pkp)
    pph7 <- pph - dipotong
    sptopss <- data.frame(bruto=bruto, pengurangan=pengurangan,
                          ptkp=ptkp, pkp=pkp, pph=pph, dipotong=dipotong,
                          pph7=pph7)
  }
  return(sptopss)
}
