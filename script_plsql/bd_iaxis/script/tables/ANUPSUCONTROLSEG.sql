--------------------------------------------------------
--  DDL for Table ANUPSUCONTROLSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUPSUCONTROLSEG" 
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
	"OBSERV" VARCHAR2(180 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."SSEGURO" IS 'Identificativo interno de seguros y estseguros';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."NMOVIMI" IS 'N�mero de Movimiento';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."FMOVPSU" IS 'Fecha del Movimiento PSU';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."CCONTROL" IS 'C�digo Control realizado';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."NRIESGO" IS 'N�mero del Riesgo';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."NOCURRE" IS 'Veces que ha saltado en el mismo movimiento';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."CGARANT" IS 'C�digo de Garant�a';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."CNIVELR" IS 'C�digo Nivel requerido';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."ESTABLOQUEA" IS 'Comportamiento Est�ndar o Bloqueante
                                                (E - B)';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."ORDENBLOQUEA" IS 'Orden aplicaci�n reglas Exclusivas
                                                Bloquentes';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."AUTORIPREV" IS 'Autorizaci�n en base a Autorizaci�n
                                               Previa (S - N)';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."NVALOR" IS 'Valor Num�rico devuelto por el Control';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."NVALORINF" IS 'Valor inferior del tramo que abarca NVALOR';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."NVALORSUPER" IS 'Valor superior del tramo que abarca NVALOR';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."NVALORTOPE" IS 'Valor M�ximo que se ha autorizado';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."CUSUMOV" IS 'Usuario que realiza el movimiento';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."CNIVELU" IS 'C�digo Nivel Usuario';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."CAUTREC" IS '0 = Pte; (Valor xxxx)
                                            1 = Autorizado,
                                            2 = Rechazado,
                                            3 = No aplica. Cambio posterior.';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."AUTMANUAL" IS 'Acci�n Realizada de forma Autom�tica
                                              o Manual (A - M)';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."FAUTREC" IS 'Fecha de Autorizaci�n o Rechazo';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."CUSUAUR" IS 'Usuario que Autoriza o Rechaza';
   COMMENT ON COLUMN "AXIS"."ANUPSUCONTROLSEG"."OBSERV" IS 'Observaciones sobre la Autorizaci�n o Rechazo';
   COMMENT ON TABLE "AXIS"."ANUPSUCONTROLSEG"  IS 'Tabla con los Controles realizados';
  GRANT UPDATE ON "AXIS"."ANUPSUCONTROLSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUPSUCONTROLSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUPSUCONTROLSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUPSUCONTROLSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUPSUCONTROLSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUPSUCONTROLSEG" TO "PROGRAMADORESCSI";
