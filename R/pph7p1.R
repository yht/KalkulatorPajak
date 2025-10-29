# File: R/pph7p1.R
# Hitung Penghasilan Tidak Kena Pajak (PTKP)
# Berdasarkan Pasal 7 ayat (1) UU PPh dan PMK-101/PMK.010/2016

pph7p1 <- function(marital_status = "TK", combined = 0, dependents = 0) {
  # Nilai dasar PTKP
  ptkp_individu <- 36000000   # Wajib Pajak orang pribadi
  ptkp_spouse   <- 36000000   # Tambahan jika penghasilan suami istri digabung
  ptkp_dependen <- 3000000    # Tambahan per tanggungan
  max_dependen  <- 3          # Maksimal 3 tanggungan
  
  # Validasi input
  if (!marital_status %in% c("K", "TK")) {
    stop("Status harus 'K' (Kawin) atau 'TK' (Tidak Kawin).")
  }
  if (dependents < 0) dependents <- 0
  if (dependents > max_dependen) dependents <- max_dependen
  if (!combined %in% c(0, 1)) stop("'combined' harus bernilai 0 (tidak digabung) atau 1 (digabung).")
  
  # Hitung PTKP dasar
  ptkp <- ptkp_individu
  
  # Tambahan untuk status kawin
  if (marital_status == "K") {
    if (combined == 1) {
      # Penghasilan suami istri digabung → tambahan 36 juta
      ptkp <- ptkp + ptkp_spouse
    } 
    # Jika tidak digabung, tidak ada tambahan 36 juta
  }
  
  # Tambahan untuk tanggungan (maks 3 orang)
  ptkp <- ptkp + (ptkp_dependen * dependents)
  
  return(ptkp)
}
