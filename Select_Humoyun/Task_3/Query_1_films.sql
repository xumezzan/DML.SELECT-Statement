SELECT title AS FilmTitle, rental_count AS RentalCount, expected_age AS AverageExpectedAge
FROM films
ORDER BY rental_count DESC
LIMIT 5;