SELECT name, Composer, Milliseconds FROM tracks

SELECT FirstName,LastName,Address,City from customers

SELECT name,Milliseconds from tracks
where Composer is null and Milliseconds > 2900000

SELECT LastName,FirstName,Company from customers
where Company is not null 

SELECT DISTINCT BillingCity from invoices 
where BillingState is NULL
order by BillingState asc

SELECT DISTINCT Title from albums
where Title like "%of%"
order by Title asc

SELECT t.name, g.name from tracks t
join genres g on t.GenreId = g.GenreId

SELECT T.name from tracks T
join albums a on t.AlbumId = a.AlbumId
ORDER by Title desc