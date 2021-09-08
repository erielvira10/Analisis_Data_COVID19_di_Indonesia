library(dplyr)
library(tidyr)
dim(cov_jabar_akumulasi)
cov_jabar_akumulasi_pivot <- 
  cov_jabar_akumulasi %>% 
  gather(
    key = "kategori",
    value = "jumlah",
    -tanggal
  ) %>% 
  mutate(
    kategori = sub(pattern = "akumulasi_", replacement = "", kategori)
  )
dim(cov_jabar_akumulasi_pivot)
glimpse(cov_jabar_akumulasi_pivot)
