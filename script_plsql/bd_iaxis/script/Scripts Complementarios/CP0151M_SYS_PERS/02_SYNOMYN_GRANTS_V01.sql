create or replace synonym AXIS00.F_CUMULO_PERSONA
  for AXIS.F_CUMULO_PERSONA;
  
create or replace synonym AXIS00.F_CUPO_GARANTIZADO
  for AXIS.F_CUPO_GARANTIZADO;
  
grant execute on F_CUMULO_PERSONA to R_AXIS;
grant execute on F_CUPO_GARANTIZADO to R_AXIS;
