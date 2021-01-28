MySQL
Необходимо написать следующие SQL запросы
1.	Необходимо отобразить названия жанров (name) из таблицы genres, у которых нет ни одной книги из таблицы books Связь books.genre_id =  genres.id
SELECT name FROM genres JOIN books ON books.genre_id =  genres.id WHERE book IS NULL

2.	Выбрать фамилию surname пользователя и имя name из таблицы users и соответствующее название региона (поле name) из таблицы areas. Связь: users.area_id = areas.id, отсортировать по названию региона. Выбрать всего 4 записи
SELECT users.surname,users.name,areas.name JOIN areas ON users.area_id = areas.id WHERE ORDER BY areas.name LIMIT 4

3.	Необходимо посчитать сколько новостей в каждой категории Связь news.category_id =  categories.id
SELECT COUNT(news), categories.id FROM news JOIN categories ON news.category_id =  categories.id WHERE GROUP BY categories.id

4.	Выбрать название города (name) из таблицы cities и соответствующее название региона (name) из таблицы areas. Связь: cities.area_id = areas.id
SELECT cities.name, areas.name FROM cities JOIN areas ON cities.area_id = areas.id 

5.	Выбрать название школы (name) из таблицы schools и соответствующее название региона (name) из таблицы districts. Связь: schools.district_id = districts.id
SELECT schools.name, districts.name FROM schools JOIN districts ON schools.district_id = districts.id