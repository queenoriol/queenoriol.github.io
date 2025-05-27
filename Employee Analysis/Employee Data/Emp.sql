-- DATA EXPLORATION & CLEANING

--Previewing Tables
SELECT TOP 10 * FROM PortfolioProject..Employee;
SELECT TOP 10 * FROM PortfolioProject..Employee_Engagement_Survey;
SELECT TOP 10 * FROM PortfolioProject..Training_Development;
SELECT TOP 10 * FROM PortfolioProject..Recruitment;


-- Checking for Duplicates and Nulls

-- Duplicates
SELECT Employee_ID, COUNT(*) FROM PortfolioProject..Employee GROUP BY Employee_ID HAVING COUNT(*) > 1;

-- Nulls
SELECT * FROM PortfolioProject..Employee WHERE Exit_Date IS NULL OR Employee_ID IS NULL;


--Validating Dates
SELECT * FROM PortfolioProject..Employee WHERE Start_Date > GETDATE(); 
SELECT * FROM PortfolioProject..Employee WHERE Start_Date < '1900-01-01'; 
SELECT * FROM PortfolioProject..Employee WHERE Exit_Date IS NOT NULL AND Exit_Date < Start_Date;


-- Ensuring Referential Integrity

-- Unlinked IDs
SELECT ees.Employee_ID FROM PortfolioProject..Employee_Engagement_Survey ees
LEFT JOIN PortfolioProject..Employee e ON ees.Employee_ID = e.Employee_ID
WHERE e.Employee_ID IS NULL;


-- Keys & Constraints

-- Add PKs and FKs
ALTER TABLE PortfolioProject..Employee ADD CONSTRAINT PK_Employee PRIMARY KEY (Employee_ID);
ALTER TABLE PortfolioProject..Employee_Engagement_Survey
ADD CONSTRAINT FK_Engagement_Employee FOREIGN KEY (Employee_ID) REFERENCES PortfolioProject..Employee(Employee_ID);


-- Derived Columns and Indexes

-- Full Name
ALTER TABLE PortfolioProject..Employee ADD Full_Name VARCHAR(255);
UPDATE PortfolioProject..Employee SET Full_Name = First_Name + ' ' + Last_Name;

-- Index
CREATE INDEX idx_EmployeeID ON PortfolioProject..Employee(Employee_ID);


SELECT DISTINCT Dept_Type
FROM PortfolioProject..Employee
;


-- DATA ANALYSIS

-- EMPLOYEE PRODUCTIVITY ANALYSIS SQL SCRIPT
-- Goal: Improve Workforce Productivity

-- 1. Identify high-performing employees (based on 'Exceeds' Performance_Score)
SELECT Employee_ID, Full_Name, Performance_Score, Current_Employee_Rating
FROM PortfolioProject..Employee
WHERE Performance_Score = 'Exceeds' AND Current_Employee_Rating = 5
ORDER BY Current_Employee_Rating DESC;


-- 2. Compare average performance by department
SELECT Dept_Type, ROUND(AVG(CAST(Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Employee
GROUP BY Dept_Type
ORDER BY Avg_Rating DESC;

-- 3. Compare performance by job title
SELECT Title, ROUND(AVG(CAST(Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Employee
GROUP BY Title
ORDER BY Avg_Rating DESC;

-- 4. Relationship between training and employee rating
SELECT e.Employee_ID, e.Full_Name, COUNT(td.Training_Program) AS Training_Count, e.Current_Employee_Rating
FROM PortfolioProject..Employee e
LEFT JOIN PortfolioProject..Training_Development td ON e.Employee_ID = td.Employee_ID
GROUP BY e.Employee_ID, e.Full_Name, e.Current_Employee_Rating
ORDER BY e.Current_Employee_Rating DESC;

-- 5. Impact of training outcome on performance
SELECT td.Training_Outcome, ROUND(AVG(CAST(e.Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Employee e
JOIN PortfolioProject..Training_Development td ON e.Employee_ID = td.Employee_ID
GROUP BY td.Training_Outcome
ORDER BY Avg_Rating DESC;

-- 6. Impact of training type on productivity
SELECT td.Training_Type, ROUND(AVG(CAST(e.Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Training_Development td
JOIN PortfolioProject..Employee e ON td.Employee_ID = e.Employee_ID
GROUP BY td.Training_Type
ORDER BY Avg_Rating DESC;

-- 7. Most common training programs among high performers
SELECT td.Training_Program, COUNT(*) AS Frequency
FROM PortfolioProject..Training_Development td
JOIN PortfolioProject..Employee e ON td.Employee_ID = e.Employee_ID
WHERE e.Performance_Score = 'Exceeds'
GROUP BY td.Training_Program
ORDER BY Frequency DESC;

-- 8. Cost-effectiveness of training programs
SELECT td.Training_Program, ROUND(AVG(td.Training_Cost),2) AS Avg_Cost, ROUND(AVG(CAST(e.Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Training_Development td
JOIN PortfolioProject..Employee e ON td.Employee_ID = e.Employee_ID
GROUP BY td.Training_Program
ORDER BY Avg_Rating DESC;

-- 9. Performance based on years of experience (approximate using Start Date)
SELECT DATEDIFF(YEAR, Start_Date, GETDATE()) AS Years_Experience, ROUND(AVG(CAST(Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Employee
GROUP BY DATEDIFF(YEAR, Start_Date, GETDATE())
ORDER BY Years_Experience;

-- 10. Work-life balance and employee rating
SELECT ees.Work_Life_Balance_Score, ROUND(AVG(CAST(e.Current_Employee_Rating AS FLOAT)),2) AS Avg_Rating
FROM PortfolioProject..Employee_Engagement_Survey ees
JOIN PortfolioProject..Employee e ON ees.Employee_ID = e.Employee_ID
GROUP BY ees.Work_Life_Balance_Score
ORDER BY Work_Life_Balance_Score DESC;



