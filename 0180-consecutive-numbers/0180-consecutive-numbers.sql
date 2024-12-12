# Write your MySQL query statement below
SELECT DISTINCT num AS ConsecutiveNums
FROM (SELECT num
           , lag(num, 1) Over (ORDER BY Id) As 'lag'
           , lag(num, 2) Over (ORDER BY id) AS 'lag2'
      FROM Logs) result
WHERE result.num = result.lag AND result.lag2 = result.lag;