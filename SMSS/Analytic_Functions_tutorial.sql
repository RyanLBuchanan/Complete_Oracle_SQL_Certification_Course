CREATE TABLE bricks (
	brick_id INTEGER,
	color	 VARCHAR(10),
	shape	 VARCHAR(10), 
	weight	 INTEGER
);


insert into bricks values ( 1, 'blue', 'cube', 1 );
insert into bricks values ( 2, 'blue', 'pyramid', 2 );
insert into bricks values ( 3, 'red', 'cube', 1 );
insert into bricks values ( 4, 'red', 'cube', 2 );
insert into bricks values ( 5, 'red', 'pyramid', 3 );
insert into bricks values ( 6, 'green', 'pyramid', 1 );

commit;

SELECT * FROM bricks;

SELECT b.*,
(SELECT COUNT(*) FROM bricks) total_bricks_in_table
FROM bricks b;

SELECT b.*,
(SELECT COUNT(*) FROM bricks where color = b.color) total_bricks_by_color
FROM bricks b;

SELECT b.*,
(SELECT SUM(weight) FROM bricks where color = b.color) total_weight_by_color
FROM bricks b;

SELECT b.*,
(SELECT sum(weight) from bricks where shape = b.shape) total_weight_by_shape
FROM bricks b;