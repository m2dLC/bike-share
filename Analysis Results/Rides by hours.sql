SELECT
    member_casual AS membership,
    hours,
    COUNT(hours) AS ride_total
FROM
    analyze_annual_trip
WHERE
    member_casual IS NOT NULL
GROUP BY
    hours,
    member_casual
ORDER BY 
    hours;