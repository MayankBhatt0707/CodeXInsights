# Who prefers energy drinks more? (male/ female/ non-binary)

select gender as Gender, count(respondent_id) as `Total Respondents`
	from dim_respondents
		group by gender 
			order by count(respondent_id) desc

