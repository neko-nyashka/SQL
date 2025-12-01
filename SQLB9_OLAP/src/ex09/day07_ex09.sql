select address, round(max(age) - (cast(min(age) as numeric) / max(age)),2) as formula,
round(avg(age),2) as average,
max(age) - (cast(min(age) as numeric) / max(age)) > avg(age) as comparison
from person
group by address
order by address