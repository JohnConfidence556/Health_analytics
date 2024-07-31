USE health_data;

-- 1. Count of F vs M that have OCD & -- Average obsession score by gender

SELECT 
	Gender,
	count(`Patient ID`) AS Patient_count,
	round(AVG(`Y-BOCS Score (Obsessions)`),2) AS Avg_obs_score

FROM ocd_patient_dataset
GROUP BY Gender
ORDER BY Patient_count

-- 2. Count Of patient by ethnicity and their respective average obsession score

-- SELECT *
-- FROM ocd_patient_dataset

SELECT
	Ethnicity,
	COUNT(`Patient ID`) as Patient_count,
    AVG(`Y-BOCS Score (Obsessions)`) AS Avg_obs_score
FROM ocd_patient_dataset
GROUP BY Ethnicity
ORDER BY Patient_count


-- 3. Number of people diagnosed with OCD Month over month
-- Since OCD Diagnosis Date is in text format we need to change it to date/int format

-- ALTER TABLE ocd_patient_dataset
-- MODIFY `OCD Diagnosis Date` DATE;


SELECT 
	date_format(`OCD Diagnosis Date`, '%Y-%m-01 00:00:00') as month,
    count(`Patient ID`) as Patient_count
FROM ocd_patient_dataset
GROUP BY month
ORDER BY month;

-- 4. What is the most common obsession (count) & it's respective average obsession obession score
SELECT 
	`Obsession Type`,
    count(`Patient ID`) as Patient_count,
    round(AVG(`Y-BOCS Score (Obsessions)`),2) AS Avg_obs_score
FROM ocd_patient_dataset
GROUP BY `Obsession Type`
ORDER BY Patient_count;

-- 5. What is the most common compulsion type (count) & it's respective average obsession score 

SELECT 
	`Compulsion Type`,
    count(`Patient ID`) as Patient_count,
    round(AVG(`Y-BOCS Score (Compulsions)`),2) AS Avg_obs_score
FROM ocd_patient_dataset
GROUP BY 1
ORDER BY 2
