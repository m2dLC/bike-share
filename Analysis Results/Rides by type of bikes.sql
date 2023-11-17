SELECT
	rideable_type AS type_of_bike,
	member_casual AS membership,
	COUNT(rideable_type) AS ride_total,
	SUM(COUNT(member_casual)) OVER () AS total_membership
FROM
	analyze_annual_trip
WHERE
	member_casual IS NOT NULL
GROUP BY
	rideable_type,
	member_casual
	-- put on a coma(',') on rideable_type if you want to add member_casual
