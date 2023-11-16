-- Create or replace the table with BigQuery

CREATE OR REPLACE TABLE `cyclistic-data-405205.bike_sharing_data_2023.analyze_annual_trip` AS
SELECT
  ride_id,
  rideable_type,
  TIMESTAMP(started_at) AS started_at,
  TIMESTAMP(ended_at) AS ended_at,
  member_casual,
  EXTRACT(MINUTE FROM TIME(started_at)) + EXTRACT(HOUR FROM TIME(started_at)) * 60 AS ride_length,
  EXTRACT(MONTH FROM TIMESTAMP(started_at)) AS months,
  FORMAT_TIMESTAMP('%A', TIMESTAMP(started_at)) AS weekdays,
  EXTRACT(HOUR FROM TIMESTAMP(started_at)) AS hours,
  TIMESTAMP_DIFF(TIMESTAMP(ended_at), TIMESTAMP(started_at), MINUTE) AS duration_minutes
FROM 
  `cyclistic-data-405205.bike_sharing_data_2023.annual_trip_2023`
WHERE 
  member_casual IS NOT NULL;
