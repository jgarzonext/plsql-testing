BEGIN
  PAC_SKIP_ORA.p_comprovadrop('RANGO_DIAN','TABLE');
END;
/

--CREATE TABLE RANGO_DIAN
-- Create table
create table RANGO_DIAN
(
  srdian    NUMBER not null,
  nresol    NUMBER not null,
  cagente   NUMBER not null,
  fresol    DATE not null,
  finivig   DATE not null,
  ffinvig   DATE not null,
  falta     DATE not null,
  fmod      DATE,
  tdescrip  VARCHAR2(500),
  ninicial  NUMBER not null,
  nfinal    NUMBER not null,
  cusu      VARCHAR2(13) not null,
  musu      VARCHAR2(13),
  nusu      VARCHAR2(13),
  testado   VARCHAR2(1) not null,
  cenvcorr  VARCHAR2(2) not null,
  naviso    NUMBER not null,
  ncertavi  NUMBER not null,
  ncontador NUMBER not null,
  sproduc   NUMBER,
  cramo     NUMBER,
  cgrupo    VARCHAR2(10),
  cactivi   NUMBER
);
-- Add comments to the columns 
comment on column RANGO_DIAN.srdian
  is 'Secuencia del Rango Dian';
comment on column RANGO_DIAN.nresol
  is 'N�MERO DE LA RESOLUCI�N DADA POR LA DIAN';
comment on column RANGO_DIAN.cagente
  is 'C�DIGO DE SUCURSAL';
comment on column RANGO_DIAN.fresol
  is 'FECHA DE LA EMISI�N DE LA RESOLUCI�N';
comment on column RANGO_DIAN.finivig
  is 'FECHA DE INICIO DE VIGENCIA DEL RANGO';
comment on column RANGO_DIAN.ffinvig
  is 'FECHA DE FINAL DE VIGENCIA DEL RANGO';
comment on column RANGO_DIAN.falta
  is 'FECHA DE CREACI�N';
comment on column RANGO_DIAN.fmod
  is 'FECHA DE MODIFICACI�N';
comment on column RANGO_DIAN.tdescrip
  is 'DESCRIPCI�N DE LA RESOLUCI�N';
comment on column RANGO_DIAN.ninicial
  is 'N�MERO INICIAL EMITIDO POR LA DIAN';
comment on column RANGO_DIAN.nfinal
  is 'N�MERO FINAL EMITIDO POR LA DIAN';
comment on column RANGO_DIAN.cusu
  is 'USUARIO RESPONSABLE DE LA VERIFICACI�N';
comment on column RANGO_DIAN.musu
  is 'USUARIO DE MODIFICACI�N';
comment on column RANGO_DIAN.nusu
  is 'USUARIO DE NOTIFICACI�N';
comment on column RANGO_DIAN.testado
  is 'ESTADO DE LA RESOLUCI�N A: ACTIVO  I: INACTIVO (V:8002013)';
comment on column RANGO_DIAN.cenvcorr
  is 'CAMPO QUE INDICA SI SE LE ENVIAR� O NO CORREO AL USUARIO RESPONSABLE SI/NO';
comment on column RANGO_DIAN.naviso
  is 'N�MERO DE D�AS QUE SE ENVIAR� CORREO INFORMANDO QUE SE ACABA NUMERACI�N';
comment on column RANGO_DIAN.ncertavi
  is 'CUANTA NUMERACI�N HACE FALTA PARA ACABAR CON EL RANGO';
comment on column RANGO_DIAN.ncontador
  is 'CONTADOR DEL RANGO ASIGNADO POR LA DIAN, SE ACTUALIZA CADA VEZ QUE SE EMITE UN RECIBO PARA ESTE RANGO';
comment on column RANGO_DIAN.cgrupo
  is 'Codigo agrupacion productos dian';
-- Create/Recreate primary, unique and foreign key constraints 
alter table RANGO_DIAN
  add constraint PK_RANGO_DIAN primary key (SRDIAN);
alter table RANGO_DIAN
  add constraint IU1_RANGO_DIAN unique (NRESOL, CAGENTE, TESTADO, CGRUPO);

