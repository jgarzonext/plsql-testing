BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_PLANILLAS','TABLE');
END;
/
create table MIG_PLANILLAS
(
  ncarga         NUMBER not null,
  cestmig        NUMBER not null,
  mig_pk         VARCHAR2(50) not null,
  cmap           VARCHAR2(50) not null,
  cramo          NUMBER(8) not null,
  sproduc        NUMBER(6) not null,
  fplanilla      DATE not null,
  ccompani       NUMBER not null,
  cobservaciones VARCHAR2(500),
  consecutivo    NUMBER not null,
  cmoneda        NUMBER not null
)
/
comment on column MIG_PLANILLAS.mig_pk
  is 'Clave única de MIG_PLANILLAS';
comment on column MIG_PLANILLAS.cmap
  is 'Código del Reporte';
comment on column MIG_PLANILLAS.cramo
  is 'Identificador del ramo';
comment on column MIG_PLANILLAS.sproduc
  is 'Identificador único producto (Definición Productos)';
comment on column MIG_PLANILLAS.fplanilla
  is 'Fecha de la Planilla';
comment on column MIG_PLANILLAS.ccompani
  is 'Código de Compañía';
comment on column MIG_PLANILLAS.cobservaciones
  is 'Observaciones';
comment on column MIG_PLANILLAS.consecutivo
  is 'Consecutivo de la Planilla';
comment on column MIG_PLANILLAS.cmoneda
  is 'Cod. Moneda';
