import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
from scipy.stats import entropy

# Cargar los datos
file_path = 'past-rounded.csv'
data = pd.read_csv(file_path)

# Seleccionar columnas de interés y limpiar datos
columns_of_interest = ['L', 'M', 'N', 'O']
data_filtered = data[columns_of_interest].dropna().astype(int)

# Función para calcular KL Divergence
def kl_divergence(p, q):
    # Normalizar distribuciones
    p = p / np.sum(p)
    q = q / np.sum(q)
    # Evitar ceros para estabilidad numérica
    p = np.clip(p, 1e-10, 1)
    q = np.clip(q, 1e-10, 1)
    # Calcular KL Divergence
    return entropy(p, q,base=2)

# Crear matriz de KL Divergence
kl_matrix = np.zeros((len(columns_of_interest), len(columns_of_interest)))

for i, col1 in enumerate(columns_of_interest):
    for j, col2 in enumerate(columns_of_interest):
        if i != j:  # Evitar cálculo diagonal
            # Obtener frecuencias para cada columna
            p = data_filtered[col1].value_counts(normalize=True).sort_index()
            q = data_filtered[col2].value_counts(normalize=True).sort_index()
            # Alinear índices para comparabilidad
            p, q = p.align(q, fill_value=0)
            # Calcular KL Divergence
            kl_matrix[i, j] = kl_divergence(p.values, q.values)

# Crear heatmap
plt.figure(figsize=(8, 6))
sns.heatmap(kl_matrix, annot=True, xticklabels=columns_of_interest, yticklabels=columns_of_interest, cmap='coolwarm')
plt.title("Heatmap de Divergencia de Kullback-Leibler")
plt.show()
