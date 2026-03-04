/*
Question: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst.
-Focus on all job postings.
-Why? Retrives the top 5 skills with the highest demand in the job market, 
providing insights into the most valuable skills for job seekers.
*/

SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE /*job_title_short = 'Data Analyst' OR*/ job_title_short ='Business Analyst'
GROUP BY
    skills
ORDER BY
    demand_count DESC
LIMIT 5

/*
Top 5 skills for Business Analyst

    "skills": "sql",
    "demand_count": "17372"

    "skills": "excel",
    "demand_count": "17134"

    "skills": "tableau",
    "demand_count": "9324"

    "skills": "power bi",
    "demand_count": "9251"

    "skills": "python",
    "demand_count": "8097"
*/ 

/* Top 5 skills for data analyst


    "skills": "sql",
    "demand_count": "92628"

    "skills": "excel",
    "demand_count": "67031"

    "skills": "python",
    "demand_count": "57326"

    "skills": "tableau",
    "demand_count": "46554"

    "skills": "power bi",
    "demand_count": "39468"
*/
