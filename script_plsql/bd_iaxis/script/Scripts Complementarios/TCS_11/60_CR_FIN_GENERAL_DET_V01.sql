/*
  TCS_11;IAXIS-2119 - JLTS - Creación de la tabla FIN_GENERAL_DET                         
*/
BEGIN
  PAC_SKIP_ORA.p_comprovadrop('FIN_GENERAL_DET','TABLE');
END;
/
-- Create table
create table FIN_GENERAL_DET
(
  sfinanci NUMBER not null,
  nmovimi  NUMBER not null,
  tdescrip VARCHAR2(2000),
  cfotorut NUMBER,
  frut     DATE,
  ttitulo  VARCHAR2(2000),
  cfotoced NUMBER,
  fexpiced DATE,
  cpais    NUMBER(3),
  cprovin  NUMBER,
  cpoblac  NUMBER,
  tinfoad  VARCHAR2(2000),
  cciiu    NUMBER,
  ctipsoci NUMBER,
  cestsoc  NUMBER,
  tobjsoc  VARCHAR2(2000),
  texperi  VARCHAR2(3000),
  fconsti  DATE,
  tvigenc  VARCHAR2(2000),
  fccomer  DATE
);
comment on table FIN_GENERAL_DET
  is 'Datos generales de la ficha financiera con  los últimos datos de la tabla FIN_GENERAL_DET cuando cambien el FRUT o FCCOMER';
-- Add comments to the columns 
comment on column FIN_GENERAL_DET.sfinanci
  is 'Código ficha financiera';
comment on column FIN_GENERAL_DET.nmovimi
  is 'Movimiento de la tabla (FRUT y/o FFCOMER)';
comment on column FIN_GENERAL_DET.tdescrip
  is 'Descripci¿n de la ficha financiera';
comment on column FIN_GENERAL_DET.cfotorut
  is 'Tiene fotocopia del RUT 0=No, 1=Si';
comment on column FIN_GENERAL_DET.frut
  is 'Fecha RUT';
comment on column FIN_GENERAL_DET.ttitulo
  is 'T¿tulo Obtenido';
comment on column FIN_GENERAL_DET.cfotoced
  is 'Tiene fotocopia de la cedula 0=No, 1=Si';
comment on column FIN_GENERAL_DET.fexpiced
  is 'Fecha de expedici¿n de la cedula';
comment on column FIN_GENERAL_DET.cpais
  is 'Pa¿s';
comment on column FIN_GENERAL_DET.cprovin
  is 'Departamento';
comment on column FIN_GENERAL_DET.cpoblac
  is 'Municipio';
comment on column FIN_GENERAL_DET.tinfoad
  is 'Informaci¿n variada';
comment on column FIN_GENERAL_DET.cciiu
  is 'C¿digo CIIU - Actividad econ¿mica V.F. 8001072';
comment on column FIN_GENERAL_DET.ctipsoci
  is 'Tipo Sociedad V.F. 8001073';
comment on column FIN_GENERAL_DET.cestsoc
  is 'Estado de la sociedad V.F. 8001074';
comment on column FIN_GENERAL_DET.tobjsoc
  is 'Objeto social';
comment on column FIN_GENERAL_DET.texperi
  is 'Experiencia';
comment on column FIN_GENERAL_DET.fconsti
  is 'Fecha de constitucion';
comment on column FIN_GENERAL_DET.fccomer
  is 'Fecha c¿¿mara de comercio';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FIN_GENERAL_DET
  add constraint FIN_GENERAL_DET_PK primary key (SFINANCI,NMOVIMI);
alter table FIN_GENERAL_DET
  add constraint FIN_GENERAL_DET_PAISES_FK foreign key (CPAIS)
  references PAISES (CPAIS);
alter table FIN_GENERAL_DET
  add constraint FIN_GENERAL_DET_FIN_GENERAL_FK foreign key (SFINANCI)
  references FIN_GENERAL (SFINANCI);
alter table FIN_GENERAL_DET
  add constraint FIN_GENERAL_DET_POBLACIONES_FK foreign key (CPROVIN, CPOBLAC)
  references POBLACIONES (CPROVIN, CPOBLAC);
