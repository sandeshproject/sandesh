



create database sandesh1 
use sandesh1
-----table
create table abc
(
roll int ,
name varchar (100) ,
gender char (50) ,
number bigint 
)
------select
select * from abc
---insert 
insert into abc values (1 , 'tejas' , 'male' , 324235)---single insert
insert into abc values ---
(2 , 'janvi' , 'female' , 1323424),
(3 , 'ram' , 'male' ,12314)
--------
sp_renamedb 'sandesh' , 'tiger'
sp_rename 'abc' , 'emp'
sp_rename 'emp.roll ' , 'id'
select *from emp
sp_rename 'emp.name' , 'student'
-----
alter table emp add category varchar (50)
update emp set category= 'data' where id=1
alter table emp drop column category
update emp set student= 'pratik' , gender ='male' where id =1
select *from emp where gender ='female'
select *from emp where id >2
select *from emp where id >1
select *from emp where id >1 and id<3

select *from emp where id >1 or id >2
delete emp where id=1


SELECT * FROM ABC
---------------------------
select *from abc where roll between 1and 6
sp_rename 'abc.ssd1' , 'roll'
select *from abc where roll between 1 and 5
select * from abc where roll  between 1 and 3
select *from abc where name like 'r%'
select *from abc where name like 'a%'
select *from abc where name like '__a%'
select *from abc where name like '%a_'
update abc set roll = null where roll = 1
update abc set roll =1 where roll = null
select *from abc where roll is not null
insert into abc values ('aditi' , '14' , '2435' ,'1')
------------PK
create table bablu 
(
code int primary key ,
name varchar (100)
)
select *from bablu
insert into bablu values 
(101 , 'sandesh' )
insert into bablu values 
(102 , 'sandesh')
insert into bablu values 
(103 , 'janvi' )
insert into bablu values 
(104 , 'sachin' )
insert into bablu (name) values ('rj')
---------------fk
create table firm 
(
caller_id INT foreign key references bablu (CODE),
COMPANY_NAME VARCHAR (100) ,
PROJECT INT
)
SELECT *FROM FIRM
INS ,'TT' ,243)
INSERT INTO FIRM  
----------UNIQUE
CREATE TABLE UN
(
rOLL INT UNIQUE,
nAME VARCHAR(100)	
)
insert into un values
(1,'a'),
(2,'b')

insert into un(name) values
('c')

select * from un
-------------not null
create table nnul
(
Roll int not null,
Name varchar(100)
)
insert into nnul values
(1,'a'),
(2,'b')

select * from nnul

insert into nnul(name) values
('c')
-----------------default
create table df
(
 Roll int default 0,
 INcome bigint
)

insert into df values
(1,1000)

select * from df

insert into df(income) values
(2000)

