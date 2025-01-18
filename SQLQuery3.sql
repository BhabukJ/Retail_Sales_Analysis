SELECT TOP (1000) [transactions_id]
      ,[sale_date]
      ,[sale_time]
      ,[customer_id]
      ,[gender]
      ,[age]
      ,[category]
      ,[quantiy]
      ,[price_per_unit]
      ,[cogs]
      ,[total_sale]
  FROM [sql_project_p1].[dbo].[SQL - Retail Sales Analysis_utf ]



  insert into retail_sales(transactions_id,sale_date,customer_id,gender,age,category,quantity,price_per_unit,cogs,total_sale)

  select transactions_id,sale_date,customer_id,gender,age,category,quantity,price_per_unit,cogs,total_sale
  from [sql_project_p1].[dbo].[SQL - Retail Sales Analysis_utf ];

  select top 10 * from [sql_project_p1].[dbo].[SQL - Retail Sales Analysis_utf ]
 ;
 select top 10 * from  retail_sales;

 select 
 count(*)
 from retail_sales;

 select * from retail_sales
 where transactions_id is null
	or sale_date is null
		or customer_id is null
		or gender is null
		or age is null
		or category is null
		or quantity is null
		or price_per_unit is null
		or cogs is null
		or total_sale is null;

delete from retail_Sales
where transactions_id is null
	or sale_date is null
		or customer_id is null
		or gender is null
		or age is null
		or category is null
		or quantity is null
		or price_per_unit is null
		or cogs is null
		or total_sale is null;
		
		select * from retail_sales
			where sale_date='2022-11-05';

		select * from retail_sales
		where quantity>=4 and category='Clothing' and sale_date>='2022-11-01' and sale_date<='2022-11-30'
	
	select sum(total_sale) grp_category,category  from retail_Sales
	group by category ;

select avg(age) from retail_sales
where category='Beauty'
group by category

select *
from retail_sales
where total_sale>1000;

select count(transactions_id), gender,category
from retail_sales
group by gender,category
order by category,gender;

select avg(total_Sale),sale_date
from retail_sales
group by sale_date;

select sum(total_sale),sale_date
* from retail_Sale



select
	year(sale_date) as year,
	month(sale_date) as month,
	avg(total_sale) as avg_Sale
from retail_sales
group by year,month
order by year,month



SELECT 
    year,
    month,
    avg_sale
FROM 
(    
    SELECT 
        YEAR(sale_date) AS year,
        MONTH(sale_date) AS month,
        AVG(total_sale) AS avg_sale,
        RANK() OVER(PARTITION BY YEAR(sale_date) ORDER BY AVG(total_sale) DESC) AS rank
    FROM retail_sales
    GROUP BY YEAR(sale_date), MONTH(sale_date)
) AS t1
WHERE rank = 1;


SELECT 
       YEAR(sale_date) AS year,
        MONTH(sale_date) AS month,
        AVG(total_sale) AS avg_sale
	from retail_sales
	group by year(sale_date),month(sale_date)
	order by 1,2 desc

	SELECT 
		 YEAR(sale_date) AS year,
        MONTH(sale_date) AS month,
        AVG(total_sale) AS avg_sale
	from retail_sales
	group by year(sale_date),month(sale_date)
	order by 1,3 desc\



	SELECT DATEPART(HOUR, TRY_CAST(sale_time AS TIME)) AS hour
FROM retail_sales;



	