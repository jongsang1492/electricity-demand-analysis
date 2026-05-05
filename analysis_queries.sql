-- Average electricity demand by hour
SELECT hour, AVG(demand) AS avg_demand
FROM cleaned_energy
GROUP BY hour
ORDER BY hour;

-- Average electricity demand by month
SELECT month, AVG(demand) AS avg_demand
FROM cleaned_energy
GROUP BY month
ORDER BY month;

-- Average electricity demand by weekday
SELECT weekday, AVG(demand) AS avg_demand
FROM cleaned_energy
GROUP BY weekday
ORDER BY CASE weekday
    WHEN 'Sunday' THEN 1
    WHEN 'Monday' THEN 2
    WHEN 'Tuesday' THEN 3
    WHEN 'Wednesday' THEN 4
    WHEN 'Thursday' THEN 5
    WHEN 'Friday' THEN 6
    WHEN 'Saturday' THEN 7
END;

-- Top 10 peak electricity demand records
SELECT Datetime, demand
FROM cleaned_energy
ORDER BY demand DESC
LIMIT 10;