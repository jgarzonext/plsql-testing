-- Create table
create table FACT_POLIZA_PARTI_DUMMY
(
  fplp_id                        NUMBER not null,
  fplp_num_poliza                NUMBER not null,
  nrecibo                        NUMBER not null,
  fplp_num_certificado           VARCHAR2(1000),
  fplp_num_certificado_ant       VARCHAR2(1000),
  prima                          NUMBER not null,
  fplp_val_aseg                  NUMBER,
  fplp_participacion_cli         NUMBER,
  fplp_participacion_age         CHAR(3),
  fplp_participacion_tom         NUMBER,
  fplp_fk_sucursal               NUMBER,
  fplp_fk_fecha_ini              NUMBER,
  fplp_fk_fecha_ter              NUMBER,
  fplp_fk_fecha_exp              NUMBER,
  fplp_fk_fecha_crea             NUMBER,
  fplp_fk_cliente                VARCHAR2(12),
  fplp_fk_agente                 NUMBER,
  fplp_fk_tomador                VARCHAR2(12),
  fplp_fk_usuario                NUMBER,
  fplp_fk_tipo_certificado       CHAR(1),
  fplp_fk_vinculo_persona_cli    NUMBER,
  fplp_fk_vinculo_persona_age    NUMBER,
  fplp_fk_vinculo_persona_tom    NUMBER,
  fplp_fk_estado_vigencia_poliza NUMBER,
  fecha_registro                 DATE,
  estado                         CHAR(6),
  start_estado                   DATE,
  end_estado                     DATE,
  fecha_control                  DATE,
  fecha_inicial                  DATE,
  fecha_fin                      DATE,
  fplp_valiva                    NUMBER not null,
  fplp_tipo                      VARCHAR2(14),
  fplp_codpla                    VARCHAR2(2),
  fplp_tipcoa                    NUMBER
);
/

-- Create/Recreate primary, unique and foreign key constraints 
alter table FACT_POLIZA_PARTI_DUMMY
add constraint FPLP_ID_PK primary key (FPLP_ID);
/

-- Create sequence 
create sequence FPLP_ID
minvalue 1
maxvalue 1000000000000000000000
start with 1
increment by 1
cache 20;
/

