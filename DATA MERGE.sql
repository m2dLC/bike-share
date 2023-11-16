-- Data merging of monthly data bike trips from January 2023 to November 2023 via *Create Table* in PostgreSQL 

CREATE TABLE annual_trip_2023 AS
SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_id,
  member_casual,
  ride_length,
  day_of_week
FROM
  trip_202301
UNION ALL
SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_id,
  member_casual,
  ride_length,
  day_of_week
FROM
  trip_202302
UNION ALL
SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_id,
  member_casual,
  ride_length,
  day_of_week
FROM
  trip_202303
UNION ALL
SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_id,
  member_casual,
  ride_length,
  day_of_week
FROM
  trip_202304
UNION ALL
SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_id,
  member_casual,
  ride_length,
  day_of_week
FROM
  trip_202305
UNION ALL
SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_id,
  member_casual,
  ride_length,
  day_of_week
FROM
  trip_202306
UNION ALL
SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_id,
  member_casual,
  ride_length,
  day_of_week
FROM
  trip_202307
UNION ALL
SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_id,
  member_casual,
  ride_length,
  day_of_week
FROM
  trip_202308
UNION ALL
SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_id,
  member_casual,
  ride_length,
  day_of_week
FROM
  trip_202309
UNION ALL
SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_id,
  member_casual,
  ride_length,
  day_of_week
FROM
  trip_202310;
