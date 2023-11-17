SELECT
	member_casual AS membership,
	COUNT(rideable_type) AS ride_total,
	SUM(COUNT(member_casual)) OVER () AS total_membership
FROM
	analyze_annual_trip
WHERE
	member_casual IS NOT NULL
GROUP BY
	member_casual