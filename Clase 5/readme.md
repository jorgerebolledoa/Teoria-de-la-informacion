# Coeficiente Binomial y Generación de Subconjuntos

Este script en R contiene dos funciones principales:

1. `binomial_coefficient(a, b)`: Calcula el coeficiente binomial para dos números `a` y `b`.
2. `generate_subsets(a, b)`: Genera todos los subconjuntos de tamaño `b` a partir de un conjunto de tamaño `a`.

## Ejemplo de Uso

```r
# Calcular el coeficiente binomial
a <- 6
b <- 3
coef <- binomial_coefficient(a, b)
print(paste('Coeficiente binomial de', a, 'sobre', b, 'es:', coef))

# Generar subconjuntos
subsets <- generate_subsets(a, b)
print('Subconjuntos generados:')
print(subsets)
```
