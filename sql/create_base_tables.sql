CREATE TABLE inventario_recursos_turisticos (
    id SERIAL PRIMARY KEY,
    region VARCHAR(100),
    provincia VARCHAR(100),
    distrito VARCHAR(100),
    codigo_del_recurso VARCHAR(50),
    nombre_del_recurso VARCHAR(255),
    categoria VARCHAR(100),
    tipo_de_categoria VARCHAR(100),
    sub_tipo_categoria VARCHAR(100),
    url TEXT,
    latitud DECIMAL(10, 6),
    longitud DECIMAL(10, 6),
    fecha_de_corte DATE
);

CREATE TABLE visitas_anp (
    id SERIAL PRIMARY KEY,
    anp VARCHAR(150),
    sector VARCHAR(150),
    departamento VARCHAR(100),
    provincia VARCHAR(100),
    distrito VARCHAR(100),
    ubigeo VARCHAR(10),
    procedencia VARCHAR(50),
    edad VARCHAR(50),
    fecha DATE,
    visitas_e1 INT,
    visitas_e2a3 INT,
    visitas_e3a30 INT,
    fecha_corte DATE
);

CREATE TABLE servicios_turisticos (
    id SERIAL PRIMARY KEY,
    nombre_de_servicio_turistico VARCHAR(255),
    identificador_de_clasificacion VARCHAR(50),
    clasificacion VARCHAR(100),
    identificador_de_categoria VARCHAR(50),
    categoria VARCHAR(100),
    identificador_de_subcategoria VARCHAR(50),
    subcategoria VARCHAR(100),
    direccion TEXT,
    correo_electronico VARCHAR(255),
    sitio_web VARCHAR(255),
    telefono VARCHAR(50),
    codigo_de_departamento VARCHAR(10),
    codigo_de_provincia VARCHAR(10),
    codigo_de_distrito VARCHAR(10),
    nombre_de_departamento VARCHAR(100),
    nombre_de_provincia VARCHAR(100),
    nombre_de_distrito VARCHAR(100),
    ruc VARCHAR(20),
    siglas VARCHAR(100),
    nombre_de_empresa VARCHAR(255),
    fecha_de_registro_de_empresa DATE,
    fecha_actualizacion_datos_de_empresa DATE
);