SELECT FLIGHT_NO, ORIG, DEST, ORIG_TIME, DEST_TIME, FARE, FARE * 0.8 AS DISCOUNT
FROM ressystem.flights
WHERE ORIG = "PHX" AND DEST = "LAX";