SELECT user_id, COUNT(id)
FROM requests GROUP BY user_id
HAVING COUNT (id)=(
    SELECT MAX(tmp.cnt)
    FROM (
             SELECT COUNT(id) cnt
             FROM requests
             GROUP BY user_id)
             tmp
);

SELECT user_id, COUNT(id)
FROM requests GROUP BY user_id
order by count(id) desc;

insert into requests (id, user_id)
values (1, 232),
       (2, 232),
       (3, 234),
       (4,232),
       (5, 222);
