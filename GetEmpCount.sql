DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getempcnt`(in pdeptno int ,out pcnt int)
begin 
     select count(*) into pcnt
     from emp 
      where deptno=pdeptno;
      end$$
DELIMITER ;
