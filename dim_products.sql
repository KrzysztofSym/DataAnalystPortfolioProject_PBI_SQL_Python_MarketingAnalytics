USE portfolioproject_marketinganalytics;

SELECT ProductID, ProductName, Price,
CASE
	WHEN Price < 50 THEN 'Low'
    WHEN Price BETWEEN 50 AND 200 THEN 'Medium'
    WHEN Price > 200 THEN 'High'
    ELSE 'Null'
END AS PriceCategory
FROM products;