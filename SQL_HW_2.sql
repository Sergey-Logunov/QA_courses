--1. Создать таблицу employees.
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

--2. Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values 	('Abramson_Donaldson'),
		('Adamson_Donovan'),
		('Adderiy_Douglas'),
		('Addington_Dowman'),
		('Adrian_Dutton'),
		('Albertson_Duncan'),
		('Aldridge_Dunce'),
		('Allford_Durham'),
		('Alsopp_Dyson'),
		('Anderson_Eddington'),
		('Andrews_Edwards'),
		('Archibald_Ellington'),
		('Arnold_Elmers'),
		('Arthurs_Enderson'),
		('Atcheson_Erickson'),
		('Attwood_Evans'),
		('Audley_Faber'),
		('Austin_Fane'),
		('Ayrton_Farmer'),
		('Babcock_Farrell'),
		('Backer_Ferguson'),
		('Baldwin_Finch'),
		('Bargeman_Fisher'),
		('Barnes_Fitzgerald'),
		('Barrington_Flannagan'),
		('Bawerman_Flatcher'),
		('Becker_Fleming'),
		('Benson_Ford'),
		('Berrington_Forman'),
		('Birch_Forster'),
		('Bishop_Foster'),
		('Black_Francis'),
		('Blare_Fraser'),
		('Blomfield_Freeman'),
		('Boolman_Fulton'),
		('Bootman_Galbraith'),
		('Bosworth_Gardner'),
		('Bradberry_Garrison'),
		('Bradshaw_Gate'),
		('Brickman_Gerald'),
		('Brooks_Gibbs'),
		('Brown_Gilbert'),
		('Bush_Gill'),
		('Calhoun_Gilmore'),
		('Campbell_Gilson'),
		('Carey_Gimson'),
		('Carrington_Goldman'),
		('Carroll_Goodman'),
		('Carter_Gustman'),
		('Chandter_Haig'),
		('Chapman_Hailey'),
		('Charlson_Hamphrey'),
		('Chesterton_Hancock'),
		('Clapton_Hardman'),
		('Clifford_Harrison'),
		('Coleman_Hawkins'),
		('Conors_Higgins'),
		('Cook_Hodges'),
		('Cramer_Hoggarth'),
		('Creighton_Holiday'),
		('Croftoon_Holmes'),
		('Crossman_Howard'),
		('Daniels_Jacobson'),
		('Davidson_James'),
		('Day_Jeff'),
		('Dean_Jenkin'),
		('Derrick_Jerome'),
		('Dickinson_Johnson'),
		('Dodson_Jones'),
		('Donaldson_Keat');

--3. Создать таблицу salary
create table salary (
	id serial primary key,
	monthly_salary Int not null
);

--4. Наполнить таблицу salary 15 строками.
insert into salary (monthly_salary)
	  values(1000),
			(1100),
			(1200),
			(1300),
			(1400),
			(1500),
			(1600),
			(1700),
			(1800),
			(1900),
			(2000),
			(2100),
			(2200),
			(2300),
			(2400),
			(2500);
		
--5. Создать таблицу employee_salary
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null);


--6. Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
	insert into employee_salary(id,employee_id,salary_id)
	  values(default,30,3),
			(default,29,4),
			(default,28,2),
			(default,27,1),
			(default,26,5),
			(default,25,6),
			(default,24,7),
			(default,23,8),
			(default,22,9),
			(default,21,11),
			(default,20,10),
			(default,19,13),
			(default,18,12),
			(default,17,15),
			(default,16,14),
			(default,15,16),
			(default,14,1),
			(default,13,3),
			(default,12,5),
			(default,11,7),
			(default,10,9),
			(default,9,11),
			(default,8,13),
			(default,7,15),
			(default,6,2),
			(default,5,4),
			(default,4,6),
			(default,3,8),
			(default,2,10),
			(default,1,12),
			(default,71,14),
			(default,72,16),
			(default,73,1),
			(default,74,2),
			(default,75,3),
			(default,76,4),
			(default,77,5),
			(default,78,6),
			(default,79,7),
			(default,80,8);
			
--7. Создать таблицу roles
create table roles (
	id serial primary key,
	role_name int not null unique);

--8. Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

--9. Наполнить таблицу roles 20 строками.
insert into roles(id,role_name)
	  values(default,'Junior Python developer'),
			(default,'Middle Python developer'),
			(default,'Senior Python developer'),
			(default,'Junior Java developer'),
			(default,'Middle Java developer'),
			(default,'Senior Java developer'),
			(default,'Junior JavaScript developer'),
			(default,'Middle JavaScript developer'),
			(default,'Senior JavaScript developer'),
			(default,'Junior Manual QA engineer'),
			(default,'Middle Manual QA engineer'),
			(default,'Senior Manual QA engineer'),
			(default,'Project Manager'),
			(default,'Designer'),
			(default,'HR'),
			(default,'CEO'),
			(default,'Sales manager'),
			(default,'Junior Automation QA engineer'),
			(default,'Middle Automation QA engineer'),
			(default,'Senior Automation QA engineer');

--10. Создать таблицу roles_employee
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

--11. Наполнить таблицу roles_employee 40 строками.
	insert into roles_employee(id,employee_id,role_id)
	  values(default,30,3),
			(default,29,4),
			(default,28,2),
			(default,27,1),
			(default,26,5),
			(default,25,6),
			(default,24,7),
			(default,23,8),
			(default,22,9),
			(default,21,11),
			(default,20,10),
			(default,19,13),
			(default,18,12),
			(default,17,15),
			(default,16,14),
			(default,15,16),
			(default,14,1),
			(default,13,3),
			(default,12,5),
			(default,11,7),
			(default,10,9),
			(default,9,11),
			(default,8,13),
			(default,7,15),
			(default,6,2),
			(default,5,4),
			(default,4,6),
			(default,3,8),
			(default,2,10),
			(default,1,12),
			(default,31,14),
			(default,32,16),
			(default,33,1),
			(default,34,2),
			(default,35,3),
			(default,36,4),
			(default,37,5),
			(default,38,6),
			(default,39,3),
			(default,40,8);


select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;
drop table employee_salary;
drop table roles_employee;
