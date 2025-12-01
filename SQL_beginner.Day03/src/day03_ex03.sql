SELECT pi.name
FROM pizzeria pi
JOIN person_visits pv
ON pv.pizzeria_id = pi.id
JOIN person p
ON pv.person_id = p.id
GROUP BY pi.name
HAVING COUNT(*) FILTER (WHERE p.gender = 'female')!= COUNT(*) FILTER (WHERE p.gender = 'male')
ORDER BY pi.name