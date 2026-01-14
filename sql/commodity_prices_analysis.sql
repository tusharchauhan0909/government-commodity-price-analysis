CREATE DATABASE IF NOT Exists govt_commodity_analysis;

USE govt_commodity_analysis;

CREATE TABLE commodity_prices(
	state VARCHAR(100),
    district VARCHAR(100),
    market VARCHAR(150),
    commodity VARCHAR(150),
    variety VARCHAR(150),
    grade VARCHAR(50),
    arrival_date DATE,
    min_price INT,
    max_price INT,
    modal_price INT
);

SELECT COUNT(*) AS total_records FROM commodity_prices;

--Business Questions

--Which commodities have the highest average modal price?

SELECT 
	commodity, 
    ROUND(AVG(Modal_Price), 2) as avg_price
FROM commodity_prices
GROUP BY commodity
ORDER BY avg_price DESC;

--Insight:Spices and premium commodities such as cumin seed have significantly higher average prices
 --compared to vegetables, indicating higher market value and demand-driven pricing.
 
--How do average commodity prices vary across states?

SELECT 
	State, 
    ROUND(AVG(Modal_Price), 2) as avg_price
FROM commodity_prices
GROUP BY State
ORDER BY avg_price DESC; 

--Insight 2:Average commodity prices vary significantly across states, indicating regional price disparities 
	--that may be influenced by supply-demand imbalance, transportation costs, and market accessibility.

--Which commodities show the highest price volatility?

SELECT
    Commodity,
    ROUND(AVG(max_price - min_price), 2) AS avg_price_range
FROM commodity_prices
GROUP BY Commodity
ORDER BY avg_price_range DESC;

--Insight 3:Some commodities exhibit significantly higher price volatility, as indicated by large 
	--differences between minimum and maximum prices, making them riskier for farmers and traders.

--What is the monthly price trend across all commodities?

-- Q4: Monthly price trend over time

SELECT
    YEAR(Arrival_Date) AS year,
    MONTH(Arrival_Date) AS month,
    ROUND(AVG(Modal_Price), 2) AS avg_modal_price
FROM commodity_prices
GROUP BY year, month
ORDER BY year, month;

--Insight 4:Monthly analysis reveals clear price fluctuations over time, indicating seasonality in
	--agricultural commodity prices influenced by harvest cycles and market demand.

--Which markets are consistently expensive?

SELECT
    Market,
    ROUND(AVG(Modal_Price), 2) AS avg_modal_price,
    COUNT(*) AS total_record
FROM commodity_prices
GROUP BY Market
HAVING COUNT(*) >= 30
ORDER BY avg_modal_price DESC;

--Insight 5:Some mandis consistently report higher average prices, suggesting stronger buyer demand and better
	--market access, making them attractive selling locations for farmers.

--Which commodities are price-stable vs price-volatile

SELECT
    Commodity,
    ROUND(AVG(max_price - min_price), 2) AS avg_price_range
FROM commodity_prices
GROUP BY commodity
ORDER BY avg_price_range DESC;

--Insight 6:Staple commodities tend to have more stable prices, while premium and specialty commodities show 
	--higher volatility, indicating greater income risk but also higher potential returns.
    
--Overall dataset summary

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT commodity) AS total_commodities,
    COUNT(DISTINCT state) AS total_states,
    COUNT(DISTINCT market) AS total_markets,
    ROUND(AVG(modal_price), 2) AS overall_avg_modal_price
FROM commodity_prices;