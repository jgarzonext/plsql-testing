--------------------------------------------------------
--  DDL for Table FICHA_AGENTE
--------------------------------------------------------

  CREATE TABLE "AXIS"."FICHA_AGENTE" 
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
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."CAGENTE" IS 'C¿digo del Intermediario';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."SPROCES" IS 'N¿mero de PROCESO';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."FDESDE" IS 'Fecha inicial de b¿squeda en la pantalla Informes/Lanzador de informes';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."FHASTA" IS 'Fecha Final de la pantalla Informes/Lanzador de informes';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."FCALCUL" IS 'Fecha Generaci¿n Ficha';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."NPOLFECHA" IS 'N¿mero de p¿lizas vigentes a la fecha';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."NPOLIZAS" IS 'N¿mero de p¿lizas vigentes. N¿mero de p¿lizas generadas dentro del periodo de consulta (Desde A Hasta).';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."ISUMPRI" IS 'Sumatoria del Valor de prima de todas las p¿lizas vigentes a la fecha ';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."ISUMPRIA" IS 'Sumatoria del Valor de prima de todas las p¿lizas vigentes el ¿ltimo a¿o. P¿lizas generadas dentro del periodo de consulta (Desde A Hasta).';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."ICANTIDAD30" IS 'Cartera Pendiente <= 30 dias';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."ICANTIDAD60" IS 'Cartera Pendiente <= 60 y >30 dias';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."ICANTIDAD90" IS 'Cartera Pendiente <= 90 y >60 dias';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."ICANTIDADMAS90" IS 'Cartera Pendiente > 90 dias';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."ICARTERA" IS 'Sumatoria de cartera pendiente';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."NNUMFORM" IS '¿¿N¿mero de formularios registrados del cliente por el intermediario';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."NNUMINF" IS '¿N¿mero de Informaci¿n financiera registrados del cliente por el intermediario.';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."NNUMPAG" IS '¿Pagares de los clientes';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."NAVISIN" IS 'N¿mero de siniestros (comunicados + reclamos) ';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."IRESSIN" IS 'Sumatoria del valor de las reservas vigentes a la fecha ';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."IPAGSIN" IS 'Sumatoria de todos los pagos realizados en los siniestros del intermediario independientemente del destinatario del pago ';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."IRECSIN" IS 'Valor de recobros del siniestro';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."IPAGREC" IS '¿Valor Pagado de los recobros';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."NNUMPROJUD" IS 'El n¿mero  de tramitaci¿n de procesos judiciales.';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."IPAGINCJUD" IS '¿Valor Pagado Incidentes Judiciales';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."IRETPOLVIG" IS 'Valor de retenci¿n de todas las p¿lizas vigentes del tomador a la fecha de generaci¿n de la ficha';
   COMMENT ON COLUMN "AXIS"."FICHA_AGENTE"."TTIPCANAL" IS 'Puede ser CONFIRED o CONFIBROKER';
  GRANT UPDATE ON "AXIS"."FICHA_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FICHA_AGENTE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FICHA_AGENTE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FICHA_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FICHA_AGENTE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FICHA_AGENTE" TO "PROGRAMADORESCSI";
