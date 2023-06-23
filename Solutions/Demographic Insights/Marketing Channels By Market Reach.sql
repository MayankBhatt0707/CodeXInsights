
with cte1 as
(
select  r.age, 
			rs.marketing_channels as `Marketing Channels`,
            count(rs.respondent_id) as `Total Respondents`, 
            dense_rank() over(partition by r.age order by count(rs.respondent_id) desc) as rank1
	from dim_respondents r join fact_survey_responses rs
     using(respondent_id) 
     where Age in ("15-18", "19-30")
      group by Age, `Marketing Channels`
      order by  count(rs.respondent_id) desc
      )
select age as "Age",  `Marketing Channels`, `Total Respondents` from cte1 
	where `Total Respondents` in 
		(select max(`Total Respondents`) from cte1	
         group by age
			) and rank1 = 1