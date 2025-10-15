# 📊 Análisis del Turismo en el Perú — SQL + Power BI

Este proyecto analiza el panorama del turismo en el Perú a partir de fuentes de datos oficiales, explorando la **evolución de empresas turísticas**, la **distribución de recursos turísticos**, las **áreas naturales protegidas más visitadas** y las **regiones con mayor demanda**.  
Fue desarrollado utilizando **SQLite / SQL** para el procesamiento de datos y **Power BI** para la visualización.

---

## 🧠 Objetivos del proyecto
- Analizar el crecimiento anual de empresas turísticas registradas en el Perú.  
- Evaluar la relación entre recursos turísticos y oferta empresarial por región.  
- Identificar las Áreas Naturales Protegidas (ANP) más visitadas.  
- Estimar regiones con mayor demanda turística y potencial de desarrollo.  

---

## 🛠️ Tecnologías utilizadas
| Tecnología | Uso principal |
|-------------|----------------|
| **SQLite / SQL** | Limpieza, transformación y análisis de datos. |
| **Python (SQLAlchemy + Pandas)** | Extracción y exportación de tablas temporales a CSV. |
| **Power BI Desktop** | Visualización de indicadores y dashboards interactivos. |

---

## 📁 Estructura del proyecto

```
📦 turismo-peru
│
├── 📂 data/
│ ├── 📂 raw/ # Archivos originales sin procesar
│ ├── 📂 cleaned/ # Datos limpios listos para análisis
│ │ ├── inventario_recursos_turisticos_clean.csv
│ │ ├── servicios_turisticos_clean.csv
│ │ └── visitas_anp_clean.csv
│ └── 📂 powerbi_temp/ # Tablas generadas temporalmente para Power BI
│ ├── anp_mas_visitadas.csv
│ ├── brecha_turistica_por_region.csv
│ ├── evolucion_servicios_turisticos.csv
│ ├── evolucion_visitas_anp.csv
│ └── potencial_inversion_turistica.csv
│
├── 📂 sql/
│ ├── create_base_tables.sql # Creación de tablas principales en SQLite
│ └── 📂 temp_tables/ # Consultas analíticas y vistas temporales
│ ├── anp_mas_visitadas.sql
│ ├── demanda_turistica.sql
│ ├── integracion_geospacial.sql
│ ├── potencial_negocios.sql
│ └── servicios_turisticos.sql
│
├── 📂 scripts/
│ ├── 1_clean_data.ipynb # Limpieza y preparación de datos
│ ├── 2_create_db.py # Creación de la base de datos SQLite
│ └── 3_export_temp_tables.py # Exportación de tablas SQL a CSV para Power BI
│
├── 📂 powerbi/
│ └── dashboard.pbix # Dashboard principal de Power BI
│
├── turismo_peru.db # Base de datos SQLite
├── requirements.txt # Dependencias de Python
└── README.md
```

---

## 📈 Principales visualizaciones

- 📊 **Evolución de empresas turísticas**  
  Crecimiento anual y acumulado de empresas registradas.  

- 🏔️ **Evolución de visitas totales por año**  
  Muestra el crecimiento de las visitas totales.  

- 🏔️ **Recursos turísticos vs. empresas por región**  
  Muestra el desequilibrio entre oferta natural y empresarial.  

- 🌿 **Áreas Naturales Protegidas más visitadas**  
  Ranking nacional de ANP por volumen de visitas.  

- 🗺️ **Demanda turística regional**  
  Estima las regiones con mayor concentración turística.

---

## 🚀 Cómo ejecutar el proyecto

### 1️⃣ Clonar el repositorio
```bash
git clone https://github.com/juanp7856/turismo_peru_analisis.git
cd turismo_peru_analisis
```

### 2️⃣ Instalar dependencias
```bash
pip install -r requirements.txt
```

### 3️⃣ Generar base de datos
Ejecuta el script que crea la base de datos turismo_peru.db y las tablas base:
```bash
python scripts/2_create_db.py
```

### 4️⃣ Generar base de datos
Este paso genera las tablas analíticas (como brecha_turistica_por_region, anp_mas_visitadas, etc.) y las exporta a CSV para Power BI:
```bash
python scripts/3_export_temp_tables.py
```

### 5️⃣ Visualizar en Power BI

1. Abre el archivo **`powerbi/dashboard.pbix`** en Power BI Desktop.  
2. Asegúrate de que las fuentes de datos apunten a la carpeta **`/data/powerbi_temp/`**, donde se encuentran los CSV exportados.  
3. Explora las visualizaciones interactivas incluidas en el dashboard:

   - 📊 **Evolución de empresas turísticas** → muestra el crecimiento y acumulado anual de empresas registradas.  
   - ⚖️ **Brecha turismo por región** → compara recursos turísticos versus empresas de servicios por región.  
   - 🏞️ **Áreas Naturales Protegidas más visitadas** → ranking de ANP por volumen de visitas.  
   - 🌍 **Demanda turística regional** → identifica zonas con alta afluencia y potencial de inversión.  

---

## 📚 Fuentes de datos

- MINCETUR – Ministerio de Comercio Exterior y Turismo del Perú
- SERNANP – Servicio Nacional de Áreas Naturales Protegidas
- IPERÚ 