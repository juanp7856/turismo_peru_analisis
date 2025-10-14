--- EMPRESAS QUE BRINDAN SERVICIOS ---
DROP TABLE IF EXISTS brecha_turistica_por_region;

CREATE TABLE brecha_turistica_por_region AS
SELECT 
    i.region,
    COUNT(DISTINCT i.codigo_del_recurso) AS total_recursos,
    COUNT(DISTINCT s.nombre_de_servicio_turistico) AS total_servicios,
    (COUNT(DISTINCT i.codigo_del_recurso) / COUNT(DISTINCT s.nombre_de_servicio_turistico)) AS brecha
FROM inventario_recursos_turisticos AS i
LEFT JOIN servicios_turisticos AS s
    ON i.region = s.nombre_de_departamento
GROUP BY i.region
ORDER BY brecha DESC;

SELECT * FROM brecha_turistica_por_region;