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