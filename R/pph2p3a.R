# File: R/pph2p3a.R
# Menentukan status subjek pajak berdasarkan Pasal 2 ayat (3) huruf a UU PPh
# Seseorang dianggap Subjek Pajak Dalam Negeri (residen)
# jika berada di Indonesia ≥ 183 hari dalam jangka waktu 12 bulan

pph2p3a <- function(resident_date, target = Sys.Date()) {
  resident_date <- as.Date(resident_date)
  target <- as.Date(target)
  
  # Validasi tanggal
  if (is.na(resident_date) || is.na(target)) {
    stop("Tanggal tidak valid. Gunakan format YYYY-MM-DD.")
  }
  if (resident_date > target) {
    stop("Tanggal mulai tidak boleh lebih besar dari tanggal target.")
  }
  
  # Hitung jumlah hari
  t <- as.numeric(difftime(target, resident_date, units = "days"))
  t <- floor(t)
  
  # Tentukan status residen
  resident <- t >= 183
  
  # Kembalikan hasil lengkap agar informatif
  result <- list(
    resident = resident,
    days_in_indonesia = t,
    status_label = ifelse(resident, "Subjek Pajak Dalam Negeri", "Subjek Pajak Luar Negeri")
  )
  
  return(result)
}
