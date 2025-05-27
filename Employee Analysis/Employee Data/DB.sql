-- DASHBOARD-FRIENDLY EMPLOYEE PRODUCTIVITY ANALYSIS SQL SCRIPT
-- Goal: Improve Workforce Productivity

-- 1. Distribution of Performance Scores
SELECT 
    Performance_Score,
    COUNT(*) AS Employee_Count,
    ROUND(AVG(CAST(Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Employee
GROUP BY Performance_Score
ORDER BY 
    CASE 
        WHEN Performance_Score = 'Exceeds' THEN 1
        WHEN Performance_Score = 'Fully Meets' THEN 2
        WHEN Performance_Score = 'Needs Improvement' THEN 3
        WHEN Performance_Score = 'PIP' THEN 4
        ELSE 5
    END;

-- 2. Identify high-performing employees (based on 'Exceeds' Performance_Score and top rating)
SELECT 
    Employee_ID, Full_Name, Dept_Type, Title, Performance_Score, Current_Employee_Rating
FROM PortfolioProject..Employee
WHERE Performance_Score = 'Exceeds' AND Current_Employee_Rating = 5
ORDER BY Full_Name;

-- Highest-rated performers per department (with 'Exceeds' performance score)
WITH DeptMaxRating AS (
    SELECT 
        Dept_Type,
        MAX(CAST(Current_Employee_Rating AS FLOAT)) AS Max_Rating
    FROM PortfolioProject..Employee
    WHERE Performance_Score = 'Exceeds'
    GROUP BY Dept_Type
)

SELECT 
    e.Dept_Type,
    e.Employee_ID,
    e.Full_Name,
    e.Title,
    e.Current_Employee_Rating,
    e.Performance_Score
FROM PortfolioProject..Employee e
JOIN DeptMaxRating dmr
    ON e.Dept_Type = dmr.Dept_Type 
    AND CAST(e.Current_Employee_Rating AS FLOAT) = dmr.Max_Rating
WHERE e.Performance_Score = 'Exceeds'
ORDER BY e.Dept_Type, e.Current_Employee_Rating DESC;



-- 3. Average performance rating by department
SELECT 
    Dept_Type AS Department, 
    COUNT(*) AS Employee_Count,
    ROUND(AVG(CAST(Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Employee
GROUP BY Dept_Type
ORDER BY Avg_Rating DESC;

-- 4. Average performance rating by job title
SELECT 
    Title, 
    COUNT(*) AS Employee_Count,
    ROUND(AVG(CAST(Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Employee
GROUP BY Title
ORDER BY Avg_Rating DESC;

-- 5. Training count vs employee rating
SELECT 
    e.Employee_ID, 
    e.Full_Name, 
    COUNT(td.Training_Program) AS Training_Count, 
    e.Current_Employee_Rating
FROM PortfolioProject..Employee e
LEFT JOIN PortfolioProject..Training_Development td 
    ON e.Employee_ID = td.Employee_ID
GROUP BY e.Employee_ID, e.Full_Name, e.Current_Employee_Rating
ORDER BY Training_Count DESC;

-- 6. Impact of training outcome on performance
SELECT 
    td.Training_Outcome, 
    COUNT(*) AS Employee_Count,
    ROUND(AVG(CAST(e.Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Employee e
JOIN PortfolioProject..Training_Development td 
    ON e.Employee_ID = td.Employee_ID
GROUP BY td.Training_Outcome
ORDER BY Avg_Rating DESC;

-- 7. Impact of training type on productivity
SELECT 
    td.Training_Type, 
    COUNT(*) AS Participant_Count,
    ROUND(AVG(CAST(e.Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Training_Development td
JOIN PortfolioProject..Employee e 
    ON td.Employee_ID = e.Employee_ID
GROUP BY td.Training_Type
ORDER BY Avg_Rating DESC;

-- 8. Most common training programs among high performers
SELECT 
    td.Training_Program, 
    COUNT(*) AS Frequency
FROM PortfolioProject..Training_Development td
JOIN PortfolioProject..Employee e 
    ON td.Employee_ID = e.Employee_ID
WHERE e.Performance_Score = 'Exceeds'
GROUP BY td.Training_Program
ORDER BY Frequency DESC;

-- 9. Cost-effectiveness of training programs
SELECT 
    td.Training_Program, 
    ROUND(AVG(td.Training_Cost),2) AS Avg_Cost, 
    ROUND(AVG(CAST(e.Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Training_Development td
JOIN PortfolioProject..Employee e 
    ON td.Employee_ID = e.Employee_ID
GROUP BY td.Training_Program
ORDER BY Avg_Rating DESC;

-- 10. Performance based on years of experience
SELECT 
    DATEDIFF(YEAR, Start_Date, GETDATE()) AS Years_Experience, 
    COUNT(*) AS Employee_Count,
    ROUND(AVG(CAST(Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Employee
GROUP BY DATEDIFF(YEAR, Start_Date, GETDATE())
ORDER BY Years_Experience;

-- 11. Work-life balance score vs employee rating
SELECT 
    ees.Work_Life_Balance_Score, 
    COUNT(*) AS Respondent_Count,
    ROUND(AVG(CAST(e.Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Employee_Engagement_Survey ees
JOIN PortfolioProject..Employee e 
    ON ees.Employee_ID = e.Employee_ID
GROUP BY ees.Work_Life_Balance_Score
ORDER BY Work_Life_Balance_Score DESC;