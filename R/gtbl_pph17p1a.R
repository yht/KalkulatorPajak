# File: R/gtbl_pph17p1a.R
# Fungsi ini membaca tabel tarif PPh Pasal 17(1)(a)
# dan menghitung nilai kumulatif pajak pada setiap lapisan.
# Contoh struktur CSV:
# Min,Max,Tarif
# 0,60000000,0.05
# 60000000,250000000,0.15
# 250000000,500000000,0.25
# 500000000,Inf,0.30

gtbl_pph17p1a <- function(filename) {
  tbl <- read.csv(filename)
  
  # Pastikan kolom yang dibutuhkan tersedia
  required_cols <- c("Min", "Max", "Tarif")
  if (!all(required_cols %in% names(tbl))) {
    stop("CSV harus memiliki kolom: Min, Max, dan Tarif")
  }
  
  # Inisialisasi kolom Vmin
  tbl$Vmin <- 0
  
  # Nilai awal kumulatif
  cumulative <- 0
  
  for (i in 1:nrow(tbl)) {
    if (i > 1) {
      prev_range <- tbl$Max[i - 1] - tbl$Min[i - 1]
      prev_rate <- tbl$Tarif[i - 1]
      cumulative <- cumulative + (prev_range * prev_rate)
    }
    tbl$Vmin[i] <- cumulative
  }
  
  return(tbl)
}
