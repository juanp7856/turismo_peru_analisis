--- Brecha entre cantidad de recursos de turismo y empresas que brinden servicios de turismo ---
DROP TABLE IF EXISTS brecha_turistica_por_region;

CREATE TABLE brecha_turistica_por_region AS
SELECT 
    i.region,
    COUNT(DISTINCT i.codigo_del_recurso) AS total_recursos,
    COUNT(DISTINCT s.nombre_de_servicio_turistico) AS total_servicios,
    ROUND(
        CAST(COUNT(DISTINCT i.codigo_del_recurso) AS FLOAT) / 
        NULLIF(COUNT(DISTINCT s.nombre_de_servicio_turistico), 0),
        2
    ) AS brecha
FROM inventario_recursos_turisticos AS i

LEFT JOIN servicios_turisticos AS s
    ON i.region = s.nombre_de_departamento
GROUP BY i.region
HAVING total_servicios > 0
ORDER BY brecha DESC;

SELECT * FROM brecha_turistica_por_region;