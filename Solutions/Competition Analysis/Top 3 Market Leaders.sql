# Who are the current market leaders?
# Top 3

select distinct current_brands, count(respondent_id) 
	from fact_survey_responses
    group by current_brands
    order by count(respondent_id) desc
    limit 3;