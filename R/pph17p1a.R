# File: R/pph17p1a.R
# Fungsi menghitung PPh terutang berdasarkan PKP (Pasal 17 ayat (1) huruf a)

pph17p1a <- function(pkp, bracket = KalkulatorPajak::tbl_pph17p1a) {
  if (missing(pkp) || !is.numeric(pkp) || pkp < 0) {
    stop("Argumen 'pkp' harus berupa angka >= 0.")
  }
  
  if (!all(c("Min", "Max", "Tarif", "Vmin") %in% names(bracket))) {
    stop("Objek 'bracket' harus memiliki kolom Min, Max, Tarif, dan Vmin.")
  }
  
  PPh <- 0
  
  for (i in seq_len(nrow(bracket))) {
    Min <- bracket[i, "Min"]
    Max <- bracket[i, "Max"]
    Trf <- bracket[i, "Tarif"]
    Vmin <- bracket[i, "Vmin"]
    
    # Jika PKP berada dalam lapisan ini
    if (pkp > Min && pkp <= Max) {
      Scale <- pkp - Min
      PPh <- Vmin + (Scale * Trf)
      break
    }
    
    # Jika PKP melebihi semua lapisan (terakhir: Max == Inf)
    if (is.infinite(Max) && pkp > Min) {
      Scale <- pkp - Min
      PPh <- Vmin + (Scale * Trf)
      break
    }
  }
  
  return(PPh)
}
