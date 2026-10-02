SELECT

    j.job_id,
    j.job_title,
    s.skill_id
FROM 
    job_postings_fact AS j
LEFT JOIN
    skills_job_dim AS s
ON
    j.job_id = s.job_id
LEFT JOIN
    skills_dim AS sk
ON
    s.skill_id = sk.skill_id