-- select query_name, round(sum(rating / position) / count(query_name), 2) as quality,
-- round(
--     (
--         select count(*)
--         from Queries sub
--         where sub.query_name = q.query_name and sub.rating < 3
--     ) / count(q.rating) * 100, 2
-- ) as poor_query_percentage
-- from Queries q
-- where query_name is not null
-- group by q.query_name


SELECT 
    query_name, 
    ROUND(SUM(rating / position) / COUNT(query_name), 2) AS quality,
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(rating) * 100, 2) AS poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name;