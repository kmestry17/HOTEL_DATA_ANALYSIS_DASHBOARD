
--collab of various tables
with hotel_data as (
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

select * from hotel_data
left join dbo.market_segment$
on hotel_data.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on hotel_data.meal = meal_cost$.meal