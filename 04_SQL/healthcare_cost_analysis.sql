-- =====================================================
-- Healthcare Cost Drivers Analysis
-- =====================================================

-- Use database
USE insurance;

-- -----------------------------------------------------
-- 1. Row count validation
-- -----------------------------------------------------
SELECT COUNT(*) AS total_records
FROM healthcare_cleaned;

-- -----------------------------------------------------
-- 2. Average healthcare cost by smoking status
-- -----------------------------------------------------
SELECT
    smoker,
    ROUND(AVG(charges), 2) AS avg_healthcare_cost
FROM healthcare_cleaned
GROUP BY smoker;

-- -----------------------------------------------------
-- 3. Average healthcare cost by BMI category
-- -----------------------------------------------------
SELECT
    bmi_category,
    ROUND(AVG(charges), 2) AS avg_healthcare_cost
FROM healthcare_cleaned
GROUP BY bmi_category;

-- -----------------------------------------------------
-- 4. Average healthcare cost by age group
-- -----------------------------------------------------
SELECT
    age_group,
    ROUND(AVG(charges), 2) AS avg_healthcare_cost
FROM healthcare_cleaned
GROUP BY age_group;
