# Función para calcular el coeficiente binomial
binomial_coefficient <- function(a, b) {
    if (b > a) {
        return(0)
    }
    return(factorial(a) / (factorial(b) * factorial(a - b)))
}


# Ejemplo de uso
a <- 6
b <- 3

# Función para generar subconjuntos de tamaño b a partir de un conjunto de tamaño a
generate_subsets <- function(a, b) {
    elements <- 1:a
    subsets <- combn(elements, b, simplify = FALSE)
    return(subsets)
}

# Ejemplo de uso
subsets <- generate_subsets(a, b)
print("Subconjuntos generados:")
print(subsets)