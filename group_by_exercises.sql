show databases;
use employees;
show tables;

select * from titles;

select distinct title
from titles;

-- How many unique titles have there ever been?
-- 7

select last_name
from employees
where last_name like 'e%e'
group by last_name
;

select distinct first_name, last_name
from employees
where last_name like 'e%e'
group by first_name, last_name
order by last_name, first_name
;

select last_name
from employees
where last_name like '%q%'
and last_name not like '%qu%'
;

select last_name, count(last_name)
from employees
where last_name like '%q%'
and last_name not like '%qu%'
group by last_name
;


select first_name, gender, count(gender)
from employees
where first_name like '%irena%' or first_name like '%vidya%' or first_name like '%maya%'
group by gender, first_name
order by first_name
;


SELECT count(*),
lower(
CONCAT(substr(first_name, 1, 1)
    , substr(last_name, 1, 4)
    , '_'
    , lpad(month(birth_date), 2, 0)
    , substr(birth_date, 3, 2)
    )
    ) as username
from employees
group by username
;


SELECT count(*),
lower(
CONCAT(substr(first_name, 1, 1)
    , substr(last_name, 1, 4)
    , '_'
    , lpad(month(birth_date), 2, 0)
    , substr(birth_date, 3, 2)
    )
    ) as username
from employees
group by username
having count(*) > 1
;

-- Yes there are duplicate usernames. 5 is the most times a username is duplicated. There are 44 duplicates.