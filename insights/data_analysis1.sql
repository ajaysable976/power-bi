#lets do some analysis
#SELECT count( *) FROM sales.customers;
#SELECT count(*) FROM sales.transactions;
#SELECT * FROM sales.transactions where market_code="Mark001";
#SELECT count(*) FROM sales.transactions where market_code="Mark001";
#SELECT * FROM sales.transactions where currency="USD";
#SELECT count(*) FROM sales.transactions where currency="USD";
#SELECT * FROM sales.date where year=2020;
#SELECT count(*) FROM sales.date where year=2020;


#lets join date and transcation table
#SELECT sales.transactions.*, sales.date. * from sales.transactions inner join sales.date ON sales.transactions.order_date= sales.date.date 
#where sales.date.year=2020

#now lets check the total revenue for 2020
#SELECT  sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date ON sales.transactions.order_date= sales.date.date 
#where sales.date.year=2020;

#now lets check the total revenue in chennai
#SELECT  sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date ON sales.transactions.order_date= sales.date.date
#where sales.date.year=2020 and sales.transactions.market_code="Mark001";

# Show total revenue in year 2020, January Month
SELECT sum(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and 
date.month_name="January"