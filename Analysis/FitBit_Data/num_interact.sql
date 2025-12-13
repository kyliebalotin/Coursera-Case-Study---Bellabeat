/*Queries to see how many times an Id interacts with different types of activities*/

/*Daily Activity*/
SELECT 
  Id,
  COUNT(Id) AS num_interact,
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.dailyActivity_merged_31216-41116` 
GROUP BY
  Id
ORDER BY
  num_interact DESC;

SELECT 
  Id,
  COUNT(Id) AS num_interact,
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.dailyActivity_merged_41216-51216` 
GROUP BY
  Id
ORDER BY
  num_interact DESC;

/*Heart Rate*/
SELECT 
  Id,
  COUNT(Id) AS num_interact,
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.heartrate_seconds_merged_31216-41116` 
GROUP BY
  Id
ORDER BY
  num_interact DESC;

SELECT 
  Id,
  COUNT(Id) AS num_interact,
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.heartrate_seconds_merged_41216-51216` 
GROUP BY
  Id
ORDER BY
  num_interact DESC;

/*Hourly Steps*/
SELECT 
  Id,
  COUNT(Id) AS num_interact,
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.hourlySteps_merged_31216-41116` 
GROUP BY
  Id
ORDER BY
  num_interact DESC;

SELECT 
  Id,
  COUNT(Id) AS num_interact,
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.hourlySteps_merged_41216-51216` 
GROUP BY
  Id
ORDER BY
  num_interact DESC;

/*Minute Sleep*/
SELECT 
  Id,
  COUNT(Id) AS num_interact,
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.minuteSleep_merged_31216-41116` 
GROUP BY
  Id
ORDER BY
  num_interact DESC;

SELECT 
  Id,
  COUNT(Id) AS num_interact,
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.minuteSleep_merged_41216-51216` 
GROUP BY
  Id
ORDER BY
  num_interact DESC;

/*Day Sleep*/
SELECT 
  Id,
  COUNT(Id) AS num_interact,
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.sleepDay_merged_41216-51216` 
GROUP BY
  Id
ORDER BY
  num_interact DESC;

/*Weight Log*/
SELECT 
  Id,
  COUNT(Id) AS num_interact,
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.weightLogInfo_merged_31216-41116` 
GROUP BY
  Id
ORDER BY
  num_interact DESC;

SELECT 
  Id,
  COUNT(Id) AS num_interact,
FROM 
  `imposing-volt-473017-s6.Bellabeat_Case_Study.weightLogInfo_merged_41216-51216` 
GROUP BY
  Id
ORDER BY
  num_interact DESC;
