

--Literal 2 y 3.
create table mentors (
id serial primary key,
name varchar (30)not null unique, 
years_glasgow int,
addres varchar (60),
fav_lang_progamming varchar (30)
);

--Literal 4 y 5.
create table students (
id serial primary key,
name varchar (30)not null unique,
addres varchar (60),
graduated_from_Code_Your_Future boolean
);

--Literal 7 y 8.
create table classes (
id serial primary key,
mentor_id int references mentors (id),
tema varchar (30),
date_class date,
location varchar (60)
);
select * from classes;

--Literal 9.
create table attendance (
  id serial primary key,
  student_id int references students (id),
  class_id int references classes (id)
);

select * from classes;

--Literal 2 y 3
insert into mentors (name, years_glasgow, addres, fav_lang_progamming)
values('Isard',4,'Isard Street 3', 'JavaScript'),
('Ricard', 1, 'Can Ribalta', 'Java'),
('Ali',2,'Congress','JS'),
('Vicent', 0, 'pipo street', 'html'),
('Ananda', 9, 'Carmel Street', 'CSS');

select * from mentors;
delete from mentors;

--Literal 4 y 5.--
insert into students(name, addres, graduated_from_Code_Your_Future)
values('Luis', 'Avenida Ramos 45', true),
('Alexander', 'Diagonal 599', false),
('Andrea', 'Glories 30', true),
('Karelys', 'Avenida Clot', true),
('Oliver', 'baker street 221b', false),
('Gabriel', 'El Masnou', true),
('Laura', 'Gran Avenida, 7º', true),
('Linda', 'Monserrat, 15º', true),
('Oswaldo', 'Calle nueva, 34º', true),
('Nata', 'Calle Vieja, 5', true);

select * from students;
delete from students;


--Literal 7 y 8
insert into classes (mentor_id,tema,"date_class","lugar_class")
values (8,'HTML','2022-12-17','Barcelona'),
(9,'NODEJS','2022-12-13','Barcelona'),
(10,'REACT','2023-01-10','Barcelona'),
(11,'DATEBASE','2023-01-14','Barcelona');

select * from classes;
delete from classes;

--Literal 9.
insert into attendance (student_id, class_id)
values(14,10),
(15,11),
(16,12),
(17,13),
(18,11),
(19,12),
(20,13),
(21,11),
(22,12),
(23,13);

select * from attendance;

--Literal 10.
select * from mentors
where years_glasgow > 5;

select * from mentors
where fav_lang_progamming = 'JavaScript';

select * from classes
where  date_class < '2022-06-01';

select * from students
where  graduated_from_Code_Your_Future =true;


select * from students
where  graduated_from_Code_Your_Future =true;

select * from attendance;