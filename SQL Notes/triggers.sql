create database ineuron
use ineuron

create table course(
course_id int , 
course_desc varchar(50),
course_mentor varchar(60),
course_price int ,
course_discount int )

create table course_update(
course_mentor_update varchar(50),
course_price_update int ,
course_discount_update int )

create table course1(
course_id int , 
course_desc varchar(50),
course_mentor varchar(60),
course_price int ,
course_discount int,
create_date date  )

delimiter //
create trigger course_before_insert12
before insert 
on course1 for each row
begin
	declare user_val varchar(50);
	set new.create_date = sysdate();
    select user() into  user_val;
    set new.user_info = user_val;
    
end; //

