SELECT
    CASE
        WHEN months = 1 THEN 'January'
        WHEN months = 2 THEN 'February'
        WHEN months = 3 THEN 'March'
        WHEN months = 4 THEN 'April'
        WHEN months = 5 THEN 'May'
        WHEN months = 6 THEN 'June'
        WHEN months = 7 THEN 'July'
        WHEN months = 8 THEN 'August'
        WHEN months = 9 THEN 'September'
        WHEN months = 10 THEN 'October'
    END as months_char,
    member_casual AS membership,
    ROUND(AVG(duration_minutes)) AS ride_duration
FROM
    analyze_annual_trip
WHERE
    member_casual IS NOT NULL
GROUP BY
    months,
    member_casual
ORDER BY 
    months;
