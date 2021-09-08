library(ggplot2)

ggplot(data = cov_jabar_akumulasi, aes(x = tanggal)) +
  geom_line(aes(x = tanggal, y = akumulasi_aktif), color = "blue") +
  geom_line(aes(x = tanggal, y = akumulasi_sembuh), color = "green") +
  geom_line(aes(x = tanggal, y = akumulasi_meninggal), color = "red")
