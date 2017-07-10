pph2p3a <- function(resident_date, target = Sys.Date()) {
  resident_date <- as.Date(resident_date)
  target <- as.Date(target)
  t <- round(as.numeric(difftime(target, resident_date)))
  if (t < 183) {
    resident <- FALSE
  } else {
    resident <- TRUE
  }
  return(resident)
}


