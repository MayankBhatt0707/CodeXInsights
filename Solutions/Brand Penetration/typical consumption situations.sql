# What are the typical consumption situations for energy drinks among respondents?

with cte as (
select distinct Typical_consumption_situations, count(Respondent_ID) as customer_count
from fact_survey_responses
group by Typical_consumption_situations
order by count(Respondent_ID) desc)

select Typical_consumption_situations, round(100*customer_count/ Sum(customer_count) over(),2)
from cte
group by Typical_consumption_situations