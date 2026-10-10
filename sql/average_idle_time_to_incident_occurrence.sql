/*
  Do drivers with higher average idle time have more incidents?
*/
WITH 
  average_idle_time AS (
  SELECT
    si.driver_id,
    ROUND(AVG(t.idle_time_hours), 2) AS average_idle_time_hours
  FROM
    safety_incidents si
  LEFT JOIN
    trips t ON si.trip_id = t.trip_id
  WHERE
    si.driver_id IS NOT NULL
  GROUP BY
    si.driver_id
  ),
  total_incidents AS (
    SELECT
      driver_id,
      COUNT(*) AS total_incident
    FROM
      safety_incidents
    WHERE
      driver_id IS NOT NULL
    GROUP BY
      driver_id
  )
SELECT
  ti.driver_id,
  ait.average_idle_time_hours,
  ti.total_incident
FROM
  total_incidents ti
LEFT JOIN
  average_idle_time ait ON ti.driver_id = ait.driver_id
ORDER BY
  ti.total_incident DESC