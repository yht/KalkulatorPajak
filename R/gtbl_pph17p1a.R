gtbl_pph17p1a <- function(filename) {
  tbl <- read.csv(file)
  Vmin = tbl[1, c('Min')]
  for(i in 1:nrow(tbl)) {
    if(i == 1) {
      tbl[i, c('Vmin')] <- Vmin
    } else {
      Max1 = tbl[i-1, c('Max')]
      Scale1 = tbl[i-1, c('Max')] - tbl[i-1, c('Min')]
      Trf1 = tbl[i-1, c('Tarif')]
      tbl[i, c('Vmin')] <- Vmin + (Trf1 * Scale1)
    }
    Vmin = Vmin + tbl[i, c('Vmin')]
  }
  return(tbl)
}
