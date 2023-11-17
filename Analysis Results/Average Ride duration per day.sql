SELECT
    weekdays,
    member_casual AS membership,
    ROUND(AVG(duration_minutes)) AS ride_duration
FROM
    analyze_annual_trip
WHERE
    member_casual IS NOT NULL
GROUP BY
    weekdays,
    member_casual
ORDER BY 
    CASE 
        WHEN weekdays = 'Sunday' THEN 1 
        WHEN weekdays = 'Monday' THEN 2
        WHEN weekdays = 'Tuesday' THEN 3 
        WHEN weekdays = 'Wednesday' THEN 4
        WHEN weekdays = 'Thursday' THEN 5
        WHEN weekdays = 'Friday' THEN 6
        WHEN weekdays = 'Saturday' THEN 7 
    END, 
    member_casual;
