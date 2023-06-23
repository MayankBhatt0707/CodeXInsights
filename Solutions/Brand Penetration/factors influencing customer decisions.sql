# What factors influence respondents' purchase decisions, such as price range and limited edition packaging?

# Purchase behaviour w.r.t price range:

select distinct Price_range, count(Respondent_ID) as customer_count
from fact_survey_responses
group by Price_range
order by count(Respondent_ID) desc;

# Purchase behaviour w.r.t limited edition packaging:

select distinct Limited_edition_packaging, count(Respondent_ID) as customer_count
from fact_survey_responses
group by Limited_edition_packaging
order by count(Respondent_ID) desc;

# Purchase behaviour w.r.t general perceptions:

select distinct General_perception, count(Respondent_ID) as customer_count
from fact_survey_responses
group by General_perception
order by count(Respondent_ID) desc;

# Purchase behaviour w.r.t health concerns:

select distinct Health_concerns, count(Respondent_ID) as customer_count
from fact_survey_responses
group by Health_concerns
order by count(Respondent_ID) desc

