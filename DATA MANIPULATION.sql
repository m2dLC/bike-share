-- Create or replace the table in PostgreSQL

CREATE TABLE IF NOT EXISTS analyze_annual_trip AS
SELECT
  ride_id,
  rideable_type,
  CAST(started_at AS TIMESTAMP) AS started_at,
  CAST(ended_at AS TIMESTAMP) AS ended_at,
  member_casual,
  EXTRACT(MINUTE FROM ended_at - started_at) + EXTRACT(HOUR FROM ended_at - started_at) * 60 AS ride_length,
  EXTRACT(MONTH FROM started_at) AS months,
  TO_CHAR(started_at, 'Day') AS weekdays,
  EXTRACT(HOUR FROM started_at) AS hours,
  EXTRACT(EPOCH FROM ended_at - started_at) / 60 AS duration_minutes
FROM 
  annual_trip_2023
WHERE 
  member_casual IS NOT NULL;
