BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_SIN_TRAMITA_CITACIONES_UAT','TABLE');
END;
/
create table MIG_SIN_TRAMITA_CITACIONES_UAT
(
  mig_pk    VARCHAR2(14),
  mig_fk    VARCHAR2(14),
  ncitacion NUMBER,
  fcitacion DATE,
  hcitacion VARCHAR2(5),
  sperson   NUMBER,
  cpais     NUMBER(3),
  cprovin   NUMBER,
  cpoblac   NUMBER,
  tlugar    VARCHAR2(200),
  falta     DATE,
  taudien   VARCHAR2(2000),
  coral     NUMBER(1),
  cestado   NUMBER(1),
  cresolu   NUMBER(1),
  fnueva    DATE,
  tresult   VARCHAR2(2000),
  cmedio    NUMBER(1)
)
/