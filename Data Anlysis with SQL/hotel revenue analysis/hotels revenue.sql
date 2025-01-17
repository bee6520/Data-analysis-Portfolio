with hotels as ( 
    SELECT * from hotel_revenue.2018
    union 
    SELECT * from hotel_revenue.2019 
    union 
    SELECT * from hotel_revenue.2020)
        
select * from hotels 
left join hotel_revenue.market_segment
on hotels.market_segment = market_segment.market_segment
left join hotel_revenue.meal_cost 
on hotels.meal = meal_cost.meal_cost
   