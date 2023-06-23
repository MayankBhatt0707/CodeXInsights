# What are the primary reasons consumers prefer those brands over ours?

# Reasons for chosing other brands
with cte as (
select distinct current_brands, count(respondent_id) 
	from fact_survey_responses
    group by current_brands
    order by count(respondent_id) desc
    limit 3)
    
select c.current_brands, sr.reasons_for_choosing_brands, count(sr.reasons_for_choosing_brands) as number_of_responses 
from cte as c join fact_survey_responses sr
using(current_brands)
group by c.current_brands, sr.reasons_for_choosing_brands
having sr.reasons_for_choosing_brands != "other"
order by current_brands, sr.reasons_for_choosing_brands desc;

# Reasons for chosing codex

with cte as(
select distinct current_brands, count(respondent_id) 
	from fact_survey_responses
    where current_brands = "codex"
    order by count(respondent_id) desc
    limit 3)
   
select c.current_brands, sr.reasons_for_choosing_brands, count(sr.reasons_for_choosing_brands) as number_of_responses 
from cte as c join fact_survey_responses sr
using(current_brands)
group by c.current_brands, sr.reasons_for_choosing_brands
having sr.reasons_for_choosing_brands != "other"
order by current_brands, sr.reasons_for_choosing_brands desc;
     