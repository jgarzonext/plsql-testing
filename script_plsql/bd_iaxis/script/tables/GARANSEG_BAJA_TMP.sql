/**************************************************************
  IAXIS-3264 - JLTS - 19/01/2020
***************************************************************/
BEGIN
  PAC_SKIP_ORA.p_comprovadrop('GARANSEG_BAJA_TMP','TABLE');
END;
/

-- Create table
create table GARANSEG_BAJA_TMP
(
  sseguro NUMBER not null,
  nriesgo NUMBER(6) not null,
  cgarant NUMBER(4) not null,
  nmovimi NUMBER(4) not null,
  finiefe DATE not null
);
-- Add comments to the columns 
comment on column GARANSEG_BAJA_TMP.sseguro
  is 'Número consecutivo de seguro asignado automáticamente.';
comment on column GARANSEG_BAJA_TMP.nriesgo
  is 'Número de riesgo';
comment on column GARANSEG_BAJA_TMP.cgarant
  is 'Código de garantía';
comment on column GARANSEG_BAJA_TMP.nmovimi
  is 'Número de movimiento';
comment on column GARANSEG_BAJA_TMP.finiefe
  is 'fecha inicio de efecto';
-- Create/Recreate primary, unique and foreign key constraints 
alter table GARANSEG_BAJA_TMP
  add constraint GARANSEG_BAJA_TMP_PK primary key (SSEGURO, NRIESGO, CGARANT, NMOVIMI, FINIEFE)
  using index;
alter index GARANSEG_BAJA_TMP_PK nologging;

-- utilizar para dar permisos
GRANT SELECT, INSERT, DELETE, UPDATE ON "AXIS"."GARANSEG_BAJA_TMP" TO "R_AXIS";
GRANT SELECT ON "AXIS"."GARANSEG_BAJA_TMP" TO "CONF_DWH";
GRANT SELECT, INSERT, DELETE, UPDATE ON "AXIS"."GARANSEG_BAJA_TMP" TO "PROGRAMADORESCSI";
  
-- Utilizar para crear synonym
create or replace synonym AXIS.GARANSEG_BAJA_TMP for AXIS00.GARANSEG_BAJA_TMP;
