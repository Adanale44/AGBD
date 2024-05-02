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

