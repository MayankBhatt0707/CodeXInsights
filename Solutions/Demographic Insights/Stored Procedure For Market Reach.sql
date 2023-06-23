# Which type of marketing reaches the most Youth (15-30)?
drop procedure if exists market_reach;
delimiter &&
create procedure market_reach
(
in age text
)
begin
with cte1 as(
select  r.age, rs.marketing_channels, count(rs.respondent_id) as market_reach
	from dim_respondents r join fact_survey_responses rs
     using(respondent_id)
	where r.age in (age)
      group by r.age, rs.marketing_channels
      order by  count(rs.respondent_id) desc)

select * from cte1 
	where market_reach in 
		(select max(market_reach) from cte1	
			group by age);
end;
&&
    

		
             
        
    
    