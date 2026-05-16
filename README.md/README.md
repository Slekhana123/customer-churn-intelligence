\# Customer Churn Intelligence: Predicting Customer Loss and Improving Retention Strategy



\## Project Overview



This project analyses customer churn for a telecom company using data science and business analytics techniques. The goal is to identify churn patterns, predict customers at risk of leaving, and recommend data-driven retention strategies to improve customer retention.



Customer churn is an important business problem because losing customers directly affects revenue, customer lifetime value, and long-term business growth.



\## Business Problem



Subscription-based companies often lose customers due to pricing, contract flexibility, service experience, payment methods, or lack of engagement. By understanding which customers are more likely to churn, businesses can take proactive actions before customers leave.



This project focuses on answering the following business questions:



\- What is the overall churn rate?

\- Which customer groups have the highest churn risk?

\- How does contract type affect churn?

\- Does tenure influence customer retention?

\- Which payment methods are linked with higher churn?

\- Can machine learning help identify high-risk customers?

\- What retention actions should the business take?



\## Dataset



The project uses the Telco Customer Churn dataset. The dataset contains customer demographic, account, service, billing, contract, and churn-related information.



Key columns include:



\- customerID

\- gender

\- SeniorCitizen

\- tenure

\- Contract

\- PaymentMethod

\- MonthlyCharges

\- TotalCharges

\- Churn



The target variable is `Churn`, which indicates whether a customer left the company.



\## Tools and Technologies



\- Python

\- Pandas

\- NumPy

\- Matplotlib

\- Scikit-learn

\- SQL

\- Power BI

\- Excel

\- GitHub



\## Project Methodology



The project followed a structured analytics workflow:



1\. Data understanding

2\. Data cleaning

3\. Feature engineering

4\. Exploratory data analysis

5\. Business KPI analysis

6\. SQL analysis

7\. Predictive modelling

8\. Power BI dashboard development

9\. Business recommendations



\## Data Cleaning and Feature Engineering



The dataset was cleaned and prepared for analysis. The `TotalCharges` column was converted from text to numeric format. Missing values were handled using median imputation.



New features were created:



\- `Churn\_Flag`: Converts churn into 1 and 0

\- `Tenure\_Group`: Groups customers based on tenure

\- `Monthly\_Charge\_Group`: Groups customers based on monthly charges

\- `Churn\_Probability`: Predicted churn probability from the model

\- `Risk\_Level`: Low, Medium, or High churn risk



\## Key Business KPIs



The analysis identified the following key metrics:



\- Total Customers: 7,043

\- Churned Customers: 1,869

\- Churn Rate: 26.54%

\- Monthly Revenue: 456.12K

\- Revenue at Risk: 139.13K



\## Exploratory Data Analysis



The analysis showed that churn is strongly linked with contract type, tenure, payment method, and monthly charges.



Key findings:



\- Month-to-month customers had the highest churn rate.

\- Customers in the first 12 months had the highest churn risk.

\- Electronic check users showed higher churn compared to other payment methods.

\- High monthly charge customers were more likely to churn.

\- Fiber optic customers showed higher churn compared to DSL and no internet service groups.



\## Machine Learning Model



Two machine learning models were tested:



\- Logistic Regression

\- Random Forest



The models were evaluated using:



\- Accuracy

\- Precision

\- Recall

\- F1-score



Logistic Regression performed better overall and was selected as the final model.



Model comparison:



| Model | Accuracy | Precision | Recall | F1 Score |

|---|---:|---:|---:|---:|

| Logistic Regression | 0.7991 | 0.6522 | 0.5214 | 0.5795 |

| Random Forest | 0.7842 | 0.6215 | 0.4786 | 0.5408 |



For churn prediction, recall is important because the business wants to identify customers who are likely to leave before they actually churn.



\## Power BI Dashboard



The Power BI dashboard contains three pages:



\### 1. Executive Overview



This page shows the overall churn situation using KPI cards and visual summaries.



Includes:



\- Total customers

\- Churned customers

\- Churn rate

\- Monthly revenue

\- Revenue at risk

\- Churn rate by contract type

\- Revenue at risk by contract type

\- Churn distribution



\### 2. Churn Driver Analysis



This page identifies the main factors linked with churn.



Includes:



\- Churn rate by tenure group

\- Churn rate by payment method

\- Churn rate by internet service

\- Churn rate by monthly charge group



\### 3. Retention Strategy



This page supports business action by identifying high-risk customers and recommended retention strategies.



Includes:



\- Customers by churn risk level

\- Monthly revenue by churn risk level

\- High-risk customer table

\- Recommended retention actions



\## Dashboard Screenshots



\### Executive Overview



!\[Executive Overview](images/dashboard\_executive\_overview.png)



\### Churn Driver Analysis



!\[Churn Driver Analysis](images/dashboard\_churn\_driver\_analysis.png)



\### Retention Strategy



!\[Retention Strategy](images/dashboard\_retention\_strategy.png)



\## SQL Analysis



SQL was used to extract important business insights such as total customers, churn rate, churn by contract type, churn by payment method, revenue at risk, and high-risk customer identification.



Example SQL analysis included:



\- Total customers

\- Overall churn rate

\- Churn by contract type

\- Churn by payment method

\- Churn by tenure group

\- Revenue at risk by contract type

\- High-risk customer list



\## Business Recommendations



Based on the analysis, the following actions are recommended:



1\. Offer yearly contract discounts to month-to-month customers.

2\. Improve onboarding support for customers in their first 12 months.

3\. Provide personalised offers to high monthly charge customers.

4\. Encourage electronic check users to move to automatic payment.

5\. Prioritise high-risk customers for proactive retention calls.



\## Project Outcome



This project demonstrates how data science and business analytics can be used together to understand customer churn, predict customer risk, and support practical business decision-making.



The project showcases skills in data cleaning, exploratory analysis, SQL, predictive modelling, dashboard development, and business storytelling.



\## Future Improvements



Future improvements could include:



\- Testing additional machine learning models

\- Adding hyperparameter tuning

\- Building a live dashboard using updated customer data

\- Creating automated customer risk alerts

\- Adding customer lifetime value analysis

