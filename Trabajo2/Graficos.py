import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
from sklearn.metrics import mutual_info_score

# Cargar los datos
file_path = 'past-rounded.csv'
data = pd.read_csv(file_path)

# Seleccionar columnas de interés y limpiar datos
columns_of_interest = ['L', 'M', 'N', 'O']
data_filtered = data[columns_of_interest].dropna().astype(int)

# Función para crear gráficos
def generate_plot(plot_type, col1=None, col2=None):
    if plot_type == "heatmap":
        # Crear matriz de información mutua
        mutual_info_matrix = np.zeros((len(columns_of_interest), len(columns_of_interest)))
        for i, col1 in enumerate(columns_of_interest):
            for j, col2 in enumerate(columns_of_interest):
                if col1 != col2:
                    mutual_info_matrix[i, j] = mutual_info_score(data_filtered[col1], data_filtered[col2])
        
        # Graficar heatmap
        plt.figure(figsize=(8, 6))
        sns.heatmap(mutual_info_matrix, annot=True, xticklabels=columns_of_interest, yticklabels=columns_of_interest, cmap='coolwarm')
        plt.title("Heatmap de Información Mutua")
        plt.show()
    
    elif plot_type == "scatter" and col1 and col2:
        # Graficar scatterplot
        plt.figure(figsize=(8, 6))
        plt.scatter(data_filtered[col1], data_filtered[col2], alpha=0.6)
        plt.title(f"Diagrama de Dispersión: {col1} vs {col2}")
        plt.xlabel(col1)
        plt.ylabel(col2)
        plt.grid(True)
        plt.show()
    
    elif plot_type == "bar" and col1 and col2:
        # Crear distribución conjunta
        joint_distribution = pd.crosstab(data_filtered[col1], data_filtered[col2])
        
        # Graficar barras
        joint_distribution.plot(kind='bar', stacked=True, colormap='viridis', figsize=(12, 8))
        plt.title(f"Distribución Conjunta: {col1} vs {col2}")
        plt.xlabel(col1)
        plt.ylabel("Frecuencia")
        plt.legend(title=col2)
        plt.show()
    
    elif plot_type == "jointplot" and col1 and col2:
        # Graficar histograma conjunto
        sns.jointplot(x=col1, y=col2, data=data_filtered, kind='scatter', color='purple', alpha=0.6, marginal_kws={'bins': 20})
        plt.suptitle(f"Gráfico Conjunto: {col1} vs {col2}", y=1.02)
        plt.show()
    
    else:
        print("Entrada no válida. Asegúrate de especificar el tipo de gráfico y las columnas correctas.")

# Interfaz para seleccionar el tipo de gráfico y las columnas
print("Tipos de gráficos disponibles: heatmap, scatter, bar, jointplot")
plot_type = input("Ingresa el tipo de gráfico que deseas generar: ").strip().lower()

if plot_type in ["scatter", "bar", "jointplot"]:
    col1 = input(f"Selecciona la primera columna de {columns_of_interest}: ").strip()
    col2 = input(f"Selecciona la segunda columna de {columns_of_interest}: ").strip()
    generate_plot(plot_type, col1, col2)
elif plot_type == "heatmap":
    generate_plot(plot_type)
else:
    print("Opción no válida.")
