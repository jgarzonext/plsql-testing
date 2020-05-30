BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_SIN_TRAM_VALPRET_UAT','TABLE');
END;
/
create table MIG_SIN_TRAM_VALPRET_UAT
(
  mig_pk  VARCHAR2(50),
  mig_fk  VARCHAR2(50),
  mig_fk2 VARCHAR2(50),
  norden  NUMBER(3),
  cgarant NUMBER(4),
  ipreten NUMBER,
  fbaja   DATE,
  fmodifi DATE,
  cusualt VARCHAR2(20)
);
/