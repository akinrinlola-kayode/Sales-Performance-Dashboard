-- Sales Performance Dashboard SQL Queries

-- 1. Total Sales and Profit
SELECT 
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM dbo.SalesData;

-- 2. Sales by Region
SELECT 
    Region,
    SUM(Sales) AS TotalSales
FROM dbo.SalesData
GROUP BY Region
ORDER BY TotalSales DESC;

-- 3. Monthly Sales Trend
SELECT 
    YEAR(Order_Date) AS SalesYear,
    MONTH(Order_Date) AS SalesMonth,
    SUM(Sales) AS MonthlySales
FROM dbo.SalesData
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY SalesYear, SalesMonth;

-- 4. Top 10 Products by Sales
SELECT TOP 10
    Product_Name,
    SUM(Sales) AS TotalSales
FROM dbo.SalesData
GROUP BY Product_Name
ORDER BY TotalSales DESC;