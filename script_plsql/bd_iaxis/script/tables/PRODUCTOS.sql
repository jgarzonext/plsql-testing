--------------------------------------------------------
--  DDL for Table PRODUCTOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRODUCTOS" 
   (	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CAGRPRO" NUMBER(2,0), 
	"CSUBPRO" NUMBER(2,0), 
	"CACTIVO" NUMBER(2,0), 
	"CTIPREB" NUMBER(1,0), 
	"CTIPGES" NUMBER(1,0), 
	"CRECCOB" NUMBER(1,0), 
	"CTIPPAG" NUMBER(1,0), 
	"CPAGDEF" NUMBER(2,0), 
	"CDURACI" NUMBER(1,0), 
	"CTEMPOR" NUMBER(1,0), 
	"CTARMAN" NUMBER(1,0), 
	"CTIPEFE" NUMBER(1,0), 
	"CGARSIN" NUMBER(1,0), 
	"CVALMAN" NUMBER(1,0), 
	"CTIPRIE" NUMBER(1,0), 
	"CVALFIN" NUMBER(1,0), 
	"COBJASE" NUMBER(2,0), 
	"CPROTEC" NUMBER(1,0), 
	"SCLABEN" NUMBER(4,0), 
	"NEDAMIC" NUMBER(2,0), 
	"NEDAMAC" NUMBER(2,0), 
	"NEDAMAR" NUMBER(2,0), 
	"PINTTEC" NUMBER(9,6), 
	"PGASINT" NUMBER(9,6), 
	"PGASEXT" NUMBER(9,6), 
	"IPRIMIN" NUMBER, 
	"NDURCOB" NUMBER(2,0), 
	"CRECFRA" NUMBER(1,0), 
	"CRETENI" NUMBER(2,0), 
	"CIMPPRI" NUMBER(1,0), 
	"CIMPTAX" NUMBER(1,0), 
	"CIMPCON" NUMBER(1,0), 
	"CCUESTI" NUMBER(1,0), 
	"CTIPCAL" NUMBER(2,0), 
	"CIMPEFE" NUMBER(1,0), 
	"CMODELO" VARCHAR2(10 BYTE), 
	"CCALCOM" NUMBER(1,0), 
	"CREASEG" NUMBER(1,0), 
	"PREVALI" NUMBER(5,2), 
	"IREVALI" NUMBER, 
	"CREVALI" NUMBER(2,0), 
	"CRAMDGS" NUMBER(2,0), 
	"CTIPIMP" NUMBER(1,0), 
	"CREVFPG" NUMBER(1,0), 
	"CMOVDOM" NUMBER(1,0), 
	"SPRODUC" NUMBER(6,0), 
	"CCTACOR" NUMBER(1,0) DEFAULT 0, 
	"CVINPOL" NUMBER(1,0) DEFAULT 0, 
	"CDIVISA" NUMBER(2,0) DEFAULT 2, 
	"CTIPREN" NUMBER(1,0), 
	"CCLAREN" NUMBER(1,0), 
	"NNUMREN" NUMBER(2,0), 
	"CPARBEN" NUMBER(1,0), 
	"CIEDMAC" NUMBER(1,0) DEFAULT 0, 
	"CIEDMIC" NUMBER(1,0) DEFAULT 0, 
	"CIEDMAR" NUMBER(1,0) DEFAULT 0, 
	"NSEDMAC" NUMBER(3,0), 
	"CISEMAC" NUMBER(1,0) DEFAULT 0, 
	"PGAEXIN" NUMBER(9,6), 
	"PGAEXEX" NUMBER(9,6), 
	"CPRPROD" NUMBER(1,0), 
	"NVTOMAX" NUMBER(2,0), 
	"NVTOMIN" NUMBER(3,0), 
	"CDURMAX" NUMBER(1,0), 
	"CLIGACT" NUMBER(1,0), 
	"CPA1REN" NUMBER(2,0), 
	"NPA1REN" NUMBER(2,0), 
	"TPOSIAN" VARCHAR2(13 BYTE), 
	"CIEMA2C" NUMBER(1,0), 
	"CIEMI2C" NUMBER(1,0), 
	"CIEMA2R" NUMBER(1,0), 
	"NEDMA2C" NUMBER(2,0), 
	"NEDMI2C" NUMBER(2,0), 
	"NEDMA2R" NUMBER(2,0), 
	"SCUECAR" NUMBER(6,0), 
	"CPRORRA" NUMBER(1,0), 
	"CCOMPANI" NUMBER(3,0), 
	"CPRIMIN" NUMBER(1,0), 
	"CCLAPRI" NUMBER(8,0), 
	"CVINPRE" NUMBER(1,0), 
	"CDURMIN" NUMBER(1,0), 
	"IPMINFRA" NUMBER, 
	"NDIASPRO" NUMBER(2,0), 
	"NRENOVA" NUMBER(4,0), 
	"NMAXRIE" NUMBER(4,0), 
	"CSUFIJO" CHAR(2 BYTE), 
	"CFECCOB" NUMBER(1,0), 
	"NNUMPAG" NUMBER(1,0), 
	"NRECREN" NUMBER(1,0), 
	"IMINEXT" NUMBER, 
	"CCARPEN" NUMBER(1,0), 
	"CSINDEF" NUMBER(2,0), 
	"CTIPRES" NUMBER(1,0), 
	"NNIGGAR" NUMBER(2,0) DEFAULT 1, 
	"NNIIGAR" NUMBER(1,0), 
	"NPARBEN" NUMBER(1,0), 
	"NBNS" NUMBER(1,0), 
	"CTRAMO" NUMBER(6,0), 
	"CAGRCON" NUMBER(2,0), 
	"CMODNRE" NUMBER(1,0) DEFAULT 1, 
	"CTERMFIN" NUMBER(1,0) DEFAULT 0, 
	"CMODINT" NUMBER(1,0) DEFAULT 0, 
	"CINTREV" NUMBER(1,0) DEFAULT 0, 
	"CPREAVISO" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CTIPSEG" IS 'C�digo tipo de seguro';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CRAMO" IS 'C�digo ramo';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CMODALI" IS 'C�digo modalidad';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CAGRPRO" IS 'Codigo agrupaci�n de producto (VF 283)';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CSUBPRO" IS 'C�digo de subtipo de producto';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CACTIVO" IS 'Indica si el producto est� activo o no.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CTIPREB" IS 'Tipo recibo para colectivos.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CTIPGES" IS 'Indica si los datos de gesti�n est�n en cada seguro o en el tomad';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CRECCOB" IS 'Indica si el primer recibo es pendiente o cobrado';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CTIPPAG" IS 'Tipo de pago.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CPAGDEF" IS 'Forma de pago por defecto';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CDURACI" IS 'Tipo de duraci�n.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CTEMPOR" IS 'Admite o no p�lizas temporales
       0 --> No admite Temporalidad. Duraci�n del producto
       1 --> Duraci�n del producto + Hasta el vencimiento
       2 --> Duraci�n del producto + Hasta el vencimiento + Vital�cia
       3 --> Duraci�n del producto + Temporal Renovable (con herencia de colectivos)
       4 --> Duraci�n del producto + Meses (con herencia de colectivos)';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CTARMAN" IS 'La tarificaci�n puede ser manual';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CTIPEFE" IS 'Tipo de efecto.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CGARSIN" IS 'Indicador de si el siniestro admite una o m�s garant�as.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CVALMAN" IS 'Indicador de si la valoraci�n es manual o autom�tica.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CVALFIN" IS 'Indicador de valoraci�n conocida del expediente s�lo a su cierre';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."COBJASE" IS 'Tipo de objeto asegurado';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CPROTEC" IS 'C�lculo de provisiones t�cnicas';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."SCLABEN" IS 'Secuencial cl�usula beneficiario';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NEDAMIC" IS 'Edad m�nima contrataci�n (Vida y accidentes) Aseg. 2';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NEDAMAC" IS 'Edad m�xima contrataci�n. (Vida y accidentes). Aseg. 2';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NEDAMAR" IS 'Edad m�xima renovaci�n. (Vida y accidentes). Aseg. 2';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."PINTTEC" IS 'Porcentaje de inter�s t�cnico';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."PGASINT" IS 'Porcentaje de gastos internos';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."PGASEXT" IS 'Porcentaje de gastos externos.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."IPRIMIN" IS 'Importe m�nimo prima de recibo en emisi�n';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NDURCOB" IS 'A�os a restar en la duraci�n de pagos de primas';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CRECFRA" IS 'Se aplica o no recargo de fraccionamiento';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CRETENI" IS 'Indicador de propuesta';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CIMPPRI" IS 'Se imprimen primas por garantia';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CIMPTAX" IS 'Se imprimen tasas por garantia';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CIMPCON" IS 'Se imprime condicionado general';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CCUESTI" IS 'Necesita cuestionario de salud';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CIMPEFE" IS 'Se imprimen fechas de efecto por garantias';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CMODELO" IS 'Modelo de las condiciones generales';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."SPRODUC" IS 'Secuencia del producto';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CCTACOR" IS 'Indicador de si tiene libreta. 0-No, 1-Si';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CVINPOL" IS 'Indica que las p�lizas del producto tienen que estar vinculadas a otras de otro producto';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CDIVISA" IS 'Clave de Divisa';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CTIPREN" IS 'Indicador de Tipo de Renta 0-Diferida, 1-Inmediata';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CCLAREN" IS 'Indicador de clase de renta 0-Vitalicia, 1-Temporal Anual, 2-Temporal Mensual';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NNUMREN" IS 'Nro. de a�os o meses seg�n la temporalidad de CCLAREN';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CPARBEN" IS 'Indicador de participaci�n en Beneficios';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CIEDMAC" IS 'Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Ctnr.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CIEDMIC" IS 'Ind. si se valida la 0-edad actuarial 1-edad real. Edad Min. Ctnr.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CIEDMAR" IS 'Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Renov.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NSEDMAC" IS 'Maximo de contrataci�n de la suma de Edades.(productos 2-Cabezas)';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CISEMAC" IS 'Ind. si se valida la 0-edad actuarial 1-edad real';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."PGAEXIN" IS '% de Gastos Externos. Parte Internos';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."PGAEXEX" IS '% de Gastos Externos. Parte Externos';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CPRPROD" IS 'Prestaciones del producto 0-Capital 1-Renta. Solo Ahorro y Rentas';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NVTOMAX" IS 'Nro.A�os m�ximo para el Vto. de la p�liza. Se activa si informan CDURMAX';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NVTOMIN" IS 'Nro.A�os m�nimo para el Vto. de la p�liza';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CDURMAX" IS 'Duraci�n m�xima de la p�liza. DETVALORES=209. 0-a�os,1-edad max., 2-edad min.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CLIGACT" IS 'Indica si las p�lizas del producto est�n ligadas a un activo. 0-No 1-Si';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CPA1REN" IS 'Indica cuando se paga la primera renta. DETVALORES=210. 0-Al vto.,1-al vto+1dia, etc.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NPA1REN" IS 'Nro. De a�os, meses o d�as a sumar a la fecha que se indique en CPA1REN.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."TPOSIAN" IS 'Texto. P�liza del Sistema anterior';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CIEMA2C" IS 'Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Ctnr. 2�Asegurado';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CIEMI2C" IS 'Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Min. Ctnr. 2�Asegurado';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CIEMA2R" IS 'Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Renov. 2�Asegurado';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NEDMA2C" IS 'Edad Max. Ctnr. 2�Asegurado';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NEDMI2C" IS 'Edad Min. Ctnr. 2�Asegurado';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NEDMA2R" IS 'Edad Max. Renov. 2�Asegurado';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CPRORRA" IS 'Tipus prorrateig a aplicar suplements segons valors fixes 174';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CPRIMIN" IS 'Tipo de prima m�nima';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CCLAPRI" IS 'F�rmula de c�lcul de la prima m�nima';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CVINPRE" IS 'Indica que las p�lizas del producto tienen que estar vinculadas a un pr�stamo';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CSUFIJO" IS 'Prefijo del n�mero de p�liza para domiciliaciones';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NNUMPAG" IS 'N�mero de pagos ha hacer en el siniestro.';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NRECREN" IS 'N�mero de recibos a generar de renta';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CCARPEN" IS 'Recibos de cartera pendientes de validar.Valor fixe 696 : (0-No, 1 -Si)';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CSINDEF" IS 'Forma de pago';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NNIIGAR" IS 'Indicador de si el Inter�s T�cnico esta a nivel de garant�a';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NPARBEN" IS 'Indicador de si el producto permite particpaci�n en beneficios';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."NBNS" IS 'C�digo tramo. Solamente se informar� en el caso de que el indicador NBNS=1';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CMODNRE" IS 'Indicador de fecha de renovaci�n modificable en contrataci�n ';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CTERMFIN" IS 'Contratable desde el terminal financiero, 0.- Si, 1.- No';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CMODINT" IS 'Intereses modificable en p�liza. Valores 0-No,1-Si. Default 0';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CINTREV" IS 'Por defecto en la renovaci�n aplicar el inter�s del producto.(Valores 0:No,1:Si).
																				Default 0';
   COMMENT ON COLUMN "AXIS"."PRODUCTOS"."CPREAVISO" IS 'Tiene preaviso (0.-No/1.-Si)';
  GRANT UPDATE ON "AXIS"."PRODUCTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODUCTOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRODUCTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRODUCTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRODUCTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRODUCTOS" TO "PROGRAMADORESCSI";
