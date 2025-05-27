-- DATA EXPLORATION

-- Preview top 10 rows from each table
SELECT TOP 10 * FROM PortfolioProject..Employee;
SELECT TOP 10 * FROM PortfolioProject..Employee_Engagement_Survey;
SELECT TOP 10 * FROM PortfolioProject..Training_Development;
SELECT TOP 10 * FROM PortfolioProject..Recruitment;

-- Check for duplicate Employee_IDs
SELECT Employee_ID, COUNT(*)
FROM PortfolioProject..Employee
GROUP BY Employee_ID
HAVING COUNT(*) > 1;

-- Check for duplicate Employee_IDs in other tables
SELECT Employee_ID, COUNT(*) 
FROM PortfolioProject..Employee_Engagement_Survey 
GROUP BY Employee_ID 
HAVING COUNT(*) > 1;

SELECT Employee_ID, COUNT(*) 
FROM PortfolioProject..Training_Development 
GROUP BY Employee_ID 
HAVING COUNT(*) > 1;

-- Check for duplicate Applicant_IDs in Recruitment
SELECT Applicant_ID, COUNT(*) 
FROM PortfolioProject..Recruitment 
GROUP BY Applicant_ID 
HAVING COUNT(*) > 1;

-- Find missing values
SELECT * FROM PortfolioProject..Employee WHERE Exit_Date IS NULL OR Exit_Date = '';
SELECT * FROM PortfolioProject..Employee WHERE Employee_ID IS NULL;
SELECT * FROM PortfolioProject..Recruitment WHERE Applicant_ID IS NULL;

-- Find invalid date values
SELECT * FROM PortfolioProject..Employee WHERE Start_Date > GETDATE(); -- Future Start Dates
SELECT * FROM PortfolioProject..Employee WHERE Start_Date < '1900-01-01'; -- Suspiciously old Start Dates
SELECT * FROM PortfolioProject..Employee WHERE Exit_Date IS NOT NULL AND Exit_Date < Start_Date; -- Exit Date before Start Date

-- Ensure referential integrity before adding constraints
SELECT ees.Employee_ID FROM PortfolioProject..Employee_Engagement_Survey ees
LEFT JOIN PortfolioProject..Employee e ON ees.Employee_ID = e.Employee_ID
WHERE e.Employee_ID IS NULL;

SELECT td.Employee_ID FROM PortfolioProject..Training_Development td
LEFT JOIN PortfolioProject..Employee e ON td.Employee_ID = e.Employee_ID
WHERE e.Employee_ID IS NULL;

-- Modify table structures
ALTER TABLE PortfolioProject..Employee ALTER COLUMN Employee_ID INT NOT NULL;
ALTER TABLE PortfolioProject..Employee_Engagement_Survey ALTER COLUMN Employee_ID INT NOT NULL;
ALTER TABLE PortfolioProject..Training_Development ALTER COLUMN Employee_ID INT NOT NULL;
ALTER TABLE PortfolioProject..Recruitment ALTER COLUMN Applicant_ID INT NOT NULL;

-- Add primary keys
ALTER TABLE PortfolioProject..Employee ADD CONSTRAINT PK_Employee PRIMARY KEY (Employee_ID);
ALTER TABLE PortfolioProject..Employee_Engagement_Survey ADD CONSTRAINT PK_Employee_Engagement_Survey PRIMARY KEY (Employee_ID);
ALTER TABLE PortfolioProject..Training_Development ADD CONSTRAINT PK_Training_Development PRIMARY KEY (Employee_ID);
ALTER TABLE PortfolioProject..Recruitment ADD CONSTRAINT PK_Recruitment PRIMARY KEY (Applicant_ID);

-- Add foreign key constraints
ALTER TABLE PortfolioProject..Employee_Engagement_Survey
ADD CONSTRAINT FK_Engagement_Employee FOREIGN KEY (Employee_ID) REFERENCES PortfolioProject..Employee(Employee_ID);

ALTER TABLE PortfolioProject..Training_Development
ADD CONSTRAINT FK_Training_Employee FOREIGN KEY (Employee_ID) REFERENCES PortfolioProject..Employee(Employee_ID);

-- Add Full_Name column where needed
ALTER TABLE PortfolioProject..Employee ADD Full_Name VARCHAR(255);
ALTER TABLE PortfolioProject..Recruitment ADD Full_Name VARCHAR(255);

-- Populate Full_Name column
UPDATE PortfolioProject..Employee SET Full_Name = First_Name + ' ' + Last_Name;
UPDATE PortfolioProject..Recruitment SET Full_Name = First_Name + ' ' + Last_Name;

-- Create indexes for performance optimization
CREATE INDEX idx_EmployeeID ON PortfolioProject..Employee(Employee_ID);
CREATE INDEX idx_ApplicantID ON PortfolioProject..Recruitment(Applicant_ID);

