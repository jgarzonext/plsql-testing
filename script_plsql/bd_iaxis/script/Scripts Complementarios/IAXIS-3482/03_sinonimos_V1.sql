
create or replace synonym AXIS00.INT_AGD_OBSERVACIONES
  for AXIS.INT_AGD_OBSERVACIONES;
  
grant select, insert, update, delete on INT_AGD_OBSERVACIONES to R_AXIS;
grant select, insert, update, delete on INT_AGD_OBSERVACIONES to PROGRAMADORESCSI;


