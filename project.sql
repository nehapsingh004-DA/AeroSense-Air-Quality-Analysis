-- CREATE DATABASE analysis_db ;
USE analysis_db;
-- CREATE TABLE analysissdata1(
-- City VARCHAR(100),
-- Temperature_Max FLOAT,
-- Temperature_Min FLOAT,
-- Apparent_Temperature_Max Float,
-- Apparent_Temperature_Min Float,
-- Percipitation Float,
-- Rainfall Float,
-- Weather_code Int,
-- WindSpeed Float,
-- WindGusts Float,
-- WindDirection Int,
-- PM2 Float,    
-- PM10 Float,   
-- NO2  Float,                         
-- SO2  Float,                      
-- CO  Float,                           
-- O3 Float,                       
-- AQI  Float,                           
-- Month Int,                  
-- Season VARCHAR(100)
-- );

# To count the total no of rows
-- SELECT COUNT(*) FROM analysissdata1;

# Basic Check 
SELECT * FROM analysissdata1 ;

# Average AQI by City
-- SELECT city, ROUND(AVG(aqi), 2) AS avg_aqi FROM analysissdata1 GROUP BY city ORDER BY avg_aqi DESC;

# Top Polluted Days
-- SELECT City, Date, AQI FROM analysissdata1 ORDER BY AQI DESC;

# Minimum & Maximum AQI
-- SELECT MIN(aqi) AS min_aqi,MAX(aqi) AS max_aqi FROM analysissdata1;

# AQI Trend (Date-wise)
-- SELECT Date, ROUND(AVG(aqi), 2) AS avg_aqi FROM analysissdata1 GROUP BY Date ORDER BY Date;

# City-wise Max Temperature Average
-- SELECT city, ROUND(AVG(temperature_max), 2) AS avg_temp FROM analysissdata1 GROUP BY city;

# City-wise Min Temperature Average
-- SELECT city, ROUND(AVG(temperature_min), 2) AS avg_temp FROM analysissdata1 GROUP BY city;
 
# Rainfall Impact on AQI 
-- SELECT rainfall, ROUND(AVG(aqi), 2) AS avg_aqi FROM analysissdata1 GROUP BY rainfall ORDER BY rainfall;

# Count of Hazardous Days 
-- SELECT COUNT(*) AS hazardous_days FROM analysissdata1 WHERE aqi > 300;

# AQI Category Distribution
 -- SELECT 
    -- CASE 
        -- WHEN aqi <= 50 THEN 'Good'
        -- WHEN aqi <= 100 THEN 'Moderate'
        -- WHEN aqi <= 200 THEN 'Unhealthy'
        -- ELSE 'Hazardous'
    -- END AS category,
    -- COUNT(*) AS count
-- FROM analysissdata1
-- GROUP BY category;


# Top 3 Most Polluted Cities
-- SELECT city, ROUND(AVG(aqi), 2) AS avg_aqi
-- FROM analysissdata1
-- GROUP BY city
-- ORDER BY avg_aqi DESC
-- LIMIT 3;
