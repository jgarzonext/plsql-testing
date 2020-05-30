-- Create table
create table FACT_SINIESTROS_PGD_DUMMY
(
  sin_pag_id                     NUMBER not null,
  sinpag_num_poliza              NUMBER,
  sinpag_num_certificado         VARCHAR2(20),
  sinpag_num_orden               NUMBER,
  sinpag_num_siniestro           VARCHAR2(20),
  sinpag_siniestro_neta          NUMBER,
  sinpag_siniestro_iva           NUMBER,
  sinpag_siniestro_reteiva       NUMBER,
  sinpag_siniestro_retfte        NUMBER,
  sinpag_siniestro_ica           NUMBER,
  sinpag_siniestro_tot           NUMBER,
  sinpag_ori_doc_cruce           CHAR(1),
  sinpag_tipo_doc_cruce          CHAR(1),
  sinpag_num_doc_cruce           CHAR(1),
  sinpag_siniestro_cruce         CHAR(1),
  sinpag_siniestro_iva_cruce     CHAR(1),
  sinpag_siniestro_reteiva_cruce CHAR(1),
  sinpag_siniestro_retfte_cruce  CHAR(1),
  sinpag_siniestro_ica_cruce     CHAR(1),
  sinpag_fk_tiempo               NUMBER,
  sinpag_fk_geografica           NUMBER,
  sinpag_fk_moneda               NUMBER,
  sinpag_fk_persona              VARCHAR2(20),
  sinpag_fk_tecnica              VARCHAR2(10),
  fecha_control                  DATE,
  fecha_registro                 DATE,
  fecha_inicio                   DATE,
  fecha_fin                      DATE,
  sinpag_fk_agente               NUMBER,
  sinpag_fk_fecsiniestro         NUMBER,
  sinpag_fk_fecdoc               NUMBER,
  sinpag_fk_sucursal             NUMBER,
  sinpag_fk_cliente              VARCHAR2(12),
  sinpag_fk_asegurado            VARCHAR2(12),
  sinpag_siniestro_base          NUMBER,
  sinpag_siniestro_deducible     NUMBER
);
/

-- Create/Recreate primary, unique and foreign key constraints 
alter table FACT_SINIESTROS_PGD_DUMMY
add constraint SIN_PAG_ID_PK primary key (SIN_PAG_ID)
;
/

-- Create sequence 
create sequence SEQ_FACT_SIN_PAG
minvalue 1
maxvalue 1000000000000000000000
start with 1
increment by 1
cache 20;
/
