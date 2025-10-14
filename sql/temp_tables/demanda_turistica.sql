-- Evolución de visitas a Áreas Naturales Protegidas (ANP) en Perú --
DROP TABLE IF EXISTS evolucion_visitas_anp;

CREATE TABLE evolucion_visitas_anp AS
SELECT 
    SUBSTR(fecha, 1, 4) AS anio,
    SUM(visitas_e1 + visitas_e2a3 + visitas_e3a30) AS total_visitas
FROM visitas_anp
GROUP BY anio
ORDER BY anio;

SELECT * FROM evolucion_visitas_anp;