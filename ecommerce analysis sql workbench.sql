

SELECT `Brand of the product`, 
       COUNT(*) AS total_products, 
       ROUND(AVG(`Price of the product`), 2) AS average_price
FROM `e commerce`
GROUP BY `Brand of the product`
ORDER BY total_products DESC ;



describe `e commerce`


SELECT `Brand of the product`, 
       `Geographical locations`, 
       AVG(`Average rating given to similar products`) AS rating_output
FROM `e commerce`
GROUP BY `Brand of the product`, `Geographical locations`;




describe `e commerce`


SELECT `Brand of the product`, COUNT(`Gender`) FROM `e commerce` 
GROUP BY `Brand of the product`


SELECT `Brand of the product`, 
       `Season`, 
       AVG(`Customer review sentiment score (overall)`) AS avg_sentiment
FROM `e commerce` 
GROUP BY `Brand of the product`, `Season`;

SELECT `Holiday`, ROUND(AVG(`Customer review sentiment score (overall)`), 2) AS sentiment
FROM `e commerce`
GROUP BY `Holiday`;

SELECT `Brand of the product`, ROUND(AVG(`Rating of the product`), 2) AS top_rating
FROM `e commerce`
GROUP BY `Brand of the product`
HAVING top_rating >= 4.5;

ELECT `Brand of the product`, `Price of the product`
FROM `e commerce`
WHERE `Brand of the product` = 'PUMA';

SELECT `Geographical locations`, ROUND(AVG(`Median purchasing price (in rupees)`), 2) AS avg_budget
FROM `e commerce`
GROUP BY `Geographical locations`;


SELECT `Brand of the product`, 
       MAX(`Price of the product`) AS max_price, 
       MIN(`Price of the product`) AS min_price,
       (MAX(`Price of the product`) - MIN(`Price of the product`)) AS price_difference
FROM `e commerce`
GROUP BY `Brand of the product`
ORDER BY price_difference DESC;

SELECT `Brand of the product`, 
       `Probability for the product to be recommended to the person`,
       CASE 
            WHEN `Probability for the product to be recommended to the person` >= 0.8 THEN 'High Chance'
            WHEN `Probability for the product to be recommended to the person` BETWEEN 0.5 AND 0.79 THEN 'Medium Chance'
            ELSE 'Low Chance'
       END AS recommendation_status
FROM `e commerce`;