-- Sort by total fans

SELECT origin, SUM(fans) AS nb_fans FROM metal_bands
GROUP BY origin ORDER BY np_fans DESC;