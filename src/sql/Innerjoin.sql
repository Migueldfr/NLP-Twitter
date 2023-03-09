SELECT DISTINCT
    strftime('%m' , date) as month, 
    strftime('%Y', date) as year,
    t.id_user,
    t.tweets,
    u.username
FROM tweets as t
INNER JOIN usuarios as u on u.id_user = t.id_user;
