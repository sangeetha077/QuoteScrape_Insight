CREATE DATABASE MasaiProject;
USE MasaiProject;

Select * from quotes_cleaned;

--  SQL Queries for Insights
--  Find the number of quotes by each author
SELECT 
    author, COUNT(*) AS quote_count
FROM
    quotes_cleaned
GROUP BY author
ORDER BY quote_count DESC;

-- --------------------------------------------------------------------------------------------------------------------

-- Q2 : List the top 5 most common tags

SELECT 
    tag_name, COUNT(*) AS tag_count
FROM
    quotes
GROUP BY tag_name
ORDER BY tag_count DESC
LIMIT 5;

-- --------------------------------------------------------------------------------------------------------------------

-- Q3 : Find authors who have more than 5 quotes

SELECT 
    author, COUNT(*) AS quote_count
FROM
    quotes_cleaned
GROUP BY author
HAVING COUNT(*) > 5;

-- --------------------------------------------------------------------------------------------------------------------

-- Q4 : Retrieve the longest quote and its author

SELECT 
    author, quote, LENGTH(quote) AS quote_length
FROM
    quotes_cleaned
ORDER BY quote_length DESC
LIMIT 1;

 
