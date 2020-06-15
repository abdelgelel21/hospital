
create database Hospital ;
use Hospital ;
create table Room (
Room_id INT NOT NULL PRIMARY KEY  ,
Room_Type varchar(50) NULL ,
folor_Room int null ,
Room_Price int NULL 
);
select *from Room ;

create table patient (
patient_id int not null primary key ,
patient_Name varchar(50) null ,
patient_Phone int null ,
patient_Address varchar(50) null ,
Room_id int not null
);
select *from patient ;


create table doctors (
doctors_id INT NOT NULL PRIMARY KEY ,
doctors_name varchar(50) null , 
doctors_Phone int null ,
Room_id int not null ,
patient_id int not null ,
foreign key  (Room_id) References Room (Room_id) ,
foreign key  (patient_id ) References patient (patient_id ) 
);


select * from doctors ;

 
insert into Room(Room_id, Room_type, folor_Room, Room_price)
values(115,'single',1,350 );

insert into Room(Room_id, Room_type, folor_Room, Room_price)
values(116,'double',1,250 );

insert into Room(Room_id, Room_type, folor_Room, Room_price)
values(117,'double',2,300 );

insert into Room(Room_id, Room_type, folor_Room, Room_price)
values(118,'single',2,400 );

insert into Room(Room_id, Room_type, folor_Room, Room_price)
values(119,'single',1,450 );

select *from Room;

insert into patient(patient_id, patient_Name, patient_phone, patient_Address, Room_id)
values(5131,'Ahmed Hashem',01001278910,'alexandria',115 );

insert into patient(patient_id, patient_Name, patient_phone, patient_Address, Room_id)
values(5132,'ibrahim shams',01001443215,'cairo',116 );

insert into patient(patient_id, patient_Name, patient_phone, patient_Address, Room_id)
values(5133,'mohamed ali',01001334316,'Giza',117 );

insert into patient(patient_id, patient_Name, patient_phone, patient_Address, Room_id)
values(5134,'ahmed abdallah',01500033621,'banha',118 );

insert into patient(patient_id, patient_Name, patient_phone, patient_Address, Room_id)
values(5135,'fakher samy',01200136461,'damanhour',119 );




SELECT *FROM patient ;


insert into doctors(doctors_id, doctors_name, doctors_phone, patient_id,Room_id) 
values(14014,'Ahmed hassen', 01012141620,5131,115);

insert into doctors(doctors_id, doctors_name, doctors_phone, patient_id,Room_id) 
values(14015,'seif hassen', 01518164441,5132,116);


insert into doctors(doctors_id, doctors_name, doctors_phone, patient_id,Room_id) 
values(14016,'hazem abdallah', 01218121416,5133,117);


insert into doctors(doctors_id, doctors_name, doctors_phone, patient_id,Room_id) 
values(14017,'Abdallah elsead', 01000414621,5134,118);

 
insert into doctors(doctors_id, doctors_name, doctors_phone, patient_id,Room_id) 
values(14018,'Mahmoud elsead', 01111006110,5135,119);

select *from doctors;


 select * from Room where Room_id  in ( select distinct patient_id from patient);
 
 select * from Room where Room_id not in (select distinct doctors_id from doctors) ;

  select * from patient where patient_id not in ( select distinct doctors_id from doctors);

 select COUNT(patient_id) as Count_patient  from patient group by patient_id ;

select COUNT(Room_id) as Count_Room  from Room group by Room_id ;

update patient
set patient_Name = 'manar elmasaly' 
where patient_id = 5131 ;
 
 update patient
set patient_Name = 'amal basuony' 
where patient_id = 5133 ;

 update patient
set patient_Name = 'seliman mahmoud' 
where patient_id = 5135 ;




update doctors
set  doctors_name = 'seif elseade' 
where doctors_id = 14015 ;

update doctors
set  doctors_name = 'ahmed hassen' 
where doctors_id = 14014 ;


delete from doctors
where doctors_id = 14018 ;

delete from doctors
where doctors_id = 14016 ;

delete from doctors
where doctors_id = 14014 ;

delete from Room
where Room_id = 117 ;

delete from Room
where Room_id = 119 ;