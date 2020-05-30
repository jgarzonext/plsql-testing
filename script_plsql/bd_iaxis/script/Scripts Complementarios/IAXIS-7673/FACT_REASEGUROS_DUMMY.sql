-- Create table
create table FACT_REASEGUROS_DUMMY
(
  reaseg_id            NUMBER not null,
  reas_poliza          VARCHAR2(20),
  reas_certificado     VARCHAR2(20),
  reas_id              NUMBER,
  reas_concepto        NUMBER,
  reas_fecha           DATE,
  reas_monto           NUMBER,
  reas_fk_tiempo       NUMBER,
  reas_fk_geografica   NUMBER,
  reas_fk_moneda       NUMBER,
  reas_fk_tecnica      NUMBER,
  reas_fk_reasegurador VARCHAR2(20),
  fecha_control        DATE,
  fecha_registro       DATE,
  fecha_inicio         DATE,
  fecha_fin            DATE
);
/
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACT_REASEGUROS_DUMMY
add constraint REASEG_ID primary key (REASEG_ID);
/

-- Create sequence 
create sequence REASEG_ID
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 1
cache 20;
  