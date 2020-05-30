--------------------------------------------------------
--  DDL for Table DIARIOPROFTRAMI
--------------------------------------------------------

  CREATE TABLE "AXIS"."DIARIOPROFTRAMI" 
   (	"SPERSON" NUMBER(10,0), 
	"CTIPDES" NUMBER(2,0), 
	"NLINPRO" NUMBER(6,0), 
	"NSINIES" NUMBER(8,0), 
	"NTRAMIT" NUMBER(4,0), 
	"CTIPLIN" NUMBER(2,0), 
	"CESTADO" NUMBER(1,0), 
	"CFORENV" NUMBER(1,0), 
	"TDOCUME" VARCHAR2(20 BYTE), 
	"FPROSAL" DATE, 
	"SPROSAL" NUMBER(6,0), 
	"FPROENT" DATE, 
	"SPROENT" NUMBER(6,0), 
	"FPROPAG" DATE, 
	"SPROPAG" NUMBER(6,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"TCOMMEN" VARCHAR2(500 BYTE), 
	"SASIGNA" NUMBER(6,0), 
	"TFICHER" VARCHAR2(300 BYTE), 
	"SCORREO" NUMBER(7,0), 
	"FPRODOC" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."SPERSON" IS 'Id del destinatari junto con su tipo';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."CTIPDES" IS 'Id del destinatari junto con su sperson';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."NLINPRO" IS 'Numero de anotaci�n por destinatario';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."NSINIES" IS 'Numero de siniestro';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."NTRAMIT" IS 'Numero de tramitaci�n';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."CTIPLIN" IS 'Tipo de anotaci�n ( V.F. ??? )';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."CESTADO" IS 'Estado ( V.F. 804 )';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."CFORENV" IS 'Forma de envio ( V.F. 805 )';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."TDOCUME" IS 'Documento relacionado';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."FPROSAL" IS 'Fecha del proceso de salida';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."SPROSAL" IS 'Proceso de salida';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."FPROENT" IS 'Fecha del proceso de entrada';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."SPROENT" IS 'Proceso de entrada';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."FPROPAG" IS 'Fecha del proceso de pago';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."SPROPAG" IS 'Proceso de pago';
   COMMENT ON COLUMN "AXIS"."DIARIOPROFTRAMI"."TCOMMEN" IS 'Comentario para a�adir a la documentaci�n a enviar';
   COMMENT ON TABLE "AXIS"."DIARIOPROFTRAMI"  IS 'Diario del profesional tramitacion/siniestro';
  GRANT UPDATE ON "AXIS"."DIARIOPROFTRAMI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIARIOPROFTRAMI" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DIARIOPROFTRAMI" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DIARIOPROFTRAMI" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIARIOPROFTRAMI" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DIARIOPROFTRAMI" TO "PROGRAMADORESCSI";