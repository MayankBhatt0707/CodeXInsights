# Which marketing channel can be used to reach more customers?

with cte as(
select marketing_channels, count(respondent_id) as count
from fact_survey_responses
group by Marketing_channels
order by count desc)

select c.marketing_channels `Marketing Channel`
from cte c join (select max(count) as max_count from cte) as c1
on c.count = c1.max_count
