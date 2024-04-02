SELECT a.name, DATEDIFF(CURRENT_DATE(), MAX(p.performance_date)) AS days_since_last_performance
FROM Actors a
LEFT JOIN Performances p ON a.id = p.actor_id
GROUP BY a.name
ORDER BY days_since_last_performance DESC;