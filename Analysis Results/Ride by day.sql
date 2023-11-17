SELECT
    member_casual AS membership,
	rideable_type,
    weekdays,
    COUNT(weekdays) AS ride_total
FROM
    analyze_annual_trip
WHERE
    member_casual IS NOT NULL
GROUP BY
    rideable_type,
	member_casual,
    weekdays
ORDER BY
    CASE
        WHEN weekdays = 'Sunday' THEN 1
        WHEN weekdays = 'Monday' THEN 2
        WHEN weekdays = 'Tuesday' THEN 3
        WHEN weekdays = 'Wednesday' THEN 4
        WHEN weekdays = 'Thursday' THEN 5
        WHEN weekdays = 'Friday' THEN 6
        WHEN weekdays = 'Saturday' THEN 7
    END;