USE customer_db;

SELECT
    Gender,
    COUNT(Gender) AS TotalCount,
    COUNT(Gender) * 1.0 / (SELECT COUNT(*) FROM customer_data) AS Percentage
FROM customer_data
GROUP BY Gender;

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 1.0 / (Select Count(*) from customer_data)  as Percentage
from customer_data
Group by Contract;

SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from customer_data) * 100  as RevPercentage
from customer_data
Group by Customer_Status


