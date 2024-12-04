# Librería necesaria
if (!requireNamespace("entropy", quietly = TRUE)) {
  install.packages("entropy")
}
library(entropy)

# Función para calcular la entropía
calcular_entropia <- function(variable) {
  prob <- table(variable) / length(variable)  # Distribución de probabilidad
  H <- -sum(prob * log2(prob))  # Entropía en bits
  return(H)
}

# Función para calcular la información mutua
calcular_informacion_mutua <- function(variable_x, variable_y) {
  joint_prob <- table(variable_x, variable_y) / length(variable_x)  # Distribución conjunta
  prob_x <- rowSums(joint_prob)  # Probabilidades marginales de X
  prob_y <- colSums(joint_prob)  # Probabilidades marginales de Y
  
  # Información mutua
  MI <- 0
  for (i in seq_along(prob_x)) {
    for (j in seq_along(prob_y)) {
      if (joint_prob[i, j] > 0) {
        MI <- MI + joint_prob[i, j] * log2(joint_prob[i, j] / (prob_x[i] * prob_y[j]))
      }
    }
  }
  return(MI)
}

# Ejemplo de uso# Librería necesaria
if (!requireNamespace("entropy", quietly = TRUE)) {
  install.packages("entropy")
}
library(entropy)

# Función para calcular la entropía
calcular_entropia <- function(variable) {
  prob <- table(variable) / length(variable)  # Distribución de probabilidad
  H <- -sum(prob * log2(prob))  # Entropía en bits
  return(H)
}

# Función para calcular la información mutua
calcular_informacion_mutua <- function(variable_x, variable_y) {
  joint_prob <- table(variable_x, variable_y) / length(variable_x)  # Distribución conjunta
  prob_x <- rowSums(joint_prob)  # Probabilidades marginales de X
  prob_y <- colSums(joint_prob)  # Probabilidades marginales de Y
  
  # Información mutua
  MI <- 0
  for (i in seq_along(prob_x)) {
    for (j in seq_along(prob_y)) {
      if (joint_prob[i, j] > 0) {
        MI <- MI + joint_prob[i, j] * log2(joint_prob[i, j] / (prob_x[i] * prob_y[j]))
      }
    }
  }
  return(MI)
}

# Ejemplo de uso
# Creamos dos variables discretas
set.seed(123)
variable_x <- sample(c("A", "B", "C"), 100, replace = TRUE, prob = c(0.2, 0.5, 0.3))
variable_y <- sample(c("X", "Y", "Z"), 100, replace = TRUE, prob = c(0.4, 0.4, 0.2))

# Calcular entropía
entropia_x <- calcular_entropia(variable_x)
entropia_y <- calcular_entropia(variable_y)

# Calcular información mutua
informacion_mutua <- calcular_informacion_mutua(variable_x, variable_y)

# Resultados
cat("Entropía de X:", entropia_x, "bits\n")
cat("Entropía de Y:", entropia_y, "bits\n")
cat("Información mutua entre X e Y:", informacion_mutua, "bits\n")

# Creamos dos variables discretas
set.seed(123)
variable_x <- sample(c("A", "B", "C"), 100, replace = TRUE, prob = c(0.2, 0.5, 0.3))
variable_y <- sample(c("X", "Y", "Z"), 100, replace = TRUE, prob = c(0.4, 0.4, 0.2))

# Calcular entropía
entropia_x <- calcular_entropia(variable_x)
entropia_y <- calcular_entropia(variable_y)

# Calcular información mutua
informacion_mutua <- calcular_informacion_mutua(variable_x, variable_y)

# Resultados
cat("Entropía de X:", entropia_x, "bits\n")
cat("Entropía de Y:", entropia_y, "bits\n")
cat("Información mutua entre X e Y:", informacion_mutua, "bits\n")
