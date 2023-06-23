# Which cities do we need to focus more on?

select c.city, count(sr.respondent_id) as customer_count
from dim_cities c join fact_survey_responses_cityid sr
using (city_id)
where sr.current_brands like"%Codex"
group by c.city
order by count(sr.respondent_id) desc
