CREATE TABLE DATOS_INFORME_COMITE
(
  PROCESO              NUMBER,
  NLINEA               NUMBER,
  ID_CARGA             NUMBER,
  DESC_CARGA           VARCHAR2(1000),
  F_CARGA              DATE,
  NSINIES              VARCHAR2(1000),
  NTRAMIT              VARCHAR2(1000),
  CTIPRES              VARCHAR2(1000),
  TTIPRES              VARCHAR2(1000),
  NMOVRES              VARCHAR2(1000),
  CGARANT              VARCHAR2(1000),
  CCALRES              VARCHAR2(1000),
  FMOVRES              VARCHAR2(1000),
  CMONRES              VARCHAR2(1000),
  IRESERVA             VARCHAR2(1000),
  IPAGO                VARCHAR2(1000),
  IINGRESO             VARCHAR2(1000),
  IRECOBRO             VARCHAR2(1000),
  ICAPRIE              VARCHAR2(1000),
  IPENALI              VARCHAR2(1000),
  FRESINI              VARCHAR2(1000),
  FRESFIN              VARCHAR2(1000),
  FULTPAG              VARCHAR2(1000),
  SIDEPAG              VARCHAR2(1000),
  SPROCES              VARCHAR2(1000),
  FCONTAB              VARCHAR2(1000),
  IPREREC              VARCHAR2(1000),
  CTIPGAS              VARCHAR2(1000),
  MODO                 VARCHAR2(1000),
  TORIGEN              VARCHAR2(1000),
  IFRANQ               VARCHAR2(1000),
  NDIAS                VARCHAR2(1000),
  CMOVRES              VARCHAR2(1000),
  ITOTIMP              VARCHAR2(1000),
  PIVA                 VARCHAR2(1000),
  PPRETENC             VARCHAR2(1000),  
  PRETEIVA             VARCHAR2(1000),
  PRETEICA             VARCHAR2(1000),
  IVA_CTIPIND          VARCHAR2(1000),
  RETENC_CTIPIND       VARCHAR2(1000),
  RETEIVA_CTIPIND      VARCHAR2(1000),
  RETEICA_CTIPIND      VARCHAR2(1000),
  ITOTRET              VARCHAR2(1000),
  CSOLIDARIDAD         VARCHAR2(1000)
);

--Grant 
grant select, insert, update, delete on AXIS.DATOS_INFORME_COMITE to AXIS00;


-- Utilizar para crear synonym

create or replace synonym AXIS.DATOS_INFORME_COMITE for AXIS00.DATOS_INFORME_COMITE;

/
