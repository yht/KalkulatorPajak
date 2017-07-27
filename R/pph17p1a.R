pph17p1a <- function(pkp, braket=tbl_pph17p1a) {
  PPh <- 0
  for(i in 1:nrow(braket)) {
    if(pkp <= braket[i, c("Max")] && pkp > braket[i, c("Min")]) {
      Min = braket[i, c("Min")]
      Scale = pkp - Min
      Trf = braket[i, c("Tarif")]
      PPh = braket[i, c("Vmin")] + (Scale * Trf)
    }
  }
  return(PPh)
}
