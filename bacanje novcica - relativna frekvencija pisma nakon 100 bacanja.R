# Definisati broj bacanja
bacanja <- 100

# Simulacija bacanja novčića, 1 = pismo, 0 = grb 
set.seed(123)  
rezultati <- sample(c(0, 1), size = bacanja, replace = TRUE)

# Broj bacanja na kojima se izračunava frekvencija (10, 20, ..., 100)
koraci <- seq(10, 100, by = 10)

# Prazna lista za relativne frekvencije pisma (1)
relativne_frekvencije <- numeric(length(koraci))

# Izračunavanje relativne frekvencije pojave pisma na svakom koraku
for (i in seq_along(koraci)) {
  relativne_frekvencije[i] <- mean(rezultati[1:koraci[i]] == 1)
}

# Rezultati na grafikonu
plot(koraci, relativne_frekvencije, type = "o", col = "blue", ylim = c(0, 1),
     xlab = "Broj bacanja", ylab = "Relativna frekvencija pisma",
     main = "Relativne frekvencije pisma nakon n bacanja")
abline(h = 0.5, col = "red", lty = 2)  # Linija očekivane vrijednosti





# Sa mojim rezultatima za 100 bacanja
rezultati <- c(1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 
		   1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 
               0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 
		   1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 
               1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 
		   1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 
               0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 
		   1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 
               1, 0, 1, 1, 0, 1, 1, 1, 0, 0, 
		   1, 1, 0, 0, 1, 0, 0, 0, 1, 0)

# Broj bacanja na kojima se izračunava frekvencija
koraci <- seq(10, 100, by = 10)

# Prazna lista za relativne frekvencije pisma (1)
relativne_frekvencije <- numeric(length(koraci))

# Izračunavanje relativne frekvencije pojave pisma na svakom koraku
for (i in seq_along(koraci)) {
  relativne_frekvencije[i] <- mean(rezultati[1:koraci[i]] == 1)
}

# Rezultati na grafikonu
plot(koraci, relativne_frekvencije, type = "o", col = "blue", ylim = c(0, 1),
     xlab = "Broj bacanja", ylab = "Relativna frekvencija pisma",
     main = "Relativne frekvencije pisma nakon 100 bacanja - moji rezultati")
abline(h = 0.5, col = "red", lty = 2)  # Linija očekivane vrijednosti

