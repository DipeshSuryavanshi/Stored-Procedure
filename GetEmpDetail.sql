DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getemp`(in peid int ,out pename varchar(20),out pdptno int,out pjob varchar(20),out psal decimal(9,2))
begin 
       select ename,deptno,job,sal into pename,pdptno,pjob,psal
       from emp
       where empno =peid;
       
       end$$
DELIMITER ;
