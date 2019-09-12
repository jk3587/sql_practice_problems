--Q5
select order_id, order_date
from orders
where employee_id = 5;

--Q6
select supplier_id, contact_name, contact_title
from suppliers
where contact_title != 'Marketing Manager';

--Q7
select Product_id, product_name
from products
where lower(product_name) like '%queso%';

--Q8
select order_id, customer_id, ship_country
from orders
where ship_country = 'France' or ship_country = 'Belgium';

--Q9
select order_id, customer_id, ship_country
from orders
where ship_country in ('Brazil', 'Mexico', 'Argentina', 'Venezuela');

--Q10
select first_name, last_name, title, birth_date
from employees
order by birth_date;

--Q11
select first_name, last_name, title, to_char(birth_date, 'YYYY-DD-MM')
from employees
order by birth_date;

--Q12
select first_name, last_name, concat(first_name || ' ' || last_name) as full_name
from employees;

--Q13
select order_id, product_id, unit_price, quantity,
round(cast(unit_price * quantity as numeric), 2) as total_price
from order_details;

--Q14
select count(*)
from customers;

--Q15
select min(order_date) as first_order from orders;

--Q16
select distinct(country) from customers
order by 1;

--Q17
select contact_title, count(contact_title) as total_contact_title
from customers
group by contact_title
order by 2 desc;

--Q18
select product_id, product_name, company_name as supplier
from products
join suppliers
on products.supplier_id = suppliers.supplier_id
order by product_id;

--Q19
select order_id, to_char(order_date, 'YYYY-MM-DD') as order_date,
shippers.company_name as shipper
from orders
join shippers
on orders.ship_via = shippers.shipper_id
where order_id < 10300
order by order_id;

