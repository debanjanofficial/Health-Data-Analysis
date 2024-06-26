Use Health_Data;
-- 1. Count of patient and avg obsession score by gender
select 
Gender,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as avg_obs_score
From ocd_patient_dataset
Group by 1
order by 2;


-- 2. Count of patient by ethinicity and their average obsession score

select 
Ethnicity,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
From ocd_patient_dataset
Group by 1
Order by 2;


-- 3. Number of people diagnosed with OCD MoM

alter table ocd_patient_dataset
modify `OCD Diagnosis Date` date;

select 

date_format(`OCD Diagnosis Date`, '%Y-%m-01 00:00:00)') as month,
count(`Patient ID`) as patient_count
from ocd_patient_dataset
Group by 1
Order by 1;


-- 4. What is the most common Obsession Type (Count) and its respective average obsession score

select 
`Obsession Type`,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
from ocd_patient_dataset
Group by 1
Order by 2;

-- 5. What is the most common Complusion Type (Count) and its respective average obsession score
select 
`Compulsion Type`,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
from ocd_patient_dataset
Group by 1
Order by 2;


