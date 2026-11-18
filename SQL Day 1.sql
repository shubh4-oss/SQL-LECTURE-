--The case of ITC for investing the data base and creating the tables-

CREATE TABLE distributors(
  distributor_id INTEGER PRIMARY KEY,
  name           TEXT NOT NULL,
  city           TEXT,
  region         TEXT,
  phone          TEXT
);

--DROPPING THE TABLE -
DROP TABLE distributors;

-- create another table name products --
-- create another table name products with following details product name, product_id, brand, category, price and stock--
CREATE TABLE products(
  product_name  TEXT,
  product_id    INTEGER PRIMARY KEY,
  brand         TEXT,
  category      TEXT NOT NULL,
  price         REAL CHECK (price > 0),
  stock         INTEGER DEFAULT 0
);  
  
-- CREATE A TABLE NAME  SALES CONTAINING VARIABLES, SALES ID, PRODUCT ID, DISTRIBUTOR ID , SALE DATE, QUANTITY, AMOUNT--
CREATE TABLE sales (
  sales_id     INTEGER PRIMARY KEY,
  product_id   INTEGER,
  distributor_id INTEGER,
  sale_date      TEXT,
  quantity       INTEGER CHECK (quantity>0),
  amount         REAL,
  FOREigN KEY (product_id) REFERENCES products(product_id),
  FOREigN KEY (distributor_id) REFERENCES distributors(distributor_id)
  
 );
 
 
 
  