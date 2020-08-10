-- Table: Department

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | revenue       | int     |
-- | month         | varchar |
-- +---------------+---------+
-- (id, month) is the primary key of this table.
-- The table has information about the revenue of each department per month.
-- The month has values in ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].
--  

-- Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.

-- The query result format is in the following example:

-- Department table:
-- +------+---------+-------+
-- | id   | revenue | month |
-- +------+---------+-------+
-- | 1    | 8000    | Jan   |
-- | 2    | 9000    | Jan   |
-- | 3    | 10000   | Feb   |
-- | 1    | 7000    | Feb   |
-- | 1    | 6000    | Mar   |
-- +------+---------+-------+

-- Result table:
-- +------+-------------+-------------+-------------+-----+-------------+
-- | id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
-- +------+-------------+-------------+-------------+-----+-------------+
-- | 1    | 8000        | 7000        | 6000        | ... | null        |
-- | 2    | 9000        | null        | null        | ... | null        |
-- | 3    | null        | 10000       | null        | ... | null        |
-- +------+-------------+-------------+-------------+-----+-------------+

-- Note that the result table has 13 columns (1 for the department id + 12 for the months).

# Write your MySQL query statement below
SELECT id,
MIN(CASE WHEN month = 'Jan' THEN revenue END) as Jan_Revenue,
MIN(CASE WHEN month = 'Feb' THEN revenue END) as Feb_Revenue,
MIN(CASE WHEN month = 'Mar' THEN revenue END) as Mar_Revenue,
MIN(CASE WHEN month = 'Apr' THEN revenue END) as Apr_Revenue,
MIN(CASE WHEN month = 'May' THEN revenue END) as May_Revenue,
MIN(CASE WHEN month = 'Jun' THEN revenue END) as Jun_Revenue,
MIN(CASE WHEN month = 'Jul' THEN revenue END) as Jul_Revenue,
MIN(CASE WHEN month = 'Aug' THEN revenue END) as Aug_Revenue,
MIN(CASE WHEN month = 'Sep' THEN revenue END) as Sep_Revenue,
MIN(CASE WHEN month = 'Oct' THEN revenue END) as Oct_Revenue,
MIN(CASE WHEN month = 'Nov' THEN revenue END) as Nov_Revenue,
min(case when month = 'Dec' then Revenue end) as Dec_Revenue
FROM Department
GROUP BY id

#HOW TO PIVOT: THE USE OF CASE WHEN xxx THEN xxx ELSE XXX END