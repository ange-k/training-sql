-- ちょっと応用

select *
from task, status, user
WHERE task.user_id = user.id 
AND task.status_id = status.id;


-- 結合(https://qiita.com/Yinaura/items/3ab6fc49ae55f52e2d55)

select * from task
JOIN user
ON task.user_id=user.id
JOIN status
ON task.status_id=status.id;


select * from task
JOIN user
ON task.user_id=user.id
JOIN status
ON task.status_id=status.id
WHERE task.user_id = 1;

select * from task
JOIN user
ON task.user_id=user.id
JOIN status
ON task.status_id=status.id
WHERE status.status = 'todo';