--------------------------------------------------------
--  DDL for Table INT_CODIGOS_EMP
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_CODIGOS_EMP" 
   (	"CCODIGO" VARCHAR2(40 BYTE), 
	"CEMPRES" VARCHAR2(20 BYTE), 
	"CVALAXIS" VARCHAR2(20 BYTE), 
	"CVALEMP" VARCHAR2(100 BYTE), 
	"CVALDEF" VARCHAR2(20 BYTE), 
	"CVALAXISDEF" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_CODIGOS_EMP"."CCODIGO" IS 'Campo de la interfaz';
   COMMENT ON COLUMN "AXIS"."INT_CODIGOS_EMP"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."INT_CODIGOS_EMP"."CVALAXIS" IS 'Valor del campo en axis';
   COMMENT ON COLUMN "AXIS"."INT_CODIGOS_EMP"."CVALEMP" IS 'Valor del campo en la empresa';
   COMMENT ON COLUMN "AXIS"."INT_CODIGOS_EMP"."CVALDEF" IS 'Valor del campo por defecto. Se usa si el valor axis tiene m�s de un valor en la empresa. Si es nulo significa que este caso no est� permitido';
   COMMENT ON COLUMN "AXIS"."INT_CODIGOS_EMP"."CVALAXISDEF" IS 'Valor del campo por defecto. Se usa si el valor empre tiene m�s de un valor en axis. Si es nulo significa que este caso no est� permitido';
  GRANT UPDATE ON "AXIS"."INT_CODIGOS_EMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CODIGOS_EMP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_CODIGOS_EMP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_CODIGOS_EMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_CODIGOS_EMP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_CODIGOS_EMP" TO "PROGRAMADORESCSI";
