create or replace synonym AXIS00.RANGO_DIAN
  for AXIS.RANGO_DIAN;
  
grant select, insert, update, delete on RANGO_DIAN to R_AXIS;
