# Coursera-Case-Study---Bellabeat
This repository will contain information about how I approached the Bellabeat Case Study for Coursera Google Data Analytics Certificate. 

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
