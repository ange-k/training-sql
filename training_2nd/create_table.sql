-- init
drop table sale;
drop table product;
drop table user;
drop table category;

create table user ( 
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(20) NOT NULL
);

create table category (
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) UNIQUE NOT NULL
);

create table product (
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) UNIQUE NOT NULL,
    category_id int NOT NULL,
    FOREIGN KEY (category_id)
        REFERENCES category(id)
        ON DELETE CASCADE,    
    price int NOT NULL,
    stock int NOT NULL,
    change_user_id int NOT NULL,
    FOREIGN KEY (change_user_id)
        REFERENCES user(id)
        ON DELETE CASCADE,
    update_at timestamp NOT NULL
);

create table sale (
    product_id int,
    FOREIGN KEY (product_id)
        REFERENCES product(id)
        ON DELETE CASCADE,
    price int,
    year int,
    month int,
    week int,
    count_item int NOT NULL,
    PRIMARY KEY(product_id, price, year, month, week)
);
