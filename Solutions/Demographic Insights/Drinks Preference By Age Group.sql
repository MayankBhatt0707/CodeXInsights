# Which age group prefers energy drinks more?

select age, count(respondent_id) 
	from dim_respondents
		group by age
			order by count(respondent_id) desc