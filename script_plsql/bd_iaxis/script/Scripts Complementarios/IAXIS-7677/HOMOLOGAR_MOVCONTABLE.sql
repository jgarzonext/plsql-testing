create table HOMOLOGAR_MOVCONTABLE
(
  ctiprec VARCHAR2(4),
  valor   VARCHAR2(50),
  dtiprec VARCHAR2(500)
);
/


insert into HOMOLOGAR_MOVCONTABLE (CTIPREC, VALOR, DTIPREC)
values ('0000', 'POSITIVO', 'POLIZA NUEVA');

insert into HOMOLOGAR_MOVCONTABLE (CTIPREC, VALOR, DTIPREC)
values ('1010', 'POSITIVO', 'SUPLEMENTO POSITIVO');

insert into HOMOLOGAR_MOVCONTABLE (CTIPREC, VALOR, DTIPREC)
values ('1521', 'POSITIVO', 'ANULACION SUPLEMENTO NEGATIVO CON RECAUDO');

insert into HOMOLOGAR_MOVCONTABLE (CTIPREC, VALOR, DTIPREC)
values ('1522', 'NEGATIVO', 'ANULACION SUPLEMENTO POSITIVO SIN RECAUDO');

insert into HOMOLOGAR_MOVCONTABLE (CTIPREC, VALOR, DTIPREC)
values ('9010', 'NEGATIVO', 'SUPLEMENTO NEGATIVO');

insert into HOMOLOGAR_MOVCONTABLE (CTIPREC, VALOR, DTIPREC)
values ('9031', 'NEGATIVO', 'ANULACION TOTAL CON RECAUDO');

insert into HOMOLOGAR_MOVCONTABLE (CTIPREC, VALOR, DTIPREC)
values ('9032', 'NEGATIVO', 'ANULACION TOTAL SIN  RECAUDO');

insert into HOMOLOGAR_MOVCONTABLE (CTIPREC, VALOR, DTIPREC)
values ('9521', 'NEGATIVO', 'ANULACION SUPLEMENTO POSITIVO CON RECAUDO');

insert into HOMOLOGAR_MOVCONTABLE (CTIPREC, VALOR, DTIPREC)
values ('9522', 'POSITIVO', 'ANULACION SUPLEMENTO NEGATIVO SIN RECAUDO');

insert into HOMOLOGAR_MOVCONTABLE (CTIPREC, VALOR, DTIPREC)
values ('9531', 'NEGATIVO', 'CANCELACIONES SIN RECAUDO');

insert into HOMOLOGAR_MOVCONTABLE (CTIPREC, VALOR, DTIPREC)
values ('9532', 'NEGATIVO', 'CANCELACIONES CON RECAUDO');

commit;
/