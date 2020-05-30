BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_SIN_TRAMITA_MOVIMIENTO_UAT','TABLE');
END;
/
create table MIG_SIN_TRAMITA_MOVIMIENTO_UAT
(
  mig_pk    VARCHAR2(50),
  mig_fk    VARCHAR2(50),
  ntramit   NUMBER(3),
  nmovtra   NUMBER(3),
  cunitra   VARCHAR2(4),
  ctramitad VARCHAR2(4),
  cesttra   NUMBER(3),
  csubtra   NUMBER(2),
  festtra   DATE,
  ccauest   NUMBER(4),
  cusualt   VARCHAR2(20),
  falta     DATE,
  sucrea    VARCHAR2(20),
  fechaing  DATE,
  modulo    VARCHAR2(20)
);
/