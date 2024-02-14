CREATE DEFINER=`root`@`localhost` PROCEDURE `increasecnt`(inout pcnt int)
begin 
    set pcnt =pcnt+10;
      end