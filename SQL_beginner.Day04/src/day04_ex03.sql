SELECT generated_date AS missing_date FROM v_generated_dates
LEFT JOIN person_visits pv
ON generated_date = pv.visit_date
WHERE pv.visit_date IS NULL