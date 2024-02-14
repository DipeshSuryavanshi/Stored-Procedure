# Stored-Procedure

# Procedure to write get emp count of the department

SELECT * FROM dipesh1.emp;
delimiter //
create procedure getempcnt(in pdeptno int ,out pcnt int)
begin 
     select count(*) into pcnt
     from emp 
      where deptno=pdeptno;
      end//
      delimiter ;
      call getempcnt(10,@cnt);
      
select @cnt;




# Write a procedure to calculate bonus


delimiter //

create procedure calcBonus(pname varchar(20))
begin
   declare vsal,vcomm ,vbonus int;
   declare job varchar(20);
   select sal ,comm into vsal , vcomm
   from emp
   where ename=pname;
   if (vsal>2000) then 
   set vbonus = vsal*0.20+ ifnull(vcomm,0);
   else
         set vbonus = vsal*0.20 + ifnull(vcomm,0);
         end if;
         select pname,vsal,vcomm,vbonus;
         end//
         
   call calcBonus('SMITH');
   
   
