 # Where do respondents prefer to purchase energy drinks?
 
 with cte as(
 select purchase_location, 
 count(respondent_id) as customer_count from fact_survey_responses
	group by Purchase_location)	
 
select purchase_location as "Purchase Location", 
round(100*customer_count/ sum(customer_count) over(),2) as `Respondents%` 
 from cte
 group by purchase_location