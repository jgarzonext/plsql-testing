-- Create/Recreate primary, unique and foreign key constraints 
alter table FIN_PAIS_RIESGO
  drop constraint FIN_PAIS_RIESGO_PK cascade;
alter table FIN_PAIS_RIESGO
  add constraint FIN_PAIS_RIESGO_PK primary key (CPAIS, NMOVIMI, NANIO_EFECTO)
  using index;
