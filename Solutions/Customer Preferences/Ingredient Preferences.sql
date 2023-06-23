# What are the preferred ingredients of energy drinks among respondents?

select distinct ingredients_expected as `Expected Ingredients`, 
	count(Respondent_ID) as `Total Respondents`
		 from fact_survey_responses
			 group by Ingredients_expected
			 order by count(Respondent_ID) desc