DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `calcBonus`(pname varchar(20))
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
         end$$
DELIMITER ;
