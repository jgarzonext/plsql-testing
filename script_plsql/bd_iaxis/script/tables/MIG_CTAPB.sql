BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CTAPB','TABLE');
END;
/
create table MIG_CTAPB
(
  ncarga    NUMBER not null,
  cestmig   NUMBER not null,
  mig_pk    VARCHAR2(50) not null,
  mig_fk    VARCHAR2(50) not null,
  mig_fk2   VARCHAR2(50) not null,
  fcierre   DATE not null,
  cconceppb NUMBER(2) not null,
  tipo      NUMBER(1) not null,
  iimport   NUMBER not null,
  cempres   NUMBER not null,
  ctramo    NUMBER(2) not null,
  sproduc   NUMBER(6) not null
)
/
-- Add comments to the columns 
comment on column MIG_CTAPB.mig_pk
  is 'Clave única de MIG_CTAPB';
comment on column MIG_CTAPB.mig_fk
  is 'Clave foránea de MIG_CODICONTRATOS';
comment on column MIG_CTAPB.mig_fk2
  is 'Clave foránea de MIG_COMPANIAS';
comment on column MIG_CTAPB.fcierre
  is 'Fecha del Cierre';
comment on column MIG_CTAPB.cconceppb
  is 'Concepto del movimiento VF:124';
comment on column MIG_CTAPB.tipo
  is 'Tipo de Concepto 1-Entrada, 2-Salida';
comment on column MIG_CTAPB.iimport
  is 'Importe de cada concepto';
comment on column MIG_CTAPB.cempres
  is 'Cod. Empresa';
comment on column MIG_CTAPB.ctramo
  is 'Código del Tramo';
comment on column MIG_CTAPB.sproduc
  is 'Secuencia del producto';

/