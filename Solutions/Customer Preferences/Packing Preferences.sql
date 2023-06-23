# What packaging preferences do respondents have for energy drinks?

select distinct packaging_preference, count(Respondent_ID) customer_count
 from fact_survey_responses
 group by packaging_preference
 order by count(Respondent_ID) desc