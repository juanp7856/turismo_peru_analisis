-- Evolución anual de empresas que brindan servicios turísticos en Perú --
DROP TABLE IF EXISTS evolucion_servicios_turisticos;

CREATE TABLE evolucion_servicios_turisticos AS
SELECT 
    STRFTIME('%Y', DATE(fecha_de_registro_de_empresa, 'start of day')) AS anio_registro,
    COUNT(*) AS total_empresas
FROM servicios_turisticos
WHERE fecha_de_registro_de_empresa IS NOT NULL
GROUP BY anio_registro
ORDER BY anio_registro;

SELECT * FROM evolucion_servicios_turisticos;