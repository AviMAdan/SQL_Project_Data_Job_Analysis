/*
Question: What are the top_paying data analyst jobs?
-Identify the top 10 highest _paying Data Analyst roles that are avialable remotely and in India.
-Focuses on job postings with specified salaries (remove nulls)
-WHy? Highlight the top-paying opportunities for Data Analysts, offerring insights to employees.
*/

SELECT
job_id,
company_dim.name AS company_name,
job_title,
job_location,
job_schedule_type,
salary_year_avg,
job_posted_date

FROM
    job_postings_fact

LEFT JOIN 
    company_dim
ON job_postings_fact.company_id = company_dim.company_id    

WHERE  
    job_title_short = 'Data Analyst' AND
    job_location IN ('Anywhere','Mumbai') AND
    salary_year_avg IS NOT NULL 
ORDER BY salary_year_avg DESC
LIMIT 10;      


/*
-Data analyst jobs only in Mumbai
*/
SELECT
job_id,
company_dim.name AS company_name,
job_title,
job_location,
job_schedule_type,
salary_year_avg,
job_posted_date

FROM
    job_postings_fact

LEFT JOIN 
    company_dim
ON job_postings_fact.company_id = company_dim.company_id    

WHERE  
    job_title_short = 'Data Analyst' AND
    job_location = 'Mumbai, Maharashtra, India' AND
    salary_year_avg IS NOT NULL 
ORDER BY salary_year_avg DESC
LIMIT 10;      


