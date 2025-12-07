SELECT 
  f.flight_no AS route_no,
  f.departure_airport,
  f.arrival_airport,
  a.airport_name->>'ru' AS departure_airport_name,
  f.actual_arrival
FROM flights as f
JOIN airports_data as a 
    ON a.airport_code = f.departure_airport
WHERE status = 'Arrived'
ORDER BY f.actual_arrival DESC
LIMIT 20;