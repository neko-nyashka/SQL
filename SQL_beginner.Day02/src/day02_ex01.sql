SELECT gs::date AS missing_date
FROM generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') AS gs
LEFT JOIN person_visits pv 
    ON gs::date = pv.visit_date AND (pv.person_id = 1 OR pv.person_id = 2)
WHERE pv.visit_date IS NULL 
ORDER BY missing_date