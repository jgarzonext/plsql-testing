BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_RIESGOS_UAT','TABLE');
END;
/
create table MIG_RIESGOS_UAT
(
  mig_pk   VARCHAR2(50),
  mig_fk   VARCHAR2(50),
  mig_fk2  VARCHAR2(50),
  nriesgo  NUMBER(6),
  nmovima  NUMBER(4),
  fefecto  DATE,
  nmovimb  NUMBER(4),
  fanulac  DATE,
  tnatrie  VARCHAR2(300),
  pdtocom  NUMBER(6,2),
  precarg  NUMBER(6,2),
  pdtotec  NUMBER(6,2),
  preccom  NUMBER(6,2),
  sucrea   VARCHAR2(20),
  fechaing DATE,
  modulo   VARCHAR2(20),
  tdescrie CLOB
);
/