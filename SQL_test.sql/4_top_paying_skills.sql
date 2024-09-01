/*
Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
-Why? It reveals how different skills impact salary levels for Data Analyst and 
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25

/*

Based on the list of top-paying skills for data analysts, several key trends and insights emerge:

1. High-Paying Niche Skills:
SVN (Subversion) stands out with an exceptionally high average salary of $400,000, far exceeding the others. This might be due to its specific demand in industries or legacy systems where version control is critical, and expertise is rare.
Solidity ($179,000) is the programming language for Ethereum smart contracts, reflecting the growing demand in blockchain and decentralized applications.

2. Strong Demand for Cloud and DevOps Skills:
Couchbase ($160,515), VMware ($147,500), and Terraform ($146,734) show that cloud database management, virtualization, and infrastructure as code (IaC) are lucrative areas.
GitLab ($134,126) and Puppet ($129,820) emphasize the value placed on DevOps tools and CI/CD (Continuous Integration/Continuous Deployment) practices.

3. Emerging Technologies in AI/ML:
DataRobot ($155,486), MXNet ($149,000), Keras ($127,013), PyTorch ($125,226), and Hugging Face ($123,950) indicate that skills in machine learning frameworks and platforms are highly rewarded, reflecting the boom in AI/ML applications.
TensorFlow ($120,647) also supports this trend, though slightly lower than its counterparts, it’s still significant.

4. Programming Languages and Data Tools:
Golang ($155,000) and Scala ($115,480) are among the top programming languages, often used in high-performance systems and big data processing.
Dplyr ($147,633) shows the importance of data manipulation and analysis in R, while Twilio ($138,500) is relevant for communication and customer engagement platforms.

5. Version Control and Collaboration Tools:
Tools like GitLab ($134,126), Bitbucket ($116,712), and Atlassian ($117,966) indicate that companies highly value skills that enhance team collaboration and code management.

6. Specialized AI/ML Libraries:
Hugging Face and Keras, as well as PyTorch and MXNet, highlight a trend towards specialized knowledge in AI/ML, specifically in frameworks focused on deep learning and NLP (Natural Language Processing).

7. Legacy and Specialized Systems:
Perl ($124,686) and SVN suggest that niche, possibly legacy, systems still command high salaries, particularly when expertise is scarce.

8. Modern Workflow Automation:
Tools like Ansible ($124,370) and Airflow ($116,387) underscore the demand for automation in data pipelines and infrastructure management, vital for scalable and efficient operations.

Summary:
The top-paying skills indicate that niche, specialized knowledge, especially in cloud, AI/ML, and blockchain technologies, commands the highest salaries. Additionally, there's a strong emphasis on tools that support modern software development practices, cloud infrastructure, and workflow automation. Emerging technologies in AI and blockchain are especially lucrative, suggesting a premium on roles that drive innovation in these areas.

*/