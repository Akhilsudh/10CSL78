create database address;
use address;
grant all on address.* to sirmvit@localhost identified by 'cse';
create table person_info(name varchar(20),add1 varchar(30),add2 varchar(30),email varchar(20) primary key);
commit;
exit