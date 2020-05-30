-- Create table
create table FACT_SINI_PAG_BDG_DUMMY
(
  sinpag_bdg_id              NUMBER not null,
  sinpag_num_poliza          VARCHAR2(20),
  sinpag_num_certificado     VARCHAR2(1000),
  sinpag_num_orden           NUMBER(8),
  sinpag_num_siniestro       VARCHAR2(14),
  sinpag_siniestro_base      NUMBER,
  sinpag_siniestro_deducible NUMBER,
  sinpag_fk_fecdoc           DATE,
  sinpag_fk_sucursal         NUMBER,
  sinpag_fk_cliente          VARCHAR2(12),
  sinpag_fk_asegurado        VARCHAR2(12),
  fecha_control              DATE,
  fecha_registro             DATE,
  fecha_inicio               DATE,
  fecha_fin                  DATE,
  sinpag_fk_agente           NUMBER,
  sinpag_fk_fecsiniestro     NUMBER,
  sinpag_fk_fecreclamo       NUMBER
);
/

-- Create/Recreate primary, unique and foreign key constraints 
alter table FACT_SINI_PAG_BDG_DUMMY
add constraint SINPAG_BDG_ID_PK primary key (SINPAG_BDG_ID);
/

-- Create sequence 
create sequence SINPAG_ID
minvalue 1
maxvalue 1000000000000000000000
start with 41
increment by 1
cache 20;
/