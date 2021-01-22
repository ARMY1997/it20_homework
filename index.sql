Одним запросом в таблицу towns добавить записи в поля name и post_index: Краматорск и 84313, Марьинка и 85600
    INSERT INTO `towns`(`id`, `name`, `post_index`) VALUES ('1','Краматорск','84313'),('2','Марьинка',' 85600')

Удалить записи из таблицы news
    DELETE FROM `news` WHERE 2

Вывести значения из полей surname, name из таблицы студентов students
    SELECT surname,name FROM `students` 

Необходимо выбрать всех пользователей из таблицы users
    SELECT name FROM `users`

В таблице schools, необходимо обновить значения в следующих по-лях: в поле number установить значение 5, в поле status установить значение middle
    UPDATE `schools` SET `number`='5',`status`='middle' WHERE 1

Необходимо выбрать номер (number), и дату (date_sale) из таблицы certificates
    SELECT `id`, `number`, `date_sale` FROM `certificates` WHERE id='1'
    
В таблицу towns  добавить запись со следующими полями: name = Краматорск, post_index = 84313
 INSERT INTO `towns`(`id`, `name`, `post_index`) VALUES ('1','Краматорск','84313')



