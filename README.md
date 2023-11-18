# Cyclistic Bike-Share Analysis 

## Project Overview

This is a case study to finish the *Capstone Course* of the **Google Data Analytics Professional Certificate**. In this case study, I am a Junior Data Analyst working in the marketing team at a fictional company, Cyclistic. The director of the company and my manager, Lily Moreno has given me a task to answer the question **How do annual members and casual riders use Cyclistic bikes differently**. 

## Ask

•	Assigned to answer the question, **How do Annual members and Casual riders use Cyclistic bikes differently**. To understand the question, the list below will guide us.

1. Rides by user type
2. Rides by bike type
3. Rides by month 
4. Rides by day
5. Rides by hour
6. Average Ride duration per day (in minutes)
7. Average Ride Length in a month

•	Key stakeholders are as follows:
1.	Lily Moreno
2.	Cyclistic Executives
3.	Marketing Analytics Team (Secondary)
•	Cyclistic executive team must approve our recommendations. With that, the insights and visualizations that I will create should be driven by data.


## Prepare

•	The public data of “Cyclistic Bike Share” was made available by Motivate International Inc. under the license from this [link](https://divvybikes.com/data-license-agreement).

•	The data from the month of January 2023 to October 2023 will be used for analysis.

•	The data is stored in CSV file and each file contains data from one month. Thus we have a total of 6 csv files.

•	ROCCC:
1.	Reliable – Data has been made available to the public for some time as it contains accurate, complete, and unbiased data.
2.	Original – Highly Original as the data was created by Motivate International Inc. A company based in New York that services bike-sharing systems and other urban services in North America.
3.	Comprehensive – The data includes all the unnecessary to data to understand how the members and casual riders use Cyclistic bikes.
4.	Current – The data that was used in the case study is from the previous 10 months. The Data Analyst only used this year’s data to measure the year-to-date KPIs of the company.
5.	Cited – Data collected has been made available as public data which was provided by Cyclistic and the City Government of Chicago, Illinois.


## Process

### Data Cleaning and Manipulation
Data Cleaning of the data is carried out using Microsoft Excel and using SQL. The following data cleaning actions were performed
•	Removing Duplicates – in ensuring data integrity, the duplicated values were examined and removed using the “Remove Duplicate” tool in Excel. 

•	Data Validation - to ensure data consistency validation was done by limiting the rideable_type, and member_casual to specific and valid values. Column rideable_type is limited to *classic_bike, docked_bike, and electric_bike*, and *casual, and member* for casual_member.

•	Removing Empty Values and Unwanted Data- to ensure completeness in data, all files were checked for incomplete or blank values to all columns. The rows with missing values are deleted. Values with less than 30 seconds in *ride_length* was removed as it is deemed illogical to use them as a valid data and will be considered as a cancelled transaction and an unwanted data. 

•	Removing Unnecessary Data Series - in need of focusing more on efficiency, columns with essential values are only to be maintained to the dataset. Irrelevant columns such as start_lat, start_lng, end_lat, and end_lng were removed. 

•	Adding Additional and Necessary Data Series - to measure the duration of each trips, *ride_length* was added to the column. Column *day_of_week* was also added as it is needed in analyzing the data.  

•	Applying Time Format to *ride_length* - *ride_length* was formatted to “HH:MM:SS” using the “Format > Cells > Time > 37:30:55” option in Excel. This is to ensure that the duration of the trip was in the correct format.


### Data Transformation
•	Importing Data to SQL – the monthly files containing the ride data were imported to PostgreSQL.

•	Merging Data – a new table was created via PostgreSQL named *“annual_trip_2023”*. January 2023 to October 2023 monthly trip data were merged to “annual_trip_2023” by using the UNION ALL statement. Query: [Data Merge](https://github.com/m2dLC/bike-share/blob/main/DATA%20MERGE.sql).

•	Manipulating Data – a new table was created via PostgreSQL named *"analyze_annual_trip"*. The newly generated table includes additional columns such as *months, weekdays, hours, and duration_minutes*. Query: [Data Manipulation](https://github.com/m2dLC/bike-share/blob/main/DATA%20MANIPULATION.sql).

## Analyze & Share

To gain valuable insights and findings from data, I utilize PostgreSQL for data analysis and Power BI for data visualization. PostgreSQL serves as the platform for creating analyzed data, providing robust data storage and analysis capabilities. Power BI, on the other hand, is employed to transform the analyzed data into visual representations such as charts, graphs, and dashboards, making it easier to interpret and understand the insights derived from the analysis. 

1. Number of Rides by Type of Membership - As of last October 2023, the year to date rides of Cyclistic is 3,838,346. 36.68% of the rides come from the casual users of the service while 63.32% of the rides are from the members.

   ![Types of Membership](https://github.com/m2dLC/bike-share/assets/107737135/c57d27a8-161f-4a50-bed7-35f8e7b88c28)

2. Number of Rides by Type of Bike - In analyzing the usage patterns of rideable bikes, it is evident that the classic bikes have emerged as the most popular choice among both casual users and members. Additionally, there is a significant demand for electric bikes from both casual users and members. However, it is worth noting that the demand for docked bikes is primarily driven by casual bikers exclusively.

   ![Number of Rides by Bike Type](https://github.com/m2dLC/bike-share/assets/107737135/3d0dc772-2079-4307-b724-cf61b09ab2f7)

3. Number of Rides by Month

   ![Total Rides by Month](https://github.com/m2dLC/bike-share/assets/107737135/d3f9d03b-a903-401a-a8c7-9c4483951067)

4. Number of Rides by Day

   ![Total Rides by Day](https://github.com/m2dLC/bike-share/assets/107737135/4001df85-eb75-4d22-92d2-ada7089b8779)

5. Number of Rides by Hours

   ![Total Rides by Hours](https://github.com/m2dLC/bike-share/assets/107737135/cc7f5ad7-c003-498f-928a-7fa839a0856d)

6. Average Ride Duration by Month

   ![Average Ride Duration per Month (in min )](https://github.com/m2dLC/bike-share/assets/107737135/8fea37b7-eb3c-434a-9596-9892ebf47057)

7. Average Ride Duration by Days

   ![Average Ride Duration per Day (in min )](https://github.com/m2dLC/bike-share/assets/107737135/571382d3-ce6f-4cdb-8d34-827a06a6b0ca)

## Act
