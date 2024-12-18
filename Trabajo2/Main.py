import numpy as np
import pandas as pd
from scipy.stats import entropy
from sklearn.metrics import mutual_info_score

# Cargar los datos
file_path = 'past-rounded.csv'
data = pd.read_csv(file_path)

# Seleccionar columnas de interés y limpiar datos
columns_of_interest = ['L', 'M', 'N', 'O']
data_filtered = data[columns_of_interest].dropna().astype(int)

# Función para calcular la divergencia de Kullback-Leibler
def kullback_leibler(p, q):
    p = np.array(p, dtype=np.float64)
    q = np.array(q, dtype=np.float64)
    return entropy(p, q, base=2)  # Base 2 para bits

# Función para calcular la desigualdad de Jensen (Jensen-Shannon divergence)
def jensen_shannon(p, q):
    p = np.array(p, dtype=np.float64)
    q = np.array(q, dtype=np.float64)
    m = 0.5 * (p + q)
    return 0.5 * kullback_leibler(p, m) + 0.5 * kullback_leibler(q, m)

# Calcular métricas para cada par de columnas
results = {}
for col1 in columns_of_interest:
    for col2 in columns_of_interest:
        if col1 != col2:
            # Distribuciones de probabilidad
            p = data_filtered[col1].value_counts(normalize=True).sort_index()
            q = data_filtered[col2].value_counts(normalize=True).sort_index()
            
            # Alinear índices para comparación
            p, q = p.align(q, fill_value=0)
            
            # Cálculos
            ent_col1 = entropy(p, base=2)
            ent_col2 = entropy(q, base=2)
            mutual_info = mutual_info_score(data_filtered[col1], data_filtered[col2])
            kl_div = kullback_leibler(p, q)
            js_div = jensen_shannon(p, q)
            
            # Guardar resultados
            results[(col1, col2)] = {
                'Entropy Col1': ent_col1,
                'Entropy Col2': ent_col2,
                'Mutual Information': mutual_info,
                'Kullback-Leibler': kl_div,
                'Jensen-Shannon': js_div
            }

# Mostrar resultados
for pair, metrics in results.items():
    print(f"Pair {pair}:")
    for metric, value in metrics.items():
        print(f"  {metric}: {value}")
    print()
