SELECT 
    strftime('%m' , date) as month, 
    strftime('%Y', date) as year,
    COUNT(t.id_user) as count,
    u.username
FROM tweets as t
INNER JOIN usuarios as u on u.id_user = t.id_user
GROUP BY month, year, u.username
HAVING count> 5
ORDER BY count DESC, month Desc
