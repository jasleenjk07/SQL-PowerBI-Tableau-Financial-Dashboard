-- View 1
CREATE VIEW vw_default_distribution AS
SELECT
    Status,
    COUNT(*) AS Customers
FROM loan_data
GROUP BY Status;

-- View 2
CREATE VIEW vw_gender_analysis AS
SELECT
    Gender,
    COUNT(*) AS Customers,
    SUM(Status) AS Defaults
FROM loan_data
GROUP BY Gender;

-- View 3
CREATE VIEW vw_age_analysis AS
SELECT
    age,
    COUNT(*) AS Customers,
    SUM(Status) AS Defaults
FROM loan_data
GROUP BY age;

-- View 4
CREATE VIEW vw_creditscore_analysis AS
SELECT
    CreditScoreGroup,
    COUNT(*) AS Customers,
    SUM(Status) AS Defaults
FROM loan_data
GROUP BY CreditScoreGroup;

-- View 5
CREATE VIEW vw_loanpurpose_analysis AS
SELECT
    loan_purpose,
    COUNT(*) AS Customers,
    SUM(Status) AS Defaults
FROM loan_data
GROUP BY loan_purpose;