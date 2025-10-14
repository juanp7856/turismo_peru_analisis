DROP TABLE IF EXISTS resumen_turismo_por_region;

CREATE TABLE resumen_turismo_por_region AS
SELECT 
    i.region AS region,
    COUNT(DISTINCT i.codigo_del_recurso) AS total_recursos,
    COUNT(DISTINCT s.nombre_de_servicio_turistico) AS total_servicios
FROM inventario_recursos_turisticos AS i
LEFT JOIN servicios_turisticos AS s
    ON i.region = s.nombre_de_departamento
GROUP BY i.region;

SELECT * FROM resumen_turismo_por_region;