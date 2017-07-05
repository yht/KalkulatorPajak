pph17p1a <- function(pkp) {
  if (pkp < 0) {
    pph <- 0
    return(pph)
  } else if (pkp > 0 && pkp <= 5e+7) {
    pph <- pkp * 5 / 100
    return(pph)
  } else if (pkp > 5e+7 && pkp <= 2.5e+8) {
    pph <- 5e+7 * 5 / 100
    pph <- pph + ((pkp - 5e+7) * 15 / 100)
    return(pph)
  } else if (pkp > 2.5e+8 && pkp <= 5e+8) {
    pph <- (5e+7 * 5 / 100) + (2e+8 * 15 / 100)
    pph <- pph + ((pkp - 2.5e+8) * 25 / 100)
    return(pph)
  } else if (pkp > 5e+8) {
    pph <- (5e+7 * 5 / 100) + (2e+8 * 15 / 100) + (2.5e+8 * 25 / 100)
    pph <- pph + ((pkp - 5e+8) * 30 / 100)
    return(pph)
  }
}
