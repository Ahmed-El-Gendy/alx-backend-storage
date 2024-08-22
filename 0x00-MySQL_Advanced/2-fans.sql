-- Sort by total fans

SELECT origin, SUM(np_fans) AS total_fans
FROM metal_bands
GROUP BY origin
ORDER BY total_fans DESC