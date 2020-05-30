-- Add/modify columns 
alter table FIN_RANGOS modify anio not null;
-- Create/Recreate primary, unique and foreign key constraints 
alter table FIN_RANGOS
  drop constraint FIN_RANGOS_PK cascade;
alter table FIN_RANGOS
  add constraint FIN_RANGOS_PK primary key (CVARIABLE, NDESDE, NHASTA, TRANGO, ANIO)
  using index;
