-- There is a table courses with columns: student and class

-- Please list out all classes which have more than or equal to 5 students.

-- For example, the table:

-- +---------+------------+
-- | student | class      |
-- +---------+------------+
-- | A       | Math       |
-- | B       | English    |
-- | C       | Math       |
-- | D       | Biology    |
-- | E       | Math       |
-- | F       | Computer   |
-- | G       | Math       |
-- | H       | Math       |
-- | I       | Math       |
-- +---------+------------+
-- Should output:

-- +---------+
-- | class   |
-- +---------+
-- | Math    |
-- +---------+

# Write your MySQL query statement below
SELECT class 
FROM(
SELECT class, count(DISTINCT student) AS num
FROM courses
GROUP BY class
) AS temp_table
WHERE num>=5

#TIP: THE USE OF COUNT, GROUP BY; USE AS