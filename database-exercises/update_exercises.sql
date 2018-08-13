USE codeup_test_db;


UPDATE albums set sales = (sales*10);
SELECT * from albums;


UPDATE albums set release_date = release_date - 100
WHERE release_date<1980;
SELECT * from albums WHERE release_date<1980;



UPDATE albums
set artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * from albums;
