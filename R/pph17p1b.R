# File: R/pph17p1b.R
# Menghitung PPh Badan berdasarkan Pasal 17 ayat (1) huruf b UU PPh
# Tarif default: 22% (berdasarkan UU HPP No.7/2021)
# Optional: diskon untuk emiten (go public)

pph17p1b <- function(pkp, listed = FALSE, year = as.numeric(format(Sys.Date(), "%Y"))) {
  # Validasi input
  if (!is.numeric(pkp)) stop("PKP harus berupa angka.")
  if (pkp <= 0) return(0)
  
  # Tentukan tarif berdasarkan tahun pajak
  if (year <= 2019) {
    rate <- 0.25
  } else if (year == 2020 || year == 2021) {
    rate <- 0.22  # UU No. 2 Tahun 2020 → tarif 22% mulai 2020
  } else {
    rate <- 0.22  # UU HPP 2021 menetapkan tetap 22%
  }
  
  # Diskon 3% untuk perusahaan Tbk dengan saham ≥40% publik
  if (listed) {
    rate <- rate - 0.03
  }
  
  # Hitung PPh terutang
  pph <- pkp * rate
  return(pph)
}
