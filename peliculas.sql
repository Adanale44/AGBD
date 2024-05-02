--1
SELECT title from film
order by title ASC

---2
SELECT DISTINCT rating from film
ORDER by rating asc

----3
SELECT rental_rate, title from film 
where rating = "PG-13" or "PG"
order by rental_rate DESC, TITLE ASC

-----4
SELECT c.city, p.country FROM country p
join city c on p.country_id = c.country_id
ORDER by country ASC

------5
SELECT count(*) as cant_city, p.country FROM country p
join city c on p.country_id = c.country_id
GROUP by p.country_id
ORDER by cant_city DESC

-------6
SELECT count(*) as cant_city, p.country FROM country p
join city c on p.country_id = c.country_id
GROUP by p.country_id
ORDER by cant_city DESC
HAVING cant_city = 2