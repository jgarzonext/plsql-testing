--------------------------------------------------------
--  DDL for Table CONS_POL_NODOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CONS_POL_NODOS" 
   (	"TIPO_NODO" VARCHAR2(32 BYTE), 
	"NOMBRE_NODO" VARCHAR2(32 BYTE), 
	"SLITERA" NUMBER(6,0), 
	"ICONO_DEFECTO" VARCHAR2(256 BYTE), 
	"PARAMETROS" VARCHAR2(256 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CONS_POL_NODOS"."TIPO_NODO" IS 'Identificar el tipo de nodo internamente';
   COMMENT ON COLUMN "AXIS"."CONS_POL_NODOS"."NOMBRE_NODO" IS 'Nombre del nodo utilizado en el formulario, como canvas, bloque';
   COMMENT ON COLUMN "AXIS"."CONS_POL_NODOS"."SLITERA" IS 'Código literal, con la plantilla de la etiqueta de visualización del nodo. Debe traducirse  su contenido con el paquete pac_cons_pol.';
   COMMENT ON COLUMN "AXIS"."CONS_POL_NODOS"."ICONO_DEFECTO" IS 'Nombre del fichero de icono que se asocia al nodo de dicho tipo. O su valor por defecto si posee varios';
   COMMENT ON COLUMN "AXIS"."CONS_POL_NODOS"."PARAMETROS" IS 'Plantilla contenido del valor de un nodo. Debe traducirse  su contenido con el paquete pac_cons_pol.';
   COMMENT ON TABLE "AXIS"."CONS_POL_NODOS"  IS 'Describe los tipos de nodos en el árbol de navegación de consultas de pólizas';
  GRANT UPDATE ON "AXIS"."CONS_POL_NODOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONS_POL_NODOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CONS_POL_NODOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CONS_POL_NODOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CONS_POL_NODOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CONS_POL_NODOS" TO "PROGRAMADORESCSI";
