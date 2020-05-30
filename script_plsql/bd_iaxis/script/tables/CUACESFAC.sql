--------------------------------------------------------
--  DDL for Table CUACESFAC
--------------------------------------------------------

  CREATE TABLE "AXIS"."CUACESFAC" 
   (	"SFACULT" NUMBER(6,0), 
	"CCOMPANI" NUMBER(3,0), 
	"CCOMREA" NUMBER(2,0), 
	"PCESION" NUMBER(8,5), 
	"ICESFIJ" NUMBER, 
	"ICOMFIJ" NUMBER, 
	"ISCONTA" NUMBER, 
	"PRESERV" NUMBER(5,2), 
	"PINTRES" NUMBER(7,5), 
	"PCOMISI" NUMBER(5,2), 
	"CINTRES" NUMBER(2,0), 
	"CCORRED" NUMBER(4,0), 
	"CFRERES" NUMBER(2,0), 
	"CRESREA" NUMBER(1,0), 
	"CCONREC" NUMBER(1,0), 
	"FGARPRI" DATE, 
	"FGARDEP" DATE, 
	"PIMPINT" NUMBER(5,2), 
	"CTRAMOCOMISION" NUMBER(5,0), 
	"TIDFCOM" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CUACESFAC"."SFACULT" IS 'Secuencia de cuadro facultativo';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."CCOMPANI" IS 'C�digo de compa�ia';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."CCOMREA" IS 'C�digo de comisi�n en contratos de reaseguro';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."PCESION" IS '% de cesi�n';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."ICESFIJ" IS 'Importe fijo de cesi�n';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."ICOMFIJ" IS 'Importe fijo de comisi�n';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."ISCONTA" IS 'Importe l�mite pago siniestroa al contado';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."PRESERV" IS '% reserva sobre cesi�n';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."PINTRES" IS '% inter�s sobre reserva';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."CINTRES" IS 'Codi de la taula d''inter�s variable ';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."CCORRED" IS 'Porcentaje de impuestos sobre los intereses';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."CFRERES" IS 'Código frecuencia liberación/reembolso de Reservas VF:113';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."CRESREA" IS 'Reserva/Dep�stio a cuenta de la reaseguradora (0-No, 1-Si)';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."CCONREC" IS 'Cl�usula control de reclamos';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."FGARPRI" IS 'Fecha garant�a de pago de primas';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."FGARDEP" IS 'Fecha garant�a de pago de depositos';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."CTRAMOCOMISION" IS 'Tramo comisi�n variable (Tabla CLAUSULAS_REAS)';
   COMMENT ON COLUMN "AXIS"."CUACESFAC"."TIDFCOM" IS 'ID del facultaivo en la cia reaseguradora';
  GRANT UPDATE ON "AXIS"."CUACESFAC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUACESFAC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CUACESFAC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CUACESFAC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CUACESFAC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CUACESFAC" TO "PROGRAMADORESCSI";