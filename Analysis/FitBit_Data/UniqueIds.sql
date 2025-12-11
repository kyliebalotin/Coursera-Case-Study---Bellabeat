/*This set of queries is looking for the number of unique Ids in different datasets */

/* Daily Activity Datasets */
SELECT 
  count(distinct Id) AS num_uniq_Id
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.dailyActivity_merged_31216-41116`; 

SELECT 
  count(distinct Id) AS num_uniq_Id
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.dailyActivity_merged_41216-51216`;

/* Heart Rate Datasets */
SELECT 
  count(distinct Id) AS num_uniq_Id
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.heartrate_seconds_merged_31216-41116`; 

SELECT 
  count(distinct Id) AS num_uniq_Id
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.heartrate_seconds_merged_41216-51216`;

/* Hourly Steps Datasets */
SELECT 
  count(distinct Id) AS num_uniq_Id
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.hourlySteps_merged_31216-41116`; 

SELECT 
  count(distinct Id) AS num_uniq_Id
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.hourlySteps_merged_41216-51216`;

/* Minute Sleep Datasets */
SELECT 
  count(distinct Id) AS num_uniq_Id
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.minuteSleep_merged_31216-41116`; 

SELECT 
  count(distinct Id) AS num_uniq_Id
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.minuteSleep_merged_41216-51216`;

/* SleepDay Dataset */
SELECT 
  count(distinct Id) AS num_uniq_Id
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.sleepDay_merged_41216-51216`;

/* Weight Loss Datasets */
SELECT 
  count(distinct Id) AS num_uniq_Id
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.weightLogInfo_merged_31216-41116`; 

SELECT 
  count(distinct Id) AS num_uniq_Id
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.weightLogInfo_merged_41216-51216`;

