DROP TABLE "CONVPRIM";

-- Create table
create table CONVPRIM
(
  IDCONVCOMESP NUMBER(6,0) NOT NULL,
  PPRIMA NUMBER NOT NULL,
  PPRIMAUSD NUMBER,
  PPRIMAEUR  NUMBER,
  CONSTRAINT PK_CONVPRIM PRIMARY KEY (IDCONVCOMESP)
);
/
comment on table CONVPRIM
  is 'Tabla para almacenamiento de primas en USD y EUR para un convenio';
-- Add comments to the columns 
comment on column CONVPRIM.IDCONVCOMESP
  is 'Identificador del convenio';
comment on column CONVPRIM.PPRIMA
  is 'Prima normal del convenio';
comment on column CONVPRIM.PPRIMAUSD
  is 'Prima en moneda USD del convenio';
comment on column CONVPRIM.PPRIMAEUR
  is 'Prima en moneda EUR del convenio';  

COMMIT;
/