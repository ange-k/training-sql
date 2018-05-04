insert into user (
    name,
    email,
    password
) values 
('taro', 'taro@example.com', 'pass_taro'),
('jiro', 'jiro@example.com', 'pass_jiro');

insert into category (
    name
) values
('food'), ('alcohol');

insert into product (
    name,
    category_id,
    price,
    stock,
    change_user_id
) values
('牛乳', 1, 120, 100, 1),
('牛肉', 1, 220, 40, 1),
('ビール', 2, 400, 30, 2);

insert into sale (
    product_id,
    price,
    year,
    month,
    week,
    count_item
) values
(1, 120, 2017, 11, 1, 20),
(2, 220, 2017, 12, 1, 30),
(1, 125, 2018,  4, 1, 25),
(2, 225, 2018,  4, 2, 25),
(3, 400, 2018,  5, 3, 40);