------------------check
create table chk
(
sr_no int,
Age int check(Age>18)
)ERT INTO FIRM VALUES ---
(101 ,'TCS' ,23),
(103

insert into chk values
(1,20)

insert into chk values
(2,18)
insert into chk values
(2,22)
--------------------------
declare @a varchar(100)
set @a='abdul'
print concat('Name ',@a)
----------------------

declare @a INT
set @a=18
if(@a>18)
  print('you are eligible')
else if(@a=18)
   print('next time')
else
 print('you are not eligible')
 -------
 declare @w int
 set @w=+20
if (@W=+20)
 print ('positive')
else if (@w=-20)
 print ('next')
else 
  print ('negative')
  create table one 
  (
  name varchar (100) ,
  age int ,
  gender char (50) ,
  income bigint
  )
   
  insert into one values
  ('sandesh' , 20 , 'male' ,12000) ,
  ('tejas' , 21 , 'male' ,15000)
  insert into  one values 
  ('janvi' , 19 , 'female' , 22000)
  insert into one values 
  ( 'derin' , 22 ,'male' ,25000)
  insert into one values 
  ('sakshi' , 21 , 'female' , 24000)
  -------------------------------

  select SUM(income) as Total from wsp
  select max(income)as big,name from wsp
  select Min(income) as small from wsp
  select avg(income) as average from wsp
  select count(*) as small from wsp
-----------------------------
select * from wsp

select SUM(income) as total,max(income) as big,Min(income) as small,avg(income) as average,count(*) as small from wsp
select gender,SUM(income) as total,max(income) as big,Min(income) as small,avg(income) as average,count(*) as small from wsp group by gender


select gender,SUM(income) as Total from wsp group by gender
having sum(income)>50000

select gender,SUM(income) as Total from wsp group by rollup ( gender)
select income,max(name) as big from wsp

  select max(income) as big from wsp
  select name,max(income) as Total from wsp group by name
  
select name,max(income) as Total from wsp group by name
having max(income)>24000
 select name, max(income) as big from wsp group by name 
 select name,income from wsp where income in (select MAX(income) as total from wsp)
 use sandesh1
select *from wsp
create procedure sandesh
as
begin 
select*from wsp where gender='male'
end
sandesh
alter procedure sandesh 
as 
begin 
select *from wsp where gender ='male'
select *from wsp where age ='20'
end
           sandesh
create procedure userdata1
@1 int ,
@2 varchar (100)
as
begin
select *from wsp where gender =@2
select *from wsp where age =@1
end

userdata1 20 ,'male'
alter procedure userdata1
@1 int =21 ,
@2 varchar (100) = 'male'
with encryption 
as
begin
select*from wsp where age=@1
select *from wsp where gender =@2
end
userdata1
create procedure aldar1
@1 varchar (100) ,
@2 int ,
@3 char (50),
@4 bigint 
as
begin
select*from wsp where name=@1
select*from wsp where age =@2
select*from wsp where gender=@3
select*from wsp where income =@4
end
alter procedure aldar1
@1 varchar (100) ='sachin',
@2 int = 6 ,
@3 char (50) = 'male'
@4 bigint =28000
as 
begin

select*from wsp where name=@1
select*from wsp where age =@2
select*from wsp where gender=@3
select*from wsp where income =@4
end

 create function aman ()
 return varchar (100)
 as 
 begin 
 return ' hello sandesh '
 end 
 select wsp.aman()

 create function bms ()
 returns varchar (max)
 as
 begin 
 return 'hello sandesh\'
 end
 select dbo.bms ()
 create function mult (@A int , @b int)
 returns int 
 as 
 begin 
 return @A * @b 
 end 
 select dbo.mult (2,2)
 create function vaote (@age int )
 returns varchar (100)
 as 
 begin 
 declare @b varchar (100)
 if (@age >18)
 set @b ='you are eligible'
 else if (@age =18)
set @b ='next time'
else 
set @b = 'you are not eliglible '
return @b
end 
select dbo.vaote (18)
create table #one
(
roll int ,
name varchar (100) 
)
select *from #one
create table ##two 
(
roll int ,
name varchar (100)
)
select *from ##two
select *from one 
begin transaction 
delete one  where name = 'sandesh'
rollback transaction 
commit transaction 
begin transaction 
delete one where name = 'derin'
save transaction sandesh 
rollback transaction 
commit transaction 
set implicit transaction on 
delete one 
drop one
rollback trasaction 
set implicit transaction off 
select @@TRANCOUNT

select *from wsp 
begin transaction 
delete wsp where name = 'sakshi'
rollback transaction 
---
begin transaction 
delete wsp where name = 'sakshi'
save transaction sandesh 
rollback transaction 
commit transaction 
rollback transaction sandesh 
-----
delete wsp where age = 21
set implicit transaction on
delete wsp 
drop table wsp
rollback transaction 
set implicit transaction off
select @@trancount
---
 create function aldar ()
 returns varchar (max)
 as
 begin 
 return 'hello sandesh\'
 end
 select dbo.aldar ()
 create function ult(@A int , @b int)
 returns int 
 as 
 begin 
 return @A * @b 
 end 
 select dbo.ult (2,2)
 create function vote (@age int )
 returns varchar (100)
 as 
 begin 
 declare @b varchar (100)
 if (@age >18)
 set @b ='you are eligible'
 else if (@age =18)
set @b ='next time'
else 
set @b = 'you are not eliglible '
return @b
end 
select dbo.vaote (18)
-------string 
select char (66)
select nchar (70)
select ascii ('s')
select str (69)+' '+ 'sandesh'
select charindex ( 's' , 'sandesh sopan aldar  ' ,5)
select concat ('sandesh ' , 'aldar')
select 'sandesh ' + ' ' + 'aldar'
select datalength ('sandesh sopan aldar' )
select len ( 'sandesh sopan aldar ')
select difference ('sandesh' , 'tiger' )
select format  ( 12345656544, '##:# / ##:#/##:#')
select left ( 'sandesh sopan aldar',8)
select right ( 'sandesh sopan aldar ',8) 
select substring (' sandesh sopan aldar ',2,8)
select lower ('sandesh')
select upper ( 'sandesh')
select ltrim ( '    sandesh ')
select rtrim ('sandesh')
select patindex ('%SANDESH%' , 'sandesh sopan aldar')
select quotename ( 'abcd' , '{}')
select replace ( 'sandesh sopan aldar ', 's' , 'S')
select replicate ('s',20)
select soundex ('sandesh'),soundex( 'rkamlesh')
select space (3) 
select stuff ('www.sandesh.com', 1,3, 'google') 
select translate ('sandesh sopan aldar', 'dsdsah' ,'gggg')
select unicode ('sandesh')
create table incomeS 
(
roll int ,
age int ,
gender char ,
incmoe bigint
)
insert into income values 
(1 , 20 , 'male' ,12000),
(2, 22 , 'male' ,12000) ,
(3 , 23, 'male', 12000)

---
SELECT *FROM WSP
SELECT *FROM ABC
---emp_id
SELECT *FROM ABC AS A
INNER JOIN ONE AS B
ON A.AGE = B.NUMBER 

select * from aldarsandesh

select*from aldarsandesh2

---
select *from aldarsandesh2 as a
inner join aldarsandesh as b
on a.code=b.emp_id
select 
b.name , b.gender,a.country,a.income
from aldarsandesh2 as a
inner join aldarsandesh as b
on b.emp_id=a.code
-------------------union,union all,intersect,exists,not exists
create table emp
(
Roll int,
Name varchar(100)
)
select * from emp
insert into emp values
(1,'a'),
(2,'b'),
(3,'c')
-------------------
create table cmp
(
code int,
Name_cmp varchar(100)
)

select * from cmp
insert into cmp values
(10,'a'),
(1,'a'),
(20,'c')
----------------
select * from emp
select * from cmp
-------------------

select * from emp
union 
select * from cmp


select * from emp
union all
select * from cmp


select * from emp
intersect 
select * from cmp


select name from emp
union 
select Name_cmp from cmp

select roll from emp
union 
select code from cmp

if exists(select * from emp where name='a1')
  print('yes')
else
  print('no')


 if not exists(select * from emp where name='a1')
  print('yes')
else
  print('no')
  select* from emp1

  -----------------
    select* from emp1 as a
	inner join emp1 as b
	on a.emp_id=b.[manager id]

	  select a.emp_id,a.name,b.name as manager_name from emp1 as a
	inner join emp1 as b
	on a.emp_id=b.[manager id]
	------
select *from aldar2
select*from xyz
select name from aldar2
intersect 
select *from xyz

 -----------------------
 select * from xyz

 select *,
 msg=
 case
   when customer_id=5001 then 'hi'
   when customer_id>5001 and customer_id<=5004 then 'nice'
   else 'failh'
 end
 from xyz
 ------------------
 select * from xyz
 alter table xyz add msg varchar(100)

 update xyz set msg=
 case
   when customer_id=5001 then 'hi'
   when customer_id>5001 and customer_id<=5004 then 'nice'
   else 'failh'
  end
------------------------------
aman 1 m 10 20 30 40 50 60
------------------alter total 210,350,440
select *from zyx       
alter table zyx add total bigint
update zyx set total=
select emp_id + managerid 
from zyx 
-----------------
alter view sp as
  select * from zyx where name='pratik'


select * from zyx
select * from sp

delete sp where emp_id=2

insert into sp values
(100,'sachin',45,455)

update zyx set emp_id=5000 where emp_id=1
update zyx set total = emp_id + [manager id]
create view sa as 
select *from zyx 
delete sa where emp_id=5000
insert into sa  values 
(1 , 'pratik' , 20 , 1233)
---------------------------
select getdate ()
select current_timestamp
select sysdatetime()
----------------------datename
select datename(year,getdate())
select datename(month,getdate())
select datename (day,getdate())
select datename (minute ,getdate())
select datename (second, getdate())
select datename(hour,getdate())
-------------------------datediff
select datediff (year,'11-11-2003' ,getdate())
select datediff (month , '11-22-2004' , getdate())
select datediff ( day , '11-11-2005', getdate())
select datediff(second ,'11-11-2003',getdate())
select datediff ( hour, '11-22-2003',getdate())
-----------------dateadd
select dateadd(year ,10, getdate())
select dateadd(month,2,getdate())
select dateadd(day,20,getdate())\
select dateadd ( minute , 222, getdate())
select dateadd (hour,22,getdate())
*----*-----**-**--*-----
select year (getdate())
select month( getdate())
select day(getdate())
-------------
select format (getdate(),'dddd-mmm-yyyy')
----------------------

create table tejas 
(
roll int ,
name varchar (100)
)
insert into tejas values 
(11, 'sandy'),
(12 , 'tejasbhai')
select *from tejas
delete tejas where roll=11
alter table tejas alter column roll int not null
alter table tejas add primary key (roll)
alter table tejas add unique (name)
alter table tejas add check (roll>5)
alter table tejas add constraint aman default 'sachin'for name 
------------------
create table wifi
(
sr_no int ,
gender varchar (100) 
)
alter table wifi add foreign key (sr_no) references tejas (roll)
-------------------------------------
create table how 
(
roll int ,
sr_no float ,
gender varchar (100)
constraint das primary key (roll ,sr_no)
)  
---------------------
create table how1 
(
roll int ,
sr_no float ,
gender varchar (100) 
)
alter table how1 alter column roll int not null
alter table how1 alter column sr_no int not null
-------------------
declare @a int , @b int , @c int 
set @a=2
set @b =1
set @c = @a *@b
while (@c <=20)
begin
print (@c
set @c= @a*@b
end
----------------------
declare @a int 
set @a =10
while (@a=1)
begin 
print (@a)
set @a= @a+1
end
--------------------------------------
select *from wsp
select gender , null ,sum(income) as total from wsp group by gender
union all
select null, name , sum (income) as total from wsp group by name
union all 
select gender , name , sum (income) as total from wsp group by gender , name
-----grouping set 
select name , gender , sum (income) as total from wsp group by
grouping sets 
(
(name,gender),
(gender),
()
)
create table nitin
(
code int primary key ,
name varchar (100)
)
select *from nitin
insert into nitin values 
(1, 'sandesh') ,
(2 ,'tejas'),
(3 , 'nitin'),
(4 , 'ram')
/*create table nitin1
(
roll int foreign key references nitin (code)
on delete cascade ,
company varchar (10)
)*/

select *from nitin1
select *from nitin 
select *from nitin1
delete nitin where code =1
drop table nitin
drop table nitin1


create table nitin3
(
roll int ,
company varchar (10)
)

 insert into nitin1 values 
 (1,'samsung') ,
 (2,'vivo'),
 (3, 'redmi'),
 (4,'oppo')
 -------------------
 select *from school
 declare three cursor scroll for select * from school order by fees desc
 open three
 fetch first from three
 fetch next from three
 fetch last from three
 fetch prior from three
 fetch absolute 3 from three 
 fetch relative 4 from one
 close three
 deallocate three
create table nitin3
(
roll int ,
company varchar (10)                                 
)
SELECT *FROM NITIN3
INSERT INTO NITIN3 VALUES
(2,'VIVO')
CREATE TRIGGER EMP2
ON NITIN3
AFTER INSERT 
AS 
BEGIN
PRINT ('THANKS FOR INSERT DATA')
END

-------------------
CREATE TRIGGER WSP1
ON NITIN3
AFTER UPDATE 
AS 
BEGIN 
PRINT ('THANKS FOR UPDATE DATA')
END
update nitin3 set roll =500 where roll =2
---------------
create trigger wsp2
on nitin3 
after delete 
as begin
print ('data deleted successfully')
end
delete nitin3 where roll=500
----------------------
create trigger wsp3
on nitin3 
after insert 
as 
begin 
select *from inserted 
end 
insert into nitin3 values 
(10,'sandesh')
-----------------------
create trigger wsp4
on nitin3
after insert , delete ,update
as 
 begin
 print ('thanks')
 end
 insert into nitin3 values 
 (1,'wsp')
 drop trigger wsp
 -----------------

 SELECT *FROM NITIN3
 --------
 CREATE TRIGGER SACHIN 
 ON NITIN3
 INSTEAD OF INSERT 
 AS
BEGIN
PRINT ('DO NOT INSERT DATA THIS TABLE')
END
 INSERT INTO NITIN3 VALUES
 (5 ,'VIVO')
  SELECT *FROM NITIN3
  ---------------------
CREATE TRIGGER SACHIN1
 ON NITIN3
 INSTEAD OF UPDATE
 AS
BEGIN
PRINT ('DO NOT INSERT DATA THIS TABLE')
END
UPDATE NITIN3 SET ROLL=2 WHERE ROLL=10
 ---------------
CREATE TRIGGER SACHIN3
 ON NITIN3
 WITH ENCRYPTION
 INSTEAD OF DELETE
 AS
BEGIN
PRINT ('DO NOT INSERT DATA THIS TABLE')
END
-------------DATABASE
CREATE TRIGGER SACHIN4
 ON DATABASE
 FOR CREATE_TABLE
 AS
BEGIN
PRINT ('DO NOT CREATE TABLE THIS DATABASE')
END
CREATE TABLE NIITIN5
(
ROLL INT , 
NAME VARCHAR 
)
SELECT *FROM NITIN5----DO NOT SHOW 
----------------------
CREATE TRIGGER SACHIN5
 ON DATABASE
 FOR CREATE_TABLE
 AS
BEGIN
ROLLBACK
PRINT ('DO NOT CREATE TABLE THIS DATABASE')
END
DROP TRIGGER SACHIN5 ON DATABASE
CREATE TABLE NIITIN6
(
ROLL INT , 
NAME VARCHAR 
)
-----------------
SP_HELPTEXT SACHIN1
-------------------
  CREATE TRIGGER SACHIN5
 ON ALL SERVER
 WITH ENCRYPTION
 FOR CREATE_DATABASE 
 AS
BEGIN
ROLLBACK
PRINT ('LOCKED')
END
DROP TRIGGER SACHIN5 ON ALL SERVER
-----------------------
CREATE TABLE SANDY1
(
ROLL INT ,
NAME VARCHAR(100)
)