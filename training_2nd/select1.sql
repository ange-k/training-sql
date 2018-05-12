select sale.year, sum(sale.price * sale.count_item) as 'total'
from sale
group by sale.year;

-- group_by なし
select product.name, sum(sale.price * sale.count_item) as 'total'
from sale join product on sale.product_id=product.id;

-- group_by あり
select product.name, sum(sale.price * sale.count_item) as 'total'
from sale join product on sale.product_id=product.id
group by sale.product_id;

select product.name, sum(sale.price * sale.count_item) as 'total', sale.year, sale.month
from sale join product on sale.product_id=product.id
group by sale.product_id, sale.year, sale.month
order by sale.year DESC, sale.month DESC;