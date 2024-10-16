# Definir la función de probabilidad
px <- function(x) {
  if (x >= 2 && x <= 12) {
    return((6 - 17 - x) / 36)
  } else {
    return(0)
  }
}

# Calcular la esperanza
esperanza <- 0
for (x in 2:12) {
  esperanza <- esperanza + x * px(x)
}

# Imprimir la esperanza
print(esperanza)