SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles 
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

--Retrieve the number of employees by their most recent job title who are about to retire
SELECT COUNT(title) as "count",
	title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC;

--Create a Mentorship Eligibility table
SELECT DISTINCT ON(emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
	ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') AND
	(e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

--Count number of employees eligible for mentorship by title
SELECT COUNT(title),
	title
INTO mentorship_count
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT(title) DESC;

--Get average salary per job title for retiring employees
SELECT ROUND(AVG(s.salary),2) AS "average salary", rt.title
INTO retirement_avg_salary
FROM retirement_titles AS rt
INNER JOIN salaries AS s
	ON (rt.emp_no = s.emp_no)
GROUP BY rt.title
ORDER BY "average salary" DESC;


--Get average salary per job title for mentorship employees
SELECT ROUND(AVG(s.salary),2) AS "average salary", me.title
INTO mentorship_avg_salary
FROM mentorship_eligibility AS me
INNER JOIN salaries AS s
	ON (me.emp_no = s.emp_no)
GROUP BY me.title
ORDER BY "average salary" DESC;

