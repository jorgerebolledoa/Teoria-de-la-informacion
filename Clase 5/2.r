# Leer el archivo CSV llamado "past-rounded.csv" con encabezados y separado por comas
Datos <- read.csv("past-rounded.csv", header = TRUE, sep = ",")

# Obtener los valores únicos de la columna 'O' del dataframe 'Datos', omitiendo los valores NA y ordenándolos en orden descendente
U <- sort(x = unique(na.omit(Datos$O)), decreasing = TRUE)

# Inicializar un vector vacío para almacenar las frecuencias
P <- c()

# Calcular la frecuencia de cada valor único en 'U' y almacenarlo en 'P'
for(i in 1:length(U)){
    P[i] <- sum(Datos$O == U[i], na.rm = TRUE)
}

# Graficar los valores únicos 'U' en el eje x y sus frecuencias 'P' en el eje y, con una escala logarítmica en el eje x
plot(U, P, log = "x")

# Normalizar las frecuencias dividiendo cada frecuencia por la suma total de frecuencias
P <- P / sum(P)

# Calcular la entropía de Shannon utilizando las frecuencias normalizadas
H <- -sum(P * log2(P))

# Imprimir el valor de la entropía
print(H)
f<-c()
for (i in 1:length(P)) {
    f[i]<-print(sqrt(abs((P[i]^2) - ((1/581)^ 2))))
}
print(f)

plot(P,c(1:360)*0 +(1/360))
P<- log(P)
plot(P, dnorm(U, mean(U), sd(U)), )