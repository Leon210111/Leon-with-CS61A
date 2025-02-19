.read data.sql


CREATE TABLE average_prices AS
  SELECT category,avg(MSRP) as 'average_price' FROM products group by category;


CREATE TABLE lowest_prices AS
  SELECT store,item,min(price) FROM inventory GROUP BY item;

CREATE TABLE shopping_list_help as 
SELECT name as item,min(MSRP/rating) FROM products GROUP BY category;

CREATE TABLE shopping_list AS
  SELECT h.item,l.store FROM shopping_list_help as h,lowest_prices as l WHERE h.item=l.item;


CREATE TABLE total_bandwidth AS
  SELECT sum(s.Mbs) FROM stores as s,shopping_list as l WHERE s.store=l.store;

