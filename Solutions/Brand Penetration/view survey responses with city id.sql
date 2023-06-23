# Add city id to fact_survey_responses table view

create view fact_survey_responses_cityid
as
select r.city_id, sr.* 
from dim_respondents r join fact_survey_responses sr
using (respondent_id)
 
