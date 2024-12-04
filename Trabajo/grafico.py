import matplotlib.pyplot as plt
import numpy as np

# Valores de n
n_values = np.arange(0, 21)  # n de 0 a 20
y_values = 1 / (2 ** n_values)  # Calcular 1/(2^n) para cada n

# Crear la gráfica
plt.figure(figsize=(8, 6))
plt.plot(n_values, y_values, marker='o', linestyle='-', color='b', label='1/(2^n)')
plt.title("Gráfica de 1/(2^n) para n ≥ 0", fontsize=14)
plt.xlabel("n", fontsize=12)
plt.ylabel("1/(2^n)", fontsize=12)
plt.grid(True, linestyle='--', alpha=0.6)
plt.xticks(n_values)
plt.legend(fontsize=12)
plt.tight_layout()

# Mostrar la gráfica
plt.show()
