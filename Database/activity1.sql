create table students (
    id integer primary key,
    first_name varchar(255) not null,
    middle_name varchar(255),
    last_name varchar(255) not null,
    age integer not null check (age > 0),
    location varchar(255) not null
);

insert into students (id, first_name, last_name, age, location)
    values (1, 'Sheldon', 'Cooper', 27, 'Pasadena');
insert into students (id, first_name, last_name, age, location)
    values (2, 'Leonard', 'Hofstadter', 26, 'Pasadena');
insert into students (id, first_name, last_name, age, location)
    values (3, 'Penny', 'Teller', 22, 'Pasadena');
insert into students (id, first_name, last_name, age, location)
    values (4, 'Howard', 'Wolowitz', 25, 'Pasadena');
insert into students (id, first_name, last_name, age, location)
    values (5, 'Rajesh', 'Koothrappali', 26, 'Pasadena');
insert into students (id, first_name, last_name, age, location)
    values (6, 'Bernadette', 'Rostenkowski', 22, 'Pasadena');


update students 
set 
    first_name = 'Ivan', 
    middle_name = 'Ingram', 
    last_name = 'Howard', 
    age = 25, 
    location = 'Bulacan' 
where id = 1;

delete from students where id = 6;
