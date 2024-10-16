# Clase 3: Esperanza de una Variable Aleatoria

## Contenido

- Introducción
- Definición de Esperanza
- Propiedades de la Esperanza
- Ejemplos
- Ejercicios prácticos

## Introducción

En esta clase, exploraremos el concepto de la esperanza de una variable aleatoria, una medida fundamental en la teoría de probabilidad y estadística.

## Definición de Esperanza

La esperanza (o valor esperado) de una variable aleatoria es una medida del centro de su distribución. Para una variable aleatoria discreta \( X \) con posibles valores \( x_1, x_2, \ldots, x_n \) y probabilidades asociadas \( P(X = x_i) \), la esperanza se define como:

\[ E(X) = \sum_{i=1}^{n} x_i P(X = x_i) \]

Para una variable aleatoria continua \( X \) con función de densidad de probabilidad \( f(x) \), la esperanza se define como:

\[ E(X) = \int_{- \infty }^{\infty} x f(x) \, dx \]# Clase 3: Esperanza de una Variable Aleatoria

## Contenido

- Introducción
- Definición de Esperanza
- Propiedades de la Esperanza
- Ejemplos
- Ejercicios prácticos

## Introducción

En esta clase, exploraremos el concepto de la esperanza de una variable aleatoria, una medida fundamental en la teoría de probabilidad y estadística.

## Definición de Esperanza

La esperanza (o valor esperado) de una variable aleatoria es una medida del centro de su distribución. Para una variable aleatoria discreta \( X \) con posibles valores \( x_1, x_2, \ldots, x_n \) y probabilidades asociadas \( P(X = x_i) \), la esperanza se define como:

\[ E(X) = \sum_{i=1}^{n} x_i P(X = x_i) \]

Para una variable aleatoria continua \( X \) con función de densidad de probabilidad \( f(x) \), la esperanza se define como:

\[ E(X) = \int_{-\infty}^{\infty} x f(x) \, dx \]

## Propiedades de la Esperanza

1. **Linealidad**: Si \( a \) y \( b \) son constantes y \( X \) y \( Y \) son variables aleatorias, entonces:
   \[ E(aX + bY) = aE(X) + bE(Y) \]

2. **Esperanza de una constante**: Si \( c \) es una constante, entonces:
   \[ E(c) = c \]

3. **No negatividad**: Si \( X \) es una variable aleatoria no negativa, entonces:
   \[ E(X) \geq 0 \]

## Ejemplos

### Ejemplo 1: Variable Aleatoria Discreta

Supongamos que tenemos una variable aleatoria discreta \( X \) que puede tomar los valores 1, 2 y 3 con probabilidades 0.2, 0.5 y 0.3 respectivamente. La esperanza de \( X \) es:

\[ E(X) = 1 \cdot 0.2 + 2 \cdot 0.5 + 3 \cdot 0.3 = 2.1 \]

### Ejemplo 2: Variable Aleatoria Continua

Supongamos que \( X \) es una variable aleatoria continua con función de densidad de probabilidad \( f(x) = 2x \) para \( 0 \leq x \leq 1 \). La esperanza de \( X \) es:

\[ E(X) = \int_{0}^{1} x \cdot 2x \, dx = \int_{0}^{1} 2x^2 \, dx = \left[ \frac{2x^3}{3} \right]_{0}^{1} = \frac{2}{3} \]

## Ejercicios prácticos

1. Calcular la esperanza de una variable aleatoria discreta con valores y probabilidades dados.
2. Calcular la esperanza de una variable aleatoria continua con una función de densidad de probabilidad dada.
3. Verificar las propiedades de la esperanza con ejemplos específicos.

## Instalación

Para seguir esta clase, asegúrate de tener instalado R en tu sistema. Puedes descargarlo desde [CRAN](https://cran.r-project.org/).

## Conclusión

La esperanza de una variable aleatoria es una herramienta poderosa para resumir la distribución de probabilidad de una variable. Comprender este concepto es crucial para avanzar en el estudio de la probabilidad y la estadística.j

## Propiedades de la Esperanza

1. **Linealidad**: Si \( a \) y \( b \) son constantes y \( X \) y \( Y \) son variables aleatorias, entonces:
   \[ E(aX + bY) = aE(X) + bE(Y) \]

2. **Esperanza de una constante**: Si \( c \) es una constante, entonces:
   \[ E(c) = c \]

3. **No negatividad**: Si \( X \) es una variable aleatoria no negativa, entonces:
   \[ E(X) \geq 0 \]

## Ejemplos

### Ejemplo 1: Variable Aleatoria Discreta

Supongamos que tenemos una variable aleatoria discreta \( X \) que puede tomar los valores 1, 2 y 3 con probabilidades 0.2, 0.5 y 0.3 respectivamente. La esperanza de \( X \) es:

\[ E(X) = 1 \cdot 0.2 + 2 \cdot 0.5 + 3 \cdot 0.3 = 2.1 \]

### Ejemplo 2: Variable Aleatoria Continua

Supongamos que \( X \) es una variable aleatoria continua con función de densidad de probabilidad \( f(x) = 2x \) para \( 0 \leq x \leq 1 \). La esperanza de \( X \) es:

\[ E(X) = \int_{0}^{1} x \cdot 2x \, dx = \int_{0}^{1} 2x^2 \, dx = \left[ \frac{2x^3}{3} \right]_{0}^{1} = \frac{2}{3} \]

## Ejercicios prácticos

1. Calcular la esperanza de una variable aleatoria discreta con valores y probabilidades dados.
2. Calcular la esperanza de una variable aleatoria continua con una función de densidad de probabilidad dada.
3. Verificar las propiedades de la esperanza con ejemplos específicos.

## Instalación

Para seguir esta clase, asegúrate de tener instalado R en tu sistema. Puedes descargarlo desde [CRAN](https://cran.r-project.org/).

## Conclusión

La esperanza de una variable aleatoria es una herramienta poderosa para resumir la distribución de probabilidad de una variable. Comprender este concepto es crucial para avanzar en el estudio de la probabilidad y la estadística.