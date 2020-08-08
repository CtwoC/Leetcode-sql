-- Table point holds the x coordinate of some points on x-axis in a plane, which are all integers.
--  

-- Write a query to find the shortest distance between two points in these points.
--  

-- | x   |
-- |-----|
-- | -1  |
-- | 0   |
-- | 2   |
--  

-- The shortest distance is '1' obviously, which is from point '-1' to '0'. So the output is as below:
--  

-- | shortest|
-- |---------|
-- | 1       |
--  

-- Note: Every point is unique, which means there is no duplicates in table point.
--  
# Write your MySQL query statement below
SELECT MIN(abs(a.x-b.x)) AS shortest
FROM point a 
JOIN point b
WHERE a.x != b.x

#MIN