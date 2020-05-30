BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_PAGADOR_ALT','TABLE');
END;
/
create table MIG_PAGADOR_ALT
( 
  ncarga            NUMBER,
  cestmig           NUMBER,
  mig_pk  VARCHAR2(50),
  mig_fk  VARCHAR2(50),
  mig_fk2 VARCHAR2(50),
  cestado NUMBER(2)
);
/