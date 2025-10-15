import os
import pandas as pd
from sqlalchemy import create_engine

root = os.getcwd()

# Conectarse a tu base de datos
engine = create_engine("sqlite:///turismo_peru.db")

# Lista de tablas temporales a exportar
tablas = [
    "anp_mas_visitadas",
    "evolucion_visitas_anp",
    "brecha_turistica_por_region",
    "potencial_inversion_turistica",
    "evolucion_servicios_turisticos"
]

# Exportar cada tabla a CSV para usar en PBI
for tabla in tablas:
    df = pd.read_sql(f"SELECT * FROM {tabla}", engine)
    df.to_csv("{}/data/powerbi_temp/{}.csv".format(root, tabla), index=False, encoding="utf-8-sig")
    print(f"✅ Exportada: {tabla}.csv ({len(df)} filas)")

