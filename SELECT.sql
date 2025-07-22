
-- SELECT STATEMENET
Select * 
FROM parks_and_recreation.employee_demographics;

-- the SELECT statement is used to work with columns and specify what columns you want to work see in your output. There are a few other things as well that
-- we will discuss throughout this video
#We can also select a specefic number of column based on our requirement. 

Select first_name
FROM parks_and_recreation.employee_demographics;

SELECT first_name, last_name
FROM employee_demographics;

#Now the order doesn't normall matter when selecting your columns.
#There are some use cases we will look at in later modules where the order of the column
#Names in the select statement will matter, but for this you can put them in any order

SELECT last_name, first_name, gender, age
FROM employee_demographics;

#You'll also often see SQL queries formatted like this.
SELECT last_name, 
first_name, 
gender, 
age
FROM employee_demographics;


#The query still runs the exact same, but it is easier to read and pick out the columns
#being selected and what you're doing with them.

#For example let's take a look at using a calculation in the select statement

#You can see here we have the total_money_spent - we can perform calculations on this
SELECT first_name, 
last_name,
salary,
salary + 100
FROM employee_salary;

#This is going to do 10* 100 which is 1000 and then adds the original 540

#Now what will the output be when we do this?
SELECT first_name, 
last_name,
salary,
(salary + 100) * 10
FROM employee_salary;


# Pemdas

#One thing I wanted to show you about the select statement in this lesson is the DISTINCT Statement - this will return only unique values in
#The output - and you won't have any duplicates

SELECT dept_id
FROM employee_salary;

SELECT DISTINCT dept_id
FROM employee_salary;





