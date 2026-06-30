
SELECT restaurant_name, rating
FROM cleaned_dataset
WHERE rating > 4.5;

SELECT restaurant_type, COUNT(*) AS total_restaurants
FROM cleaned_dataset
GROUP BY restaurant_type;

SELECT restaurant_name, avg_cost_two_peo
FROM cleaned_dataset
ORDER BY avg_cost_two_peo DESC
LIMIT 10;

SELECT restaurant_type, COUNT(*) AS total_restaurants
FROM cleaned_dataset
GROUP BY restaurant_type
HAVING COUNT(*) > 100;

SELECT restaurant_name, rating
FROM cleaned_dataset
WHERE restaurant_name LIKE 'A%';

SELECT restaurant_name, rating
FROM cleaned_dataset
WHERE rating BETWEEN 4.0 AND 5.0;
SELECT
    restaurant_type,
    COUNT(*) AS total_restaurants,
    ROUND(AVG(rating), 2) AS average_rating,
    ROUND(AVG(avg_cost_two_peo), 2) AS average_cost
FROM cleaned_dataset
GROUP BY restaurant_type
HAVING COUNT(*) > 50
ORDER BY average_rating DESC;