use fingertips

select * from New_Account_Fact naf;

select * from New_Customer_Dim ncd;

-- Q1. Show all customers with their country and balance.
select naf.customer_id, naf.balance, ncd.country 
from New_Account_Fact naf 
join New_Customer_Dim ncd 
on naf.customer_id = ncd.customer_id;


-- Q2. Display customers who have a credit card.
select customer_id, credit_card
from New_Account_Fact naf
where credit_card = 1;


-- Q3. Count total number of customers.
select count(*) as total_customers
from New_Account_Fact naf;


-- Q4. Find the average balance by country, but only include countries having more than 50 customers.

select ROUND(AVG(balance),2) 
from New_Account_Fact naf;

select COUNT(naf.customer_id) as total_customers,
AVG(naf.balance) as avg_balance,
ncd.country as country
from New_Account_Fact naf
join New_Customer_Dim ncd
on naf.customer_id = ncd.customer_id
group by country
having COUNT(naf.customer_id) > 50;


-- Q5. Find gender-wise average credit score, but only for active members.
select ROUND(AVG(naf.credit_score),2) as avg_credit_score,
ncd.gender
from New_Account_Fact naf
join New_Customer_Dim ncd
on naf.customer_id = ncd.customer_id
where naf.active_member = 1
group by ncd.gender;


-- Q6. Find number of churned customers.
select COUNT(*) as churned_customers
from New_Account_Fact af
where af.churn = 1;


-- Q7. Find average credit score of active members.
select AVG(naf.credit_score) as avg_credit_score
from New_Account_Fact naf
where naf.active_member = 1;


-- Q8. Find customers whose balance is higher than average balance.

select AVG(naf.balance)
from New_Account_Fact naf;

select *
from New_Account_Fact naf
where naf.balance > (
    select AVG(naf.balance)
    from New_Account_Fact naf
);


-- Q9. Find country-wise churn count and average balance, but show only
-- those countries where churn count is greater than 10.

select ncd.country,
COUNT(naf.churn) as churn_count,
AVG(naf.balance) as avg_balance
from New_Customer_Dim ncd
join New_Account_Fact naf
on naf.customer_id = ncd.customer_id
group by ncd.country
having COUNT(naf.churn) > 10;


-- Q10. Find the country-wise average balance, but show only those
-- countries whose average balance is greater than the overall average balance of all customers.

select ROUND(AVG(naf.balance))
from New_Account_Fact naf;

select ncd.country,
AVG(naf.balance) as avg_balance
from New_Customer_Dim ncd
join New_Account_Fact naf
on naf.customer_id = ncd.customer_id
group by ncd.country
having avg_balance > (
    select ROUND(AVG(naf.balance))
    from New_Account_Fact naf
);

