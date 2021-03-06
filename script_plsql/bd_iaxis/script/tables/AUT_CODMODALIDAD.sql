--------------------------------------------------------
--  DDL for Table AUT_CODMODALIDAD
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUT_CODMODALIDAD" 
   (	"CMODALIDAD" VARCHAR2(10 BYTE), 
	"NORDEN" NUMBER(2,0), 
	"CSIMULA" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AUT_CODMODALIDAD"."CMODALIDAD" IS 'C�digo de la modalidad. El c�digo de modalidad cero siempre ser� la modalidad libre.';
   COMMENT ON COLUMN "AXIS"."AUT_CODMODALIDAD"."NORDEN" IS 'N�mero de orden para visualizar';
   COMMENT ON COLUMN "AXIS"."AUT_CODMODALIDAD"."CSIMULA" IS 'Nos indica si debe mostrarse en simulaci�n o en nueva producci�n. 0: En todos los sitios, 1: No se muestra en simulaci�n, 2:Solo para Simulaci�n.';
   COMMENT ON TABLE "AXIS"."AUT_CODMODALIDAD"  IS 'C�digo de modalidades permitidas para un producto de autos';
  GRANT UPDATE ON "AXIS"."AUT_CODMODALIDAD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_CODMODALIDAD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUT_CODMODALIDAD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUT_CODMODALIDAD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_CODMODALIDAD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUT_CODMODALIDAD" TO "PROGRAMADORESCSI";
