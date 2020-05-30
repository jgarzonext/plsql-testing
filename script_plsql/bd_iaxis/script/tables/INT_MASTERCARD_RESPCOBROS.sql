--------------------------------------------------------
--  DDL for Table INT_MASTERCARD_RESPCOBROS
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_MASTERCARD_RESPCOBROS" 
   (	"SINTERF" NUMBER, 
	"NLINEA" NUMBER, 
	"CTIPOREG" VARCHAR2(200 BYTE), 
	"CNUMTARJ" VARCHAR2(200 BYTE), 
	"CFECHVEN" VARCHAR2(200 BYTE), 
	"CVALTRAN" VARCHAR2(200 BYTE), 
	"CCODRESP" VARCHAR2(200 BYTE), 
	"CCODTRAN" VARCHAR2(200 BYTE), 
	"CNUMCUOT" VARCHAR2(200 BYTE), 
	"CFECTRAN" VARCHAR2(200 BYTE), 
	"CNUMCOMP" VARCHAR2(200 BYTE), 
	"CVALOIVA" VARCHAR2(200 BYTE), 
	"CNUMCTRL" VARCHAR2(200 BYTE), 
	"CVDEVIVA" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_MASTERCARD_RESPCOBROS"."CTIPOREG" IS 'Indica que el registro corresponde al detalle de una transacci�n del Archivo.';
   COMMENT ON COLUMN "AXIS"."INT_MASTERCARD_RESPCOBROS"."CNUMTARJ" IS 'Es el n�mero de la tarjeta MasterCard del cliente. Este campo tiene una longitud fija de 16 bytes';
   COMMENT ON COLUMN "AXIS"."INT_MASTERCARD_RESPCOBROS"."CFECHVEN" IS 'Fecha de Vencimiento de la Tarjeta    ';
   COMMENT ON COLUMN "AXIS"."INT_MASTERCARD_RESPCOBROS"."CVALTRAN" IS 'Es el monto por el cual se efectu� la transacci�n';
   COMMENT ON COLUMN "AXIS"."INT_MASTERCARD_RESPCOBROS"."CCODRESP" IS 'Es un c�digo generado por el sistema ISO que indica el resultado de la transacci�n';
   COMMENT ON COLUMN "AXIS"."INT_MASTERCARD_RESPCOBROS"."CCODTRAN" IS 'Es el n�mero de autorizaci�n generado por el sistema de Master CARD cuando una transacci�n es aprobada. Cuando una transacci�n es negada o rechazada este campo se llenar� con ceros';
   COMMENT ON COLUMN "AXIS"."INT_MASTERCARD_RESPCOBROS"."CNUMCUOT" IS 'Corresponde a la cantidad de cuotas que acord� el Tarjetahabiente con el Establecimiento afiliado para diferir el valor total de la transacci�n. ';
   COMMENT ON COLUMN "AXIS"."INT_MASTERCARD_RESPCOBROS"."CFECTRAN" IS 'Corresponde a la fecha de transacci�n para ese registro';
   COMMENT ON COLUMN "AXIS"."INT_MASTERCARD_RESPCOBROS"."CNUMCOMP" IS 'N�mero de Comprobante';
   COMMENT ON COLUMN "AXIS"."INT_MASTERCARD_RESPCOBROS"."CVALOIVA" IS 'Campo correspondiente al valor del IVA respectivo de la Transacci�n';
   COMMENT ON COLUMN "AXIS"."INT_MASTERCARD_RESPCOBROS"."CNUMCTRL" IS 'Corresponde al c�digo de control interno generado por el Establecimiento afiliado. ';
   COMMENT ON COLUMN "AXIS"."INT_MASTERCARD_RESPCOBROS"."CVDEVIVA" IS 'Campo correspondiente al valor base de liquidaci�n para la devoluci�n del IVA';
  GRANT UPDATE ON "AXIS"."INT_MASTERCARD_RESPCOBROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_MASTERCARD_RESPCOBROS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_MASTERCARD_RESPCOBROS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_MASTERCARD_RESPCOBROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_MASTERCARD_RESPCOBROS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_MASTERCARD_RESPCOBROS" TO "PROGRAMADORESCSI";
