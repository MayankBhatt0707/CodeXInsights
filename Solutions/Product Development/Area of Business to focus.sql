#  Which area of business should we focus more on our product development? (Branding/taste/availability)

select Reasons_for_choosing_brands, count(Respondent_ID) as customer_count
from fact_survey_responses
where current_brands = "Codex"
group by Reasons_for_choosing_brands
order by customer_count desc;

# Expected Ingredients

select Ingredients_expected, count(Respondent_ID) as customer_count
from fact_survey_responses
where current_brands = "Codex"
group by Ingredients_expected
order by customer_count desc;

