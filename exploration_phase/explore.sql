/*
  possibility for getting data to other table
  This table is typically used for recording driver information
*/
SELECT *
FROM drivers

/*
  Main table that will be used for exploration
  This table is used for driver performance. Additionally, it only records active drivers. Meaning, any drivers that were recorded on drivers table that were terminated, were not included.
*/
SELECT *
FROM driver_monthly_metrics

/*
  Checking of tables in the database
*/
SELECT * FROM pg_catalog.pg_tables WHERE schemaname='public';


/*
  Possible usage. This section is focused more on tables that have driver_id field.
*/

  /*This table is used to record the trips. Additionally, this only lists completed trips.*/
  SELECT *
  FROM trips

  /* This records the incidents that drivers are involved in*/
  SELECT *
  FROM safety_incidents


/*
  Unrelated Tables
*/
  SELECT *
  FROM truck_utilization_metrics

  SELECT *
  FROM customers

  SELECT *
  FROM loads

  SELECT *
  FROM routes

  SELECT *
  FROM trailers

  SELECT *
  FROM trucks

  SELECT *
  FROM maintenance_records

  /*
    It only tells the fuel purchase. No performance or operational metrics involve.
  */
  SELECT *
  FROM fuel_purchases


/*
  SECTION FOR EXPERIMENTATION TO UNDERSTAND THE RELATIONSHIP BETWEEN RELATED TABLE FOR PROJECT 3
*/

SELECT
  si.driver_id,
  si.trip_id,
  si.at_fault_flag,
  si.injury_flag,
  si.preventable_flag,
  t.actual_distance_miles,
  t.actual_duration_hours,
  t.average_mpg,
  t.fuel_gallons_used,
  t.idle_time_hours
FROM
  safety_incidents si
LEFT JOIN trips t ON si.trip_id = t.trip_id

/*
  Todo for September 22, 2026:
  explore the correlation of the safety incidents to the following fields of the trips:
  actual_distance_miles,
  actual_duration_hours,
  average_mpg,
  fuel_gallons_used,
  idle_time_hours

  Take time to check the driver_monthly_metrics as it also have some same metric fields in the trips table.
*/

/*
  Double checking the terminated drivers on safety incidents table
*/

