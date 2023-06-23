# How effective are different marketing strategies and channels in reaching our customers?

with cte as(
select marketing_channels, count(respondent_id) as count
from fact_survey_responses
group by Marketing_channels
order by count desc)

select marketing_channels, round(100 * count/ sum(count) over(), 2) as `%effectiveness`
from cte
group by marketing_channels
