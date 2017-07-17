pph7p1 <- function(merital_status="K", combined=0, dependents=2) {
  ptkp_personal = 36000000
  ptkp_spouse = 0
  ptkp_dependent = 3000000
  max_dependents = 3
  if (dependents > max_dependents) {
    dependents = max_dependents
  }
  if (merital_status == "K") {
    ptkp_spouse = ifelse(combined == 1, ptkp_personal, ptkp_dependent)
  }
  ptkp = ptkp_personal + ptkp_spouse + ( ptkp_dependent * dependents)
  return(ptkp)
}


