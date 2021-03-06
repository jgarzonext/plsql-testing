--------------------------------------------------------
--  DDL for Table CONVENIO_CNAE_SEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."CONVENIO_CNAE_SEG" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"CCNAE" VARCHAR2(4 BYTE), 
	"CCODCONV" VARCHAR2(7 BYTE), 
	"FINIREL" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON TABLE "AXIS"."CONVENIO_CNAE_SEG"  IS 'Tabla de relacion entre convenios_cnae y seguros-movimientos';
  GRANT UPDATE ON "AXIS"."CONVENIO_CNAE_SEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONVENIO_CNAE_SEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONVENIO_CNAE_SEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONVENIO_CNAE_SEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONVENIO_CNAE_SEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONVENIO_CNAE_SEG" TO "PROGRAMADORESCSI";
