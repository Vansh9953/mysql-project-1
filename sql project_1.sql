use employees;

select e.emp_no,e.first_name,e.last_name,d.dept_name,de.dept_no from employees as e 
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no;


select * from salaries 
where emp_no = '10044' order by salary desc
limit 1;




select t.emp_no,title,em.first_name,em.last_name from titles as t

join employees as em
on em.emp_no = t.emp_no
where title = 'Engineer';


select d.dept_no,d.dept_name,e.emp_no,e.first_name,e.last_name from dept_manager as dm
join departments as d
on dm.dept_no = d.dept_no
join employees as e
on e.emp_no = dm.emp_no;

select d.dept_no,dept_name,count(de.emp_no) as emp_count from departments as d 
join dept_emp as de
on d.dept_no = de.dept_no
group by dept_no,dept_name;


select emp_no,first_name,last_name,birth_date from employees
where year(birth_date) = 1953;


select emp_no,first_name,last_name,hire_date from employees
where hire_date >= date_sub(curdate(),interval 50 year);



select d.dept_no,d.dept_name,avg(salary) from departments as d
join dept_emp as de
on de.dept_no = d.dept_no
join salaries as s on de.emp_no = s.emp_no
group by d.dept_no,d.dept_name;

use employees;

SELECT d.dept_no,d.dept_name,
SUM(CASE WHEN e.gender = 'M' THEN 1 ELSE 0 END) AS male_count,
SUM(CASE WHEN e.gender = 'F' THEN 1 ELSE 0 END) AS female_count
FROM departments AS d
JOIN dept_emp AS de ON de.dept_no = d.dept_no
JOIN employees AS e ON de.emp_no = e.emp_no
GROUP BY d.dept_no, d.dept_name;
    
    
    
select emp_no,first_name,last_name,
timestampdiff(year,hire_date,curdate()) as years_served

from employees
order by years_served desc








