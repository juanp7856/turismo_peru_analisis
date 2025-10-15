-- ANP más visitadas --
DROP TABLE IF EXISTS anp_mas_visitadas;

CREATE TABLE anp_mas_visitadas AS
SELECT 
    anp,
    departamento,
    SUM(visitas_e1 + visitas_e2a3 + visitas_e3a30) AS total_visitas
FROM visitas_anp
WHERE anp IS NOT NULL
GROUP BY anp, departamento
ORDER BY total_visitas DESC;

SELECT * FROM anp_mas_visitadas
LIMIT 50;