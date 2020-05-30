/*
  Se ajusta el valor mínimo a 1000 debido a que se insertaron registros en batch y no se tuvo en cuenta
  esta secuencia.
  
  21/08/2019
*/

-- Modify the last number 
alter sequence SRANGO_DIAN increment by 200 nocache;
select SRANGO_DIAN.nextval from dual;
alter sequence SRANGO_DIAN increment by 1 nocache;
