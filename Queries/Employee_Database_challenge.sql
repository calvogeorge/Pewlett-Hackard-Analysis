-- Deliverable 1

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;



SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT COUNT(emp_no) AS "employee_count",
	title
INTO retiring_titles
FROM unique_titles
GROUP BY (title)
ORDER BY employee_count DESC;

-- Mentorship Program (Deliverable 2)

SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date= ('9999-01-01'))
ORDER BY e.emp_no;

--Extra Queries
-- updated Deliverable 1 query for summary table

SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date,
	de.dept_no
INTO current_retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (de.to_date= ('9999-01-01'))
ORDER BY e.emp_no, t.to_date DESC;

-- current retiring employees by title count

SELECT COUNT(emp_no) AS "employee_count",
	title
INTO current_retiring_titles
FROM current_retirement_titles
GROUP BY (title)
ORDER BY employee_count DESC;

-- current retiring employees by department count

SELECT COUNT(crt.emp_no) AS "employee_count",
	d.dept_name as dept_name
INTO current_retiring_dept
FROM current_retirement_titles as crt
INNER JOIN departments as d
on crt.dept_no = d.dept_no
GROUP BY (dept_name)
ORDER BY employee_count DESC;

