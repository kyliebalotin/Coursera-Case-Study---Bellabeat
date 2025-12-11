/*Based on the UniqueIds SQL query,I saw that there were more unique Ids than expected based on the sample size of the study (>30). I wanted to compare the unique Ids in the March/April dailyActivity and hourlySteps dataset to see if there is overlap among the unique Ids. */

SELECT DISTINCT
  dailyActivity.Id,
  hourlySteps.Id
FROM
  `imposing-volt-473017-s6.Bellabeat_Case_Study.dailyActivity_merged_31216-41116` AS dailyActivity
LEFT JOIN
  `imposing-volt-473017-s6.Bellabeat_Case_Study.hourlySteps_merged_31216-41116` AS hourlySteps
  ON dailyActivity.Id = hourlySteps.Id;

/* I can see that the Ids of the hourlySteps match the Ids of the dailyActivity Ids (except for the 1 extra Id logged in dailyActivity than hourlySteps) */

/*Performing same analysis on the April/May datasets */
SELECT DISTINCT
  dailyActivity.Id,
  hourlySteps.Id
FROM
  `imposing-volt-473017-s6.Bellabeat_Case_Study.dailyActivity_merged_41216-51216` AS dailyActivity
LEFT JOIN
  `imposing-volt-473017-s6.Bellabeat_Case_Study.hourlySteps_merged_41216-51216` AS hourlySteps
  ON dailyActivity.Id = hourlySteps.Id;

/* I can see that the Ids of the hourlySteps match the Ids of the dailyActivity Ids. */