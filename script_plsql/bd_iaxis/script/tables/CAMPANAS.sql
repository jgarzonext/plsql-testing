--------------------------------------------------------
--  DDL for Table CAMPANAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CAMPANAS" 
   (	"CCODIGO" NUMBER, 
	"TDESCRIP" VARCHAR2(200 BYTE), 
	"CESTADO" NUMBER(1,0) DEFAULT 0, 
	"FINICAM" DATE, 
	"FFINCAM" DATE, 
	"IVALINI" NUMBER, 
	"IPREMIO" NUMBER, 
	"IVTAPRV" NUMBER, 
	"IVTAREA" NUMBER, 
	"CMEDIOS" VARCHAR2(50 BYTE), 
	"NAGECAM" NUMBER, 
	"NAGEGAN" NUMBER, 
	"TOBSERV" VARCHAR2(200 BYTE), 
	"CEXCCRR" NUMBER, 
	"CEXCNEWP" NUMBER, 
	"FINIREC" DATE, 
	"FFINREC" DATE, 
	"CCONVEN" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CAMPANAS"."CCODIGO" IS 'C�digo �nico de la campa�a';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."TDESCRIP" IS 'Descripci�n de la campa�a';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."CESTADO" IS 'Estado de la campa�a:Pdte. Activar (0),Activa (1),Finalizada (2),   Anulada (3)';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."FINICAM" IS 'Fecha Inicio campa�a';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."FFINCAM" IS 'Fecha Final campa�a';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."IVALINI" IS 'Coste de lanzamiento de la campa�a';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."IPREMIO" IS 'Coste del premio de la campa�a';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."IVTAPRV" IS 'Importe Previsto de las ventas de la campa�a';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."IVTAREA" IS 'Importe Real de las ventas de la campa�a';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."CMEDIOS" IS 'Medios de comunicaci�n de la campa�a (max.8 medios diferentes)';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."NAGECAM" IS 'Num. de agentes  participantes en la campa�a';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."NAGEGAN" IS 'Num. de agentes  ganadores en la campa�a.';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."TOBSERV" IS 'Observaciones de la campa�a';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."CEXCCRR" IS 'Excluir p�lizas con corretaje';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."CEXCNEWP" IS 'Excluir p�lizas futuras';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."FINIREC" IS 'Fecha inicio Recaudo';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."FFINREC" IS 'Fecha fin Recaudo';
   COMMENT ON COLUMN "AXIS"."CAMPANAS"."CCONVEN" IS 'Tipo de Convenci�n';
   COMMENT ON TABLE "AXIS"."CAMPANAS"  IS 'Tabla para registrar la gesti�n de campa�as';
  GRANT UPDATE ON "AXIS"."CAMPANAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CAMPANAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CAMPANAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CAMPANAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CAMPANAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CAMPANAS" TO "PROGRAMADORESCSI";
