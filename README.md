# Health_analytics

## Project Overview 

The "OCD Patient Dataset: Demographics & Clinical Data" is a structured CSV file containing comprehensive information on 1500 individuals diagnosed with Obsessive-Compulsive Disorder (OCD). This dataset serves as a valuable resource for research and analysis within the field of mental health.

By Analyzing few aspects of the dataset, we seek to know how much people have had history of OCD for the past year, the percentage of male to female gender and others.

## Data sources

The primary dataset used for this analysis is the 'ocd_patient_dataset.csv' file 
containing 17 columns.

## Tools
- mySQL (for Exploratory Data Analysis)
- PowerBi (for creating reports and visualization)
- Excel

## Data cleaning/Preparation 

in the initial preparation phase, one task we performed was that of data formatting especially the date 'OCD diagnosis Date' column.

## Exploratory Data Analysis (EDA)
### EDA Involved exploring the data to answer key questions such as;
1. What is the Count of Female versus Male that have OCD and average obsession score by gender.
2. What is the count of patient by Ethnicity and their respective average obsession score
3. What is the number of people diagnosed with OCD month over month
4. What is the most common obsession (count) and it's respective average obsession score
5. What is the most common compulsion type (count) and it's respective average obsession score.


## Data Analysis
``` SQL
SELECT
      `Compulsion Type`,
       count (`Patient ID`) AS patient_count,
       round(AVG(`Y-BOCS Score(Compulsions)`),2) AS Avg_obs_score
FROM ocd_patient_dataset
GROUP BY 1
ORDER BY 2
```

## Results/Findings
The analysis results are summarized as follows 


## Recommendations 
