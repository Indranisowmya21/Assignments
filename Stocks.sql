-- create a table
CREATE TABLE stockstable (
  stock_name text,
  operation TEXT NOT NULL,
  operation_day integer NOT NULL,
  price int
);
-- insert some values
INSERT INTO stockstable VALUES ('Leetcode','Buy','1','1000');
INSERT INTO stockstable VALUES ('Corona','Masks','Buy','2','10');
INSERT INTO stockstable VALUES ('Leetcode','Sell','17','9000');
INSERT INTO stockstable VALUES ('Handbags','Buy','17','30000');
INSERT INTO stockstable VALUES ('Corona Masks','Sell','3','1010');
INSERT INTO stockstable VALUES ('Corona Masks','Buy','4','1000');
INSERT INTO stockstable VALUES ('Corona Masks','Sell','5','500');
INSERT INTO stockstable VALUES ('Corona Masks','Buy','6','1000');
INSERT INTO stockstable VALUES ('Handbags','Sell','29','7000');
INSERT INTO stockstable VALUES ('Corona Masks','Sell','10','10000');
select * from stockstable; select distinct stock_name,
sum(if(operation='Sell',price,0))-sum(if(operation='Buy',price,0)) as capital_gain_loss 
from stocks
group by stock_name


