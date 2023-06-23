# What do people think about our brand? (overall rating)

select 
Current_brands, 
Brand_perception , 
count(Brand_perception) As feedback_count , 
round(100*count(Brand_perception)/ sum(count(Brand_perception)) over (),2) as "%feedback_count"
from fact_survey_responses
where current_brands = "Codex"
group by Brand_perception 
order by feedback_count desc
