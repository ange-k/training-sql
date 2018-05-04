-- 基本

select * from task;
select * from status;
select * from user;

select status_id, content from task;

select status_id as 'ステータス', content from task;

-- 思い通りにならない
select status.status as 'ステータス', content from task, status;

select status.status as 'ステータス', content from task, status WHERE task.status_id = status.id;