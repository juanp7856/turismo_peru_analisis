-- Potencial de inversión turística en Perú --
DROP TABLE IF EXISTS potencial_inversion_turistica;

CREATE TABLE potencial_inversion_turistica AS
SELECT 
    v.departamento,
    SUM(v.visitas_e1 + v.visitas_e2a3 + v.visitas_e3a30) AS total_visitas,
    COUNT(DISTINCT s.nombre_de_servicio_turistico) AS total_servicios,
    (SUM(v.visitas_e1 + v.visitas_e2a3 + v.visitas_e3a30) / 
     NULLIF(COUNT(DISTINCT s.nombre_de_servicio_turistico), 0)) AS ratio_visitas_por_servicio
FROM visitas_anp AS v
LEFT JOIN servicios_turisticos AS s
    ON v.departamento = s.nombre_de_departamento
GROUP BY v.departamento
ORDER BY ratio_visitas_por_servicio DESC;

SELECT * FROM potencial_inversion_turistica;