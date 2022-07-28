CREATE DATABASE data_science;

USE data_science;

DESC salaries;

SELECT * FROM salaries LIMIT 10;

# Distinct titles
SELECT distinct job_title FROM salaries;

# Avg salary per experience level
SELECT experience_level, AVG(salary) AS avg_salary
FROM salaries
GROUP BY experience_level
ORDER BY avg_salary DESC;

# Avg salary per job title
SELECT job_title, AVG(salary) AS avg_salary
FROM salaries
GROUP BY job_title
ORDER BY avg_salary DESC;

# Most In-Demand job title
SELECT job_title, COUNT(*) 
FROM salaries
GROUP BY job_title
ORDER BY 2 DESC;

# Entry level job titles
SELECT experience_level, job_title, COUNT(job_title) AS job
FROM salaries
WHERE experience_level = 'EN'
GROUP BY job_title
ORDER BY 3 DESC;

# Avg salary data analysts
SELECT job_title, AVG(salary)
FROM salaries
WHERE job_title LIKE '%data analyst'
GROUP BY job_title;

# Top 10 countries with highest employee residence
SELECT employee_residence, COUNT(*) AS 'number of employees'
FROM salaries
GROUP BY employee_residence
ORDER BY 2 DESC
LIMIT 10;

# Employment type preference by companies
SELECT employment_type, COUNT(*)
FROM salaries
GROUP BY employment_type;

# Most to least popular job_title
SELECT job_title, COUNT(*)
FROM salaries
GROUP BY job_title
ORDER BY 2 DESC;

# Most high-paying job titles
SELECT job_title, AVG(salary) AS 'avg_pay'
FROM salaries
GROUP BY job_title
ORDER By 2 DESC;

# Preferred company location
SELECT company_location, COUNT(*)
FROM salaries
GROUP BY company_location
ORDER BY 2 DESC;




