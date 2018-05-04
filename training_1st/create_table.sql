-- init
drop table task;
drop table user;
drop table status;

-- idをインクリメントする
create table user ( 
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(20) NOT NULL
);

-- statusはユニークな項目である
create table status (
    id int PRIMARY KEY AUTO_INCREMENT,
    status VARCHAR(100) UNIQUE NOT NULL
);

-- taskは、userとstatusに関連する外部キーを持つ
create table task (
    id int PRIMARY KEY AUTO_INCREMENT,
    user_id int NOT NULL,
    status_id int NOT NULL,
    FOREIGN KEY (user_id)
        REFERENCES user(id)
        ON DELETE CASCADE,
    FOREIGN KEY (status_id)
        REFERENCES status(id)
        ON DELETE CASCADE,
    content VARCHAR(255) NOT NULL,
    INDEX idx_user (user_id),
    INDEX idx_status (status_id)
);
