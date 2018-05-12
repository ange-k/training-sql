DROP VIEW v_product;

CREATE VIEW v_product AS
SELECT user.name as "ユーザ", product.name as "商品名", sale.price as "値段",
       category.name as "カテゴリ", sum(sale.price * sale.count_item) as 'total'
FROM product 
JOIN sale ON product.id=sale.product_id
JOIN user ON product.change_user_id=user.id
JOIN category ON product.category_id=category.id
GROUP BY sale.product_id;

SELECT * FROM v_product;