pph17p1a <- function(pkp, bracket=KalkulatorPajak::tbl_pph17p1a) {
  PPh <- 0
  for(i in 1:nrow(bracket)) {
    if(pkp <= bracket[i, c("Max")] && pkp > bracket[i, c("Min")]) {
      Min = bracket[i, c("Min")]
      Scale = pkp - Min
      Trf = bracket[i, c("Tarif")]
      PPh = bracket[i, c("Vmin")] + (Scale * Trf)
    }
  }
  return(PPh)
}
