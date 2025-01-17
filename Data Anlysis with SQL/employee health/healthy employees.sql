#create a join table 

select * from project_3_work.absenteeism_at_work a
left join compensation b
on a.ID = b.ID
left join reasons r 
on a.`Reason for absence` = r.Number;

# find the healthiest employees 
select * from absenteeism_at_work
where `social drinker` = 0 and `social smoker`= 0 and `body mass index` <25
and `Absenteeism time in hours` < (select AVG (`Absenteeism time in hours`)from absenteeism_at_work);
#compensation rate increase  for non smokers 
/budget $983.221 so the increase is o.69 
select count(*) from absenteeism_at_work
where `social smoker` = 0

#optmise the query
select 
a.ID,
r.Reason,
`Month of absence`,
`body mass index` ,
case when `body mass index` <18.5 then 'underweight'
    when `body mass index` BETWEEN 18.5 and 25 then 'healthy weight'
    when `body mass index` BETWEEN 25 and 30  then 'overweigtht'
    when `body mass index` <30 then 'obese'
    ELSE 'unkownn' end as `BMI Category`,
case when `Month of absence` in (12,1,2) then 'Winter'
    when `Month of absence` in (3,4,5) then 'Spring'
    when `Month of absence` in (6,7,8) then 'Summer'
    when `Month of absence` in (9,10,11) then 'Fall'
    else 'unkown' END as `Seasons Names`,
`Month of absence`,
`Day of the week`,
`Transportation expense`,
`Distance from Residence to Work`,
`Service time`,
`Age`,
`Work load Average per day`,
`Disciplinary failure`,
`Education`,
`Son`,
`Social drinker`,
`Social smoker`,
`Pet`
from project_3_work.absenteeism_at_work a
left join compensation b
on a.ID = b.ID
left join reasons r 
on a.`Reason for absence` = r.Number;
    
                       