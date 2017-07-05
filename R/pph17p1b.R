pph17p1b <- function(pkp) {
  if (pkp < 0) {
    pph <- 0
  } else {
    pph <- pkp * 28 / 100
  }
  return(pph)
}
