insert into user (
    name,
    email,
    password
) values 
('taro', 'taro@example.com', 'pass_taro'),
('jiro', 'jiro@example.com', 'pass_jiro'),
('sabro', 'sabro@example.com', 'pass_sabro');

insert into status (
    status
) values
('todo'),
('review'),
('done');

insert into task (
    user_id,
    content,
    status_id
) values
(1, 'issue-1000', 1),
(1, 'issue-1001', 2),
(2, 'issue-1002', 1),
(3, 'issue-1003', 3);