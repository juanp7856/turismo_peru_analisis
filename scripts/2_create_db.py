from sqlalchemy import create_engine
import pandas as pd
import os

root = os.getcwd()

# Crear la base SQLite
engine = create_engine("sqlite:///turismo_peru.db")

#Cargar los CSV
df1 = pd.read_csv("{}/data/cleaned/inventario_recursos_turisticos_clean.csv".format(root))
df1.to_sql("inventario_recursos_turisticos", engine, index=False, if_exists="replace")

df2 = pd.read_csv("{}/data/cleaned/visitas_anp_clean.csv".format(root))
df2.to_sql("visitas_anp", engine, index=False, if_exists="replace")

df3 = pd.read_csv("{}/data/cleaned/servicios_turisticos_clean.csv".format(root))
df3.to_sql("servicios_turisticos", engine, index=False, if_exists="replace")

print("Base de datos creada: turismo_peru.db")