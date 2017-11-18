create database web;
use web;
grant all on web.* to sirmvit@localhost identified by 'cse';
create table age_info(name varchar(20) primary key, age int);
commit;
exit