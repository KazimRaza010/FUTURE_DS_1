CREATE DATABASE Retail_merged_data;
USE Retail_merged_data;
CREATE TABLE retail_data AS
SELECT *
FROM retail_2009_2010.retail_data
UNION ALL
SELECT *
FROM retail_2010_2011.retail_data;


