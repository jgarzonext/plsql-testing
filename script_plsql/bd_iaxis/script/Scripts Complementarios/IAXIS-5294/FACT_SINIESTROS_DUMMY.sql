-- Create table
create table FACT_SINIESTROS_DUMMY
(
  sin_id                   NUMBER not null,
  sin_num_sini             VARCHAR2(15),
  sin_num_poliza           VARCHAR2(10),
  sin_num_certificado      VARCHAR2(10),
  sin_num_orden            NUMBER,
  sin_prima_neta_emit_pol  NUMBER,
  sin_prima_neta_deve_pol  NUMBER,
  sin_valor_asegurado      NUMBER,
  sin_valor_pago_pol       NUMBER,
  sin_valor_gasto_pol      NUMBER,
  sin_valor_rese_pol       NUMBER,
  sin_valor_recu_pol       NUMBER,
  sin_valor_dedu_pol       NUMBER,
  sin_reservaanoactual     NUMBER,
  sin_reservaanoanterior   NUMBER,
  sin_ind_sini_emit        NUMBER,
  sin_ind_sini_ctacia      NUMBER,
  sin_por_coas_acep        NUMBER,
  sin_por_coas_cedi        NUMBER,
  sin_afectacioncontrato   VARCHAR2(60),
  sin_clasecontrato        VARCHAR2(150),
  sin_lugarsiniestro       VARCHAR2(150),
  sin_fecentregaanticipo   DATE,
  sin_fecactainiciacion    DATE,
  sin_fecentregacontrato   DATE,
  sin_honorarioabogado     NUMBER,
  sin_pretensiones         NUMBER,
  sin_fecnotificacion      DATE,
  sin_causaproceso         VARCHAR2(150),
  sin_tipovinculaproceso   VARCHAR2(60),
  sin_fk_tiempo            NUMBER,
  sin_fk_geografica        NUMBER,
  sin_fk_moneda            NUMBER,
  sin_fk_persona           NUMBER,
  sin_fk_tecnica           NUMBER,
  sin_fk_rangovlrasegurado NUMBER,
  sin_fk_reasegurador      NUMBER,
  sin_fk_causasiniestro    NUMBER,
  sin_fk_estadosiniestro   NUMBER,
  fecha_control            DATE,
  fecha_registro           DATE,
  fecha_inicio             DATE,
  fecha_fin                DATE,
  sin_fk_asegurado         NUMBER,
  sin_fk_cliente           NUMBER,
  sin_fk_intermediario     NUMBER,
  sin_fechareclamo         DATE,
  sin_fk_beneficiario      NUMBER
);
/

-- Create/Recreate primary, unique and foreign key constraints 
alter table FACT_SINIESTROS_DUMMY
add constraint SIN_ID_PK primary key (SIN_ID);
/  
  
-- Create sequence 
create sequence SIN_ID
minvalue 1
maxvalue 1000000000000000000000000
start with 1
increment by 1
cache 20;
/
