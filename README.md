
# SQL Project: Data Job Analysis

## Introduction
Dive into the data job market, focusing on data analyst roles. This project explores top-paying jobs, in-demand skills, and where high demand meets high salary in data analytics.

The SQL queries used for this analysis can be found here: **Project SQL Folder**

---

## Background
This project was born out of a desire to navigate the data science job market more effectively. By analyzing 2023 job posting data, the project seeks to answer five core questions:

- What are the top-paying data analyst jobs?
- What skills are required for these top-paying roles?
- What are the most in-demand skills for data analysts?
- What are the top skills based on salary?
- What are the most optimal skills to learn (high demand and high salary)?

---

## Tools I Used

- **SQL**: The backbone of my analysis, allowing me to query the database and extract critical insights.
- **PostgreSQL**: The chosen database management system for handling the project's robust dataset.
- **Visual Studio Code**: My primary code editor for writing and executing SQL queries.
- **Git & GitHub**: Essential for version control and sharing my SQL scripts and analysis with the world.

---

## The Analysis
Each query in this project was designed to investigate a specific aspect of the data analyst job market.

### 1. Top Paying Data Analyst Jobs
To identify the highest-paying roles, I filtered for data analyst positions available remotely, ensuring only postings with specified salaries were included.

```sql
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_average,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND 
    salary_year_average IS NOT NULL
ORDER BY
    salary_year_average DESC
LIMIT 10;
````

#### Findings:

* The top-paying roles reached salaries as high as $650,000.
* Leading companies offering these high-paying remote roles included Meta, AT&T, and Pinterest.

> *(Repeat for Queries 2 through 5, including code blocks, result tables, and insights for each).*

---

## What I Learned

Throughout this project, I significantly enhanced my technical toolkit:

* **Complex Querying**: Mastered advanced joins and the integration of CTEs to handle multi-step analysis.
* **Data Aggregation**: Utilized `GROUP BY` and aggregate functions to summarize vast amounts of job data.
* **Analytical Wizardry**: Improved my ability to turn raw data into meaningful, actionable insights.

---

## Conclusions

### Insights

* SQL and Python remain the most in-demand skills across the board.
* Specialized skills in Big Data and Machine Learning (like Spark and DataRobot) command the highest salaries.
* Remote work opportunities are plentiful for data analysts, with pay scales often matching or exceeding on-site roles.

---

## Closing Thoughts

This project served as a deep dive into the realities of the 2023 data job market. It not only refined my SQL skills but also provided a clear roadmap of the skills I need to pursue to stay competitive in the industry.

```
```
