-- Create table
create table SIN_TRAMITA_ESTSINIESTRO
(
  nsinies NUMBER(14),
  ntramit NUMBER(2),
  nmovimi NUMBER(2),
  nmaxpp  NUMBER,
  ncontin NUMBER(2),
  nriesgo NUMBER(2),
  cobserv VARCHAR2(2000),
  cusualt VARCHAR2(20),
  falta   DATE,
  cusumod VARCHAR2(20),
  fmodif  DATE
);
comment on table SIN_TRAMITA_ESTSINIESTRO
  is 'Detalle de Estado de siniestro MPP CONT RIESGO';
-- Add comments to the columns 
comment on column SIN_TRAMITA_ESTSINIESTRO.nsinies
  is 'Numero de siniestro';
comment on column SIN_TRAMITA_ESTSINIESTRO.ntramit
  is 'Numero de tramitacion';
comment on column SIN_TRAMITA_ESTSINIESTRO.nmovimi
  is 'Codigo de movimiento';
comment on column SIN_TRAMITA_ESTSINIESTRO.nmaxpp
  is 'Maxima perdida probable';
comment on column SIN_TRAMITA_ESTSINIESTRO.ncontin
  is 'contingencia . VF xxx';
comment on column SIN_TRAMITA_ESTSINIESTRO.nriesgo
  is 'Valor de Riesgo lista de valores VF yyy';
comment on column SIN_TRAMITA_ESTSINIESTRO.cobserv
  is 'Observaciones';
comment on column SIN_TRAMITA_ESTSINIESTRO.cusualt
  is 'Usuario de Alta';
comment on column SIN_TRAMITA_ESTSINIESTRO.falta
  is 'Fecha de alta';
comment on column SIN_TRAMITA_ESTSINIESTRO.cusumod
  is 'Usuario de modificacion';
comment on column SIN_TRAMITA_ESTSINIESTRO.fmodif
  is 'Fecha de modificacion';  
-- Grant/Revoke object privileges 
GRANT SELECT, INSERT, UPDATE, DELETE ON  SIN_TRAMITA_ESTSINIESTRO TO CONF_DWH;