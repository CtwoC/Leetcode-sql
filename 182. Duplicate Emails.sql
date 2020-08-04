-- 182. Duplicate Emails
-- Easy

-- 463

-- 25

-- Add to List

-- Share
-- SQL Schema
-- Write a SQL query to find all duplicate emails in a table named Person.

-- +----+---------+
-- | Id | Email   |
-- +----+---------+
-- | 1  | a@b.com |
-- | 2  | c@d.com |
-- | 3  | a@b.com |
-- +----+---------+
-- For example, your query should return the following for the above table:

-- +---------+
-- | Email   |
-- +---------+
-- | a@b.com |
-- +---------+

# Write your MySQL query statement below
SELECT a.Email
FROM 
Person as a,
Person as b
WHERE a.Email = b.Email
AND a.Id > b.Id