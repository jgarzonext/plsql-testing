BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CUACESFAC_UAT','TABLE');
END;
/
create table MIG_CUACESFAC_UAT
(
  mig_pk         VARCHAR2(50),
  mig_fk         VARCHAR2(50),
  mig_fk2        VARCHAR2(50),
  sfacult        NUMBER(6),
  ccompani       NUMBER(3),
  ccomrea        NUMBER(2),
  pcesion        NUMBER(8,5),
  icesfij        NUMBER,
  icomfij        NUMBER,
  isconta        NUMBER,
  preserv        NUMBER(5,2),
  pintres        NUMBER(7,5),
  pcomisi        NUMBER(5,2),
  cintres        NUMBER(2),
  ccorred        NUMBER(4),
  cfreres        NUMBER(2),
  cresrea        NUMBER(1),
  cconrec        NUMBER(1),
  fgarpri        DATE,
  fgardep        DATE,
  pimpint        NUMBER(5,2),
  ctramocomision NUMBER(5),
  tidfcom        VARCHAR2(50)
);
/