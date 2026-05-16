-- Customer Churn Intelligence: SQL Business Analysis
-- Dataset: Telco Customer Churn
-- Purpose: KPI analysis, churn driver analysis, and high-risk customer identification

-- 1. Total customers
SELECT 
    COUNT(DISTINCT customerID) AS total_customers
FROM customer_churn;

-- 2. Overall churn rate
SELECT 
    ROUND(AVG(Churn_Flag) * 100, 2) AS churn_rate_percentage
FROM customer_churn;

-- 3. Churn by contract type
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(Churn_Flag) AS churned_customers,
    ROUND(AVG(Churn_Flag) * 100, 2) AS churn_rate_percentage
FROM customer_churn
GROUP BY Contract
ORDER BY churn_rate_percentage DESC;

-- 4. Churn by payment method
SELECT 
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(Churn_Flag) AS churned_customers,
    ROUND(AVG(Churn_Flag) * 100, 2) AS churn_rate_percentage
FROM customer_churn
GROUP BY PaymentMethod
ORDER BY churn_rate_percentage DESC;

-- 5. Churn by tenure group
SELECT 
    Tenure_Group,
    COUNT(*) AS total_customers,
    SUM(Churn_Flag) AS churned_customers,
    ROUND(AVG(Churn_Flag) * 100, 2) AS churn_rate_percentage
FROM customer_churn
GROUP BY Tenure_Group
ORDER BY churn_rate_percentage DESC;

-- 6. Revenue at risk by contract type
SELECT 
    Contract,
    ROUND(SUM(MonthlyCharges), 2) AS total_monthly_revenue,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN MonthlyCharges ELSE 0 END), 2) AS revenue_at_risk
FROM customer_churn
GROUP BY Contract
ORDER BY revenue_at_risk DESC;

-- 7. High-risk customers based on churn probability
SELECT 
    customerID,
    Contract,
    tenure,
    MonthlyCharges,
    PaymentMethod,
    Churn_Probability,
    Risk_Level
FROM customer_churn
WHERE Risk_Level = 'High Risk'
ORDER BY Churn_Probability DESC
LIMIT 20;