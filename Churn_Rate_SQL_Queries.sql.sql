create database CUSTOMER
select top 5 * from ecommerce_customer_data_large

--1 Total Customers
select count(distinct(a.Customer_ID))as Total_Cutsomers from ecommerce_customer_data_large as a

--2 Total Revenue
select sum(a.Total_Purchase_Amount)as Total_Revenue from ecommerce_customer_data_large as a

--3 Most Popular Payment method
select count(a.Payment_Method)as Total_payments,a.Payment_Method from ecommerce_customer_data_large as a
group by a.Payment_Method
order by Total_payments desc

--4 Most popular Product category
select count(a.Product_Category)as Items_sold,a.Product_Category from ecommerce_customer_data_large as a
group by a.Product_Category
order by Items_sold desc

--5 Total Revenue by Product category
select sum(a.Total_Purchase_Amount)as Total_Revenue,a.Product_Category from ecommerce_customer_data_large as a
group by a.Product_Category
order by Total_Revenue desc

--6 Average Order value
select avg(a.Total_Purchase_Amount)as avg_amount from ecommerce_customer_data_large as a

--7 Total Revenue per year
select year(a.Purchase_Date)as year_,sum(a.Total_Purchase_Amount)as Total_Revenue from ecommerce_customer_data_large as a
group by year(a.Purchase_Date)
order by year_

--8 Top 10 Buyers
select TOP 10 a.Customer_ID ,sum(a.Total_Purchase_Amount)as Total_Revenue from ecommerce_customer_data_large as a
group by Customer_ID
order by Total_Revenue desc

--9 Total Customer,Total Revenue,Average Revnue by Age category

 select
  case
    when Age > 1 AND Age <= 19 then 'Teen'
    when Age > 19 AND Age <= 40 then 'Adult'
    when Age > 40 AND Age <= 60 then 'Senior'
    when Age > 60 then 'Senior Citizen'
  end as Age_Category,
  COUNT(*) as Total_Customers,
  sum(Total_Purchase_Amount)as Total_Revenue,
  AVG(a.Total_Purchase_Amount)as Avg_Revenue
from ecommerce_customer_data_large AS a
group by
  CASE
    when Age > 1 AND Age <= 19 then 'Teen'
    when Age > 19 AND Age <= 40 then 'Adult'
    when Age > 40 AND Age <= 60 then 'Senior'
    when Age > 60 then 'Senior Citizen'
  end
order by Total_Customers desc

--10 Maximum return product
select a.Product_Category,sum(a.Returns)as Total_Returns from ecommerce_customer_data_large as a
group by a.Product_Category
order by Total_Returns desc
