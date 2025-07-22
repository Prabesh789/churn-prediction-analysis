-- View for Churned and Stayed customers
CREATE OR REPLACE VIEW vw_churndata AS
SELECT * FROM prod_churn
WHERE "Customer_Status" IN ('Churned', 'Stayed');

-- View for Joined customers
CREATE OR REPLACE VIEW vw_joindata AS
SELECT * FROM prod_churn
WHERE "Customer_Status" = 'Joined';


-- Create filtered views from prod_churn for:
-- - vw_churndata: Customers who Churned or Stayed
-- - vw_joindata: Customers who recently Joined
-- Used for analysis, modeling, and dashboard filters
