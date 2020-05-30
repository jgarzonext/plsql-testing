--------------------------------------------------------
--  DDL for Table FICHA_AGENTE_PREV
--------------------------------------------------------

  CREATE TABLE "AXIS"."FICHA_AGENTE_PREV" 
   (	"CAGENTE" NUMBER, 
	"SPROCES" NUMBER, 
	"FDESDE" DATE, 
	"FHASTA" DATE, 
	"FCALCUL" DATE, 
	"NPOLFECHA" NUMBER, 
	"NPOLIZAS" NUMBER, 
	"ISUMPRI" NUMBER, 
	"ISUMPRIA" NUMBER, 
	"ICANTIDAD30" NUMBER, 
	"ICANTIDAD60" NUMBER, 
	"ICANTIDAD90" NUMBER, 
	"ICANTIDADMAS90" NUMBER, 
	"ICARTERA" NUMBER, 
	"NNUMFORM" NUMBER, 
	"NNUMINF" NUMBER, 
	"NNUMPAG" NUMBER, 
	"NAVISIN" NUMBER, 
	"IRESSIN" NUMBER, 
	"IPAGSIN" NUMBER, 
	"IRECSIN" NUMBER, 
	"IPAGREC" NUMBER, 
	"NNUMPROJUD" NUMBER, 
	"IPAGINCJUD" NUMBER, 
	"IRETPOLVIG" NUMBER, 
	"TTIPCANAL" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."CAGENTE" IS 'C¿digo del Intermediario';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."SPROCES" IS 'N¿mero de PROCESO';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."FDESDE" IS 'Fecha inicial de b¿squeda en la pantalla Informes/Lanzador de informes';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."FHASTA" IS 'Fecha Final de la pantalla Informes/Lanzador de informes';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."FCALCUL" IS 'Fecha Generaci¿n Ficha';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."NPOLFECHA" IS 'N¿mero de p¿lizas vigentes a la fecha';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."NPOLIZAS" IS 'N¿mero de p¿lizas vigentes. N¿mero de p¿lizas generadas dentro del periodo de consulta (Desde A Hasta).';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."ISUMPRI" IS 'Sumatoria del Valor de prima de todas las p¿lizas vigentes a la fecha ';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."ISUMPRIA" IS 'Sumatoria del Valor de prima de todas las p¿lizas vigentes el ¿ltimo a¿o. P¿lizas generadas dentro del periodo de consulta (Desde A Hasta).';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."ICARTERA" IS 'Sumatoria de cartera pendiente';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."NNUMFORM" IS '¿¿N¿mero de formularios registrados del cliente por el intermediario';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."NNUMINF" IS '¿N¿mero de Informaci¿n financiera registrados del cliente por el intermediario.';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."NNUMPAG" IS '¿Pagares de los clientes';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."NAVISIN" IS 'N¿mero de siniestros (comunicados + reclamos) ';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."IRESSIN" IS 'Sumatoria del valor de las reservas vigentes a la fecha ';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."IPAGSIN" IS 'Sumatoria de todos los pagos realizados en los siniestros del intermediario independientemente del destinatario del pago ';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."IRECSIN" IS 'Valor de recobros del siniestro';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."IPAGREC" IS '¿Valor Pagado de los recobros';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."NNUMPROJUD" IS 'El n¿mero  de tramitaci¿n de procesos judiciales.';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."IPAGINCJUD" IS '¿Valor Pagado Incidentes Judiciales';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."IRETPOLVIG" IS 'Valor de retenci¿n de todas las p¿lizas vigentes del tomador a la fecha de generaci¿n de la ficha';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE_PREV"."TTIPCANAL" IS 'Puede ser CONFIRED o CONFIBROKER';
  GRANT UPDATE ON "AXIS"."FICHA_AGENTE_PREV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FICHA_AGENTE_PREV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FICHA_AGENTE_PREV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FICHA_AGENTE_PREV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FICHA_AGENTE_PREV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FICHA_AGENTE_PREV" TO "PROGRAMADORESCSI";
