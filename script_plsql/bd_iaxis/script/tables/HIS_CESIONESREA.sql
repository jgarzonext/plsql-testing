-- Create table
create table HIS_CESIONESREA
(
  scesrea NUMBER(8),
  sseguro NUMBER,
  cusualt VARCHAR2(20),
  fmodif  DATE
);
/
comment on table HIS_CESIONESREA
  is 'Historico de modificaciones a datos de Cesiones de contratos';
-- Add comments to the columns 
comment on column HIS_CESIONESREA.scesrea
  is 'Identificador de la sesion';
comment on column HIS_CESIONESREA.sseguro
  is 'Identificador del seguro (ESTSEGUROS)';
comment on column HIS_CESIONESREA.cusualt
  is 'Usuario de Modificacion';
comment on column HIS_CESIONESREA.fmodif
  is 'Fecha de modificacion';  
-- Grant/Revoke object privileges 
  GRANT UPDATE ON "AXIS"."HIS_CESIONESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CESIONESREA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_CESIONESREA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_CESIONESREA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CESIONESREA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_CESIONESREA" TO "PROGRAMADORESCSI";

COMMIT;
/