# Coursera-Case-Study---Bellabeat
This repository contains information about how I approached the Bellabeat Case Study for Coursera Google Data Analytics Certificate. 

## Project Summary


## Purpose 
In this case study, I was asked to focus on one of Bellabeat's products in order to see how consumers use smart devices. The results of this study would be presented to the company's executive team and used to guide the company's marketing strategies.

## Data
The case study provided one dataset to use for this project: [FitBit Fitness Tracker Data](https://www.kaggle.com/datasets/arashnic/fitbit). The FitBit data contains fitness tracker data from 30 users. This data has a few limitations including:
- Lack of demographic data such as sex/gender, which makes it difficult to assess whether the sample set could reflect the Bellabeat consumer population. According to the case study documentation, Bellabeat makes health-focused products for women. Without demographic data, it's possible that the sample set's results could not be completely reflective of Bellabeat's consumers.
- Outdated data, which may also make it difficult to assess whether current consumer trends match consumer activity collected in 2016.
- Small sample size. 30 participants may not be a large enough sample to reflect the larger population.

In addition to the provided dataset, I also will use the results of a [survey collected by the Big Ideas Lab](https://github.com/Big-Ideas-Lab/bil-dhl-survey-analysis). This dataset contains survey answers regarding smart phone and wearable device (iPHone, Fitbit, etc) users' ownership, usage, and data sharing perspectives. There are 1368 responses, with approximately 60% of the responders owning a wearable technology. This dataset can help supplement some of the limitations of the FitBit Fitness Tracker data as it has been collected more recently and contains demographic information of the responders. However, there are still some limitations to this dataset as well:
- There are blank cells where participants did not answer the survey question. I documented how this limitation is addressed during the processing and analyzing steps of the analysis. This will decrease the final sample size of the data analyzed, but it is still greater than than the sample size of the FitBit Fitness Tracker data.
- This data is self-reported behavior, so it is possible the data does not completely reflect the actual user behavior.

In an ideal situation, I would be able to look more closely at Bellabeat's internal datasets in order to perform this study. However, I believe these 2 datasets will be sufficient in completing this specific case study. 

## Data Processing and Cleaning
### Big Ideas Lab Duke Health Listens Survey Study
In order to prepare this dataset for analysis, I performed the following steps:
- Checked for spelling errors in the spreadsheet.
- Used conditional formatting to look for blank entries in cells pertaining to smart phone ownership, use of smart phone for activity tracking, wearable device ownership, level of education, employment status, gender, ethnicity, and age. I did see visually there are empty cells in other categories such as reasons for not owning a wearable device, use of wearables for activity tracking, and days used for activity tracking; and conditional formatting has helped me identify empty cells in the use of smart phones for activity tracking columns. I did not delete or remove any data with empty cells at this step, but have noted the presence of them.
- Used conditional formatting to make sure cells in columns where a binary system was used only contain 0 or 1. The survey responses appear to use a binary system for some of the columns such as smart phone and wearable device ownership, where 0 is False and 1 is True. This revealed that the cells under the column Wearable device ownership_Other is a different data type from cells under other similar columns. I’ve changed the data type for the mis-matching column to be a numeric data type. There were no issues in values being anything other than a 0 or 1 in the rest of the columns.
- Assumed that each row is a unique response to the survey as there are no unique identifiers for each entry.
- Used the Trim Whitespace tool to remove any extra spaces from the data.
- Deleted the duplicate Highest Level of Education column (Highest level of education_0). 
- Stored the cleaned data in a new sheet within the original spreadsheet called Clean.

### FitBit Fitness Tracker Data
In order to prepare this dataset for analysis, I used a combination of Google Sheets and SQL to clean the data. I started with cleaning a few specific datasets that looked most relevant to supporting the Big Ideas survey data:
- dailyActivity
- hourlySteps
- heartrate_seconds
- minuteSleep
- sleepDay
- weightLogInfo

Then I performed the following cleaning steps in Google Sheets:
- Trimmed Whitespace in all chosen datasets
- Filtered looking for blank cells. I only found blank cells in the dailyActivity's column Fat, which I do not plan to use in the Analysis step. 
- Converted the Date/Time columns of the datasets to Timestamps as I encountered issues when initially trying to upload the data into BigQuery.

After uploading the datasets into BigQuery, I checked all the datasets for the number of unique Id values. I noticed that the dailyActivity and hourlySteps datasets have more unique Ids than expected (>30). This decreases the reliability of the data and leads me to have some skepticism about the quality of the data. I did not delete any data, but I am aware this does not match my expectation of what the data should look like (30 participants = 30 unique Ids). When I checked the dailyActivity and hourlyStep Ids, I saw overlap. The queries used for these steps are saved in the [FitBit Data folder](https://github.com/kyliebalotin/Coursera-Case-Study---Bellabeat/tree/main/Analysis/FitBit_Data). 

## Analysis
There is a folder within this repository storing the analysis process for the project's data. The Big Ideas survey was analyzed in R, and the documentation for this analysis and subsequent visualizations can be found in the file [BigIdeas_Analysis.html](https://github.com/kyliebalotin/Coursera-Case-Study---Bellabeat/blob/main/Analysis/Big_Ideas_Analysis/BigIdeas_Analysis.pdf). The FitBit Fitness Tracker data was analyzed using a combination of SQL and Google Sheets. 

## Key Findings
Looking first at the Big Ideas Lab's survey:
- The majority of the participants own a smart phone, but only about half of the participants own a wearable.
![Phone and Wearable Ownership](https://github.com/kyliebalotin/Coursera-Case-Study---Bellabeat/blob/main/Images/BI_ownership_plots.png)
- Among the whole survey participant population, primary reason why participants do not own a wearable is the price (i.e. wearables are too expensive), followed closely by participants not being interested in tracking activity and participants do not have a specific reason why they don't own one.
![Reasons Why Participants Don't Own a Wearable](https://github.com/kyliebalotin/Coursera-Case-Study---Bellabeat/blob/main/Images/BI_notown_plots.png)
- The main reason why participants use wearable devices is for fitness and workout monitoring, followed by communication and health tracking, respectively. Sleep monitoring, health tracking, and communication are the top three secondary uses of wearables, respectively. In terms of not being considered a main use of a wearable, fashion was ranked the highest. Music/audiobooks/podcasts, navigation, and other apps are not common features of wearables.
![Reasons Why Participants Use Wearables (Whole Survey Population)](https://github.com/kyliebalotin/Coursera-Case-Study---Bellabeat/blob/main/Images/BI_reasons-whole_plots.png)
![Reasons Why Participants Use Wearables (Female-Identifying Survey Population)](https://github.com/kyliebalotin/Coursera-Case-Study---Bellabeat/blob/main/Images/BI_reasons-female_plots.png)
- All of these results do not change when the survey population is filtered to only female-identifying participants.

Based off this information, I then looked into how the Fitbit users from the FitBit Fitness Tracking dataset were using their devices:
- Every participant was tracking their steps and activity times and distances. Over 75% of participants were tracking their sleep, and less than 50% of participants were tracking their heart rate.

| Data Set | March-April | April-May | Percent Tracking |
| :--------: | :-----------: | :---------: | :----------------: |
| Daily Activity | 35*  | 33*  | 100% |
| Hourly Steps | 34*  | 33*  | 100%  |
| Minute Sleep | 23  | 24  | 78.3%  |
| Sleep Day | N/A  | 24  | 80%  |
| Heart Rate | 14  | 14  | 46.7%  |
| Weight Log | 11  | 8  | 31.7% |

*More participants found than expected (sample size is 30 participants)

- Between March 12-April 11, 2016, participants tracking their activity did so for about half of the month, but this bumped up to almost every day between April 12-May 12, 2016. Between April 12-May 12, 2016, participants tracked their sleep for about half of the month.
- The FitBit Fitness Tracking dataset seems to match some of the key findings of the Big Ideas's survey in that fitness/activity monitoring is the major use of smart wearable devices, with sleep monitoring being a secondary function of wearable devices.

## Recommendations to the Bellabeta executive team
1. Fitness/activity and sleep monitoring are the top reason why customers wear devices like the Bellabeat Time. Marketing should highlight on functions such as step tracking, activity monitoring, and sleep monitoring in their campaigns. 
2. I would move slightly away from highlighting the fashion aspect of Bellabeat Time in marketing campaigns as this was one of the least important factors for why a customer would wear a smart health device. 
3. It may be worth doing a price comparison between Bellabeat Time and its competitors like the Apple Watch and FitBit. It seems like Time is less expensive than its competitors, and the high price tag was listed as a major reason why a customer might not purchase a wearable device. 
4. I would recommend validating these results with any internal data that looks at how Bellabeat customers are using Bellabeat's products. 


