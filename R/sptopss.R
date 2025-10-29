# File: R/sptopss.R
# Fungsi menghitung SPT Tahunan Orang Pribadi 1770-SS (Super Simple)
# Berdasarkan Pasal 17(1)(a) dan Pasal 7(1) UU PPh

sptopss <- function(bruto,
                    pengurangan = 0,
                    status_kawin = "K",
                    penggabungan = 0,
                    tanggungan = 0,
                    dipotong = 0) {
  
  # Hitung PTKP
  ptkp <- as.numeric(pph7p1(status_kawin, penggabungan, tanggungan))
  
  # Validasi input
  if (!is.numeric(bruto) || bruto < 0) {
    warning("Nilai bruto tidak valid (negatif atau bukan angka). Mengembalikan nol.")
    return(data.frame(
      bruto = bruto,
      pengurangan = 0,
      ptkp = ptkp,
      pkp = 0,
      pph_terutang = 0,
      pph_dipotong = 0,
      lebih_kurang_bayar = 0,
      status_kawin = status_kawin,
      penggabungan = penggabungan,
      tanggungan = tanggungan
    ))
  }
  
  # Hitung PKP (minimum 0)
  pkp <- bruto - pengurangan - ptkp
  if (pkp < 0) pkp <- 0
  
  # Hitung PPh Terutang
  pph_terutang <- pph17p1a(pkp)
  
  # Hitung selisih PPh
  lebih_kurang_bayar <- pph_terutang - dipotong
  
  # Susun data output
  sptopss <- data.frame(
    bruto = bruto,
    pengurangan = pengurangan,
    ptkp = ptkp,
    pkp = pkp,
    pph_terutang = pph_terutang,
    pph_dipotong = dipotong,
    lebih_kurang_bayar = lebih_kurang_bayar,
    status_kawin = status_kawin,
    penggabungan = penggabungan,
    tanggungan = tanggungan
  )
  
  return(sptopss)
}
