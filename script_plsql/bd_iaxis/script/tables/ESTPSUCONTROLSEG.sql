--------------------------------------------------------
--  DDL for Table ESTPSUCONTROLSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTPSUCONTROLSEG" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"FMOVPSU" DATE, 
	"CCONTROL" NUMBER(6,0), 
	"NRIESGO" NUMBER(4,0), 
	"NOCURRE" NUMBER(4,0), 
	"CGARANT" NUMBER(6,0), 
	"CNIVELR" NUMBER(6,0), 
	"ESTABLOQUEA" VARCHAR2(1 BYTE), 
	"ORDENBLOQUEA" NUMBER(2,0), 
	"AUTORIPREV" VARCHAR2(1 BYTE), 
	"NVALOR" NUMBER, 
	"NVALORINF" NUMBER, 
	"NVALORSUPER" NUMBER, 
	"NVALORTOPE" NUMBER, 
	"CUSUMOV" VARCHAR2(20 BYTE), 
	"CNIVELU" NUMBER(6,0), 
	"CAUTREC" NUMBER(2,0), 
	"AUTMANUAL" VARCHAR2(1 BYTE), 
	"FAUTREC" DATE, 
	"CUSUAUR" VARCHAR2(20 BYTE), 
	"OBSERV" VARCHAR2(4000 BYTE), 
	"ISVISIBLE" NUMBER(4,0), 
	"RISKNUM" VARCHAR2(15 BYTE) DEFAULT NULL
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."SSEGURO" IS 'Identificativo interno de seguros y estseguros';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."NMOVIMI" IS 'Número de Movimiento';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."FMOVPSU" IS 'Fecha del Movimiento PSU';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."CCONTROL" IS 'Código Control realizado';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."NRIESGO" IS 'Número del Riesgo';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."NOCURRE" IS 'Veces que ha saltado en el mismo movimiento';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."CGARANT" IS 'Código de Garantía';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."CNIVELR" IS 'Código Nivel requerido';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."ESTABLOQUEA" IS 'Comportamiento Estándar o Bloqueante
                                                (E - B)';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."ORDENBLOQUEA" IS 'Orden aplicación reglas Exclusivas
                                                Bloquentes';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."AUTORIPREV" IS 'Autorización en base a Autorización
                                               Previa (S - N)';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."NVALOR" IS 'Valor Numérico devuelto por el Control';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."NVALORINF" IS 'Valor inferior del tramo que abarca NVALOR';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."NVALORSUPER" IS 'Valor superior del tramo que abarca NVALOR';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."NVALORTOPE" IS 'Valor Máximo que se ha autorizado';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."CUSUMOV" IS 'Usuario que realiza el movimiento';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."CNIVELU" IS 'Código Nivel Usuario';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."CAUTREC" IS '0 = Pte; (Valor xxxx)
                                            1 = Autorizado,
                                            2 = Rechazado,
                                            3 = No aplica. Cambio posterior.';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."AUTMANUAL" IS 'Acción Realizada de forma Automática
                                              o Manual (A - M)';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."FAUTREC" IS 'Fecha de Autorización o Rechazo';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."CUSUAUR" IS 'Usuario que Autoriza o Rechaza';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."OBSERV" IS 'Observaciones sobre la Autorización o Rechazo';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."ISVISIBLE" IS '1:visible/0:no visible. Nos esconderá el registro si el campo es 1';
   COMMENT ON COLUMN "AXIS"."ESTPSUCONTROLSEG"."RISKNUM" IS 'Numero de riesgo proporcionado por la compañía reaseguradora';
   COMMENT ON TABLE "AXIS"."ESTPSUCONTROLSEG"  IS 'Tabla Temporal con los Controles realizados';
  GRANT UPDATE ON "AXIS"."ESTPSUCONTROLSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPSUCONTROLSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTPSUCONTROLSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTPSUCONTROLSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPSUCONTROLSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTPSUCONTROLSEG" TO "PROGRAMADORESCSI";
