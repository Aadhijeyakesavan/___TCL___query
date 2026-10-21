___TCL___
create table OPENINGAMOUNT(id int primary key,name varchar (100), amount bigint);

insert into OPENINGAMOUNT values
 (1,'AAdhi',5000);
 
Begin;
update OPENINGAMOUNT set amount =  amount +1000
where id = 1;


savepoint sp1;

 SELECT * FROM OPENINGAMOUNT
 
begin;
update OPENINGAMOUNT set amount =  amount - 1000
where id = 1;


rollback to sp1;

commit;
