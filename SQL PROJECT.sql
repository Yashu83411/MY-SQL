create database Yashu;
use Yashu;
 
create table Bus(
Bus_id int primary key,
Bus_name varchar(55),
Source_location varchar(55),
Destination_location varchar(55),
Depature_Date  varchar(20),
Depature_Time  varchar(20)
);

insert into Bus(Bus_id, Bus_name,Source_location, Destination_location, Depature_date, Depature_time)
 values
(1, 'Bus1', 'Srikakulam', 'Vizag' ,"2024-03-02" , '3:00PM'),
(2, 'Bus2', 'Srikakulam', 'Anakapalii' ,"2024-03-15" , '3:15:00PM'),
(3, 'Bus3', 'Srikakulam', 'Goppalapatanam' ,"2024-03-16" , '2:00PM'),
(4, 'Bus4', 'Srikakulam', 'Anadhapuram' ,"2024-03-17" , '1:00PM'),
(5, 'Bus5', 'Srikakulam', 'Thagarapuvalasa' ,"2024-03-18" , '12:00PM');

select * from Bus;


create table passenger(
Bus_id int,
 Foreign key(Bus_id) references Bus (Bus_id),
passenger_id varchar(55) primary key,
pname varchar (55),
Seat_no varchar(10),
Bus_no varchar(10),
amount int) ;


insert into passenger value
 (1 ,'p1' ,'yashu' ,'s1' , 'B-100' , 200 ),
 (2 ,'p2' ,'trinadh' ,'s2' , 'B-101' , 200 ),
 (3 ,'p3' ,'kaveri' ,'s3' , 'B-102' , 250 ),
 (4 ,'p4' ,'shankar' ,'s4' , 'B-103' , 250 ),
 (5 ,'p5' ,'siva' ,'s5' , 'B-104' , 300 );
 
 select * from passenger;


select Bus_name from Bus where Depature_time between '2:00:00 PM' and '3:00:00 PM' and Depature_date between '2024-03-02' and '2024-03-17';

select Bus_id ,amount from passenger where amount >200 and amount <300 order by amount asc;

select Bus.Bus_id, passenger.seat_no from Bus,passenger 
where Bus.Bus_id=passenger.Bus_id;

select Bus.Bus_id,Bus_name,passenger.amount
from Bus,passenger
where Bus.Bus_id=passenger.Bus_id;

select Bus_id , sum(amount) as 'amount earned by each bus' from passenger group by Bus_id order by sum(amount)asc;

drop table Bus;