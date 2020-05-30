BEGIN
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_CUADROCES_UAT','TABLE');
END;
/
create table MIG_CUADROCES_UAT
(
  mig_pk         VARCHAR2(50),
  mig_fk         VARCHAR2(50),
  mig_fk2        VARCHAR2(50),
  nversio        NUMBER(2),
  scontra        NUMBER(6),
  ctramo         NUMBER(5),
  ccomrea        NUMBER(2),
  pcesion        NUMBER(16,13),
  nplenos        NUMBER(5),
  icesfij        NUMBER,
  icomfij        NUMBER,
  isconta        NUMBER,
  preserv        NUMBER(5,2),
  pintres        NUMBER(7,5),
  iliacde        NUMBER,
  ppagosl        NUMBER(5,2),
  ccorred        NUMBER(4),
  cintres        NUMBER(2),
  cintref        NUMBER(3),
  cresref        NUMBER(3),
  ireserv        NUMBER,
  ptasaj         NUMBER(5,2),
  fultliq        DATE,
  iagrega        NUMBER,
  imaxagr        NUMBER,
  ctipcomis      NUMBER(1),
  pctcomis       NUMBER(5,2),
  ctramocomision NUMBER(5),
  cfreres        NUMBER(2),
  pctgastos      NUMBER(5,2),
  anopaquete     VARCHAR2(4),
  numpaquete     VARCHAR2(6),
  nivel          VARCHAR2(3),
  contrato       VARCHAR2(7),
  nit            VARCHAR2(20)
);
/