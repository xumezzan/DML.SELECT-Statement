SELECT a.name, DATEDIFF(CURRENT_DATE(), p.last_performance_date) AS days_since_last_performance
FROM Actors a
LEFT JOIN (
    SELECT actor_id, MAX(performance_date) AS last_performance_date
    FROM Performances
    GROUP BY actor_id
) p ON a.id = p.actor_id
ORDER BY days_since_last_performance DESC;