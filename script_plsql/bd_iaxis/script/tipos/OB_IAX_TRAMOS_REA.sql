--------------------------------------------------------
--  DDL for Type OB_IAX_TRAMOS_REA
--------------------------------------------------------

  EXEC PAC_SKIP_ORA.p_comprovadrop('OB_IAX_TRAMOS_REA','TYPE');

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_TRAMOS_REA" AS OBJECT(
   nversio        NUMBER(2),   -- N�mero versi�n contrato reas.
   scontra        NUMBER(6),   -- Secuencia del contrato
   ctramo         NUMBER(2),   -- C�digo tramo
   ttramo         VARCHAR2(100),   -- Descripci�n tramo ( VF 106 )
   itottra        NUMBER,   --NUMBER(17, 2),   -- Importe total tramo
   nplenos        NUMBER,   --NUMBER(5, 2),   -- N�mero de plenos
   cfrebor        NUMBER(2),   -- C�digo frecuencia border�
   tfrebor        VARCHAR2(100),   -- Descripcion de la frecuencia ( VF 113 )
   plocal         NUMBER(5, 2),   -- Porcentaje retenci�n local
   ixlprio        NUMBER,   --NUMBER(13, 2),   -- Importe prioridad XL
   ixlexce        NUMBER,   --NUMBER(13, 2),   -- Importe excedente XL
   pslprio        NUMBER(5, 2),   -- Porcentaje prioridad SL
   pslexce        NUMBER(5, 2),   -- Porcentaje excedente SL
   ncesion        NUMBER(6),   -- N�mero cesi�n
   fultbor        DATE,   -- Fecha �ltimo border� (cierre mensual)
   imaxplo        NUMBER,   --NUMBER(13, 2),   -- Importe m�ximo retenci�n propia
   norden         NUMBER(2),   -- orden de aplicaci�n de los tramos
   nsegcon        NUMBER(6),   -- Segundo contrato de protecci�n
   iminxl         NUMBER,   --NUMBER(17, 2),   -- Prima m�nima para contratos XL
   idepxl         NUMBER,   --NUMBER(17, 2),   -- Prima de dep�sito para contratos XL
   nsegver        NUMBER(2),   -- Versi�n del segundo contrato de protecci�n.
   ptasaxl        NUMBER(6, 3),   -- Porcentaje de la tasa aplicable para contratos XL
   nctrxl         NUMBER(6),   -- Contrato XL de preotecci�n
   nverxl         NUMBER(2),   -- Versi�n CTR. XL de protecci�n
   ipmd           NUMBER,   --NUMBER(13, 2),   -- Importe Prima M�nima Dep�sito XL
   cfrepmd        NUMBER(2),   -- C�digo frecuencia pago PMD
   tfrepmd        VARCHAR2(50),   -- Descripci�n frecuencia pago PMD( VF 17 )
   caplixl        NUMBER(1),   -- Aplica o no el l�mite por contrato del XL (0-Si, 1-No)
   plimgas        NUMBER(5, 2),   -- Porcentaje de aumento del l�mite XL por gastos
   pliminx        NUMBER(5, 2),   -- Porcentaje l�mite de aplicaci�n de la indexaci�n
   idaa           NUMBER,   --NUMBER(13, 2),   -- Deducible anual
   ilaa           NUMBER,   --NUMBER(13, 2),   -- L�mite agregado anual
   ctprimaxl      NUMBER(1),   -- Tipo Prima XL
   ttprimaxl      VARCHAR2(100),   -- Desc. Tipo Prima XL
   iprimafijaxl   NUMBER,   --NUMBER(13, 2),   -- Prima fija XL
   iprimaestimada NUMBER,   --NUMBER(13, 2),   -- Prima Estimada para el tramo
   caplictasaxl   NUMBER(1),   -- Campo aplicaci�n tasa XL
   taplictasaxl   VARCHAR2(100),   -- Desc. Campo aplicaci�n tasa XL
   ctiptasaxl     NUMBER(1),   -- Tipo tasa XL
   ttiptasaxl     VARCHAR2(100),   -- Desc. Tipo tasa XL
   ctramotasaxl   NUMBER(5),   -- Tramo de tasa variable XL
   ttramotasaxl   VARCHAR2(100),   -- DescTramo de tasa variable XL
   pctpdxl        NUMBER(5, 2),   -- % Prima Dep�sito
   cforpagpdxl    NUMBER(1),   -- Forma pago prima de dep�sito XL
   tforpagpdxl    VARCHAR2(100),   -- Desc. Forma pago prima de dep�sito XL
   pctminxl       NUMBER(5, 2),   -- % Prima M�nima XL
   pctpb          NUMBER(5, 2),   -- % PB
   nanyosloss     NUMBER(2),   -- A�os Loss Corridor
   closscorridor  NUMBER(5),   -- C�digo cl�usula Loss Corridor
   tlosscorridor  VARCHAR2(100),   -- Desc. C�digo cl�usula Loss Corridor
   ccappedratio   NUMBER(5),   -- C�digo cl�usula Capped Ratio
   tcappedratio   VARCHAR2(100),   -- Desc. C�digo cl�usula Capped Ratio
   crepos         NUMBER(5),   -- C�digo Reposici�n Xl
   trepos         VARCHAR2(100),   -- Desc. C�digo Reposici�n Xl
   ibonorec       NUMBER,   --NUMBER(13, 2),   -- Bono Reclamaci�n
   impaviso       NUMBER,   --NUMBER(13, 2),   -- Importe Avisos Siniestro
   impcontado     NUMBER,   --NUMBER(13, 2),   -- Importe pagos contado
   pctcontado     NUMBER(5, 2),   -- % Pagos Contado
   pctgastos      NUMBER(5, 2),   -- Gastos
   ptasaajuste    NUMBER(5, 2),   -- Tasa ajuste
   icapcoaseg     NUMBER,   --NUMBER(13, 2),   -- Capacidad seg�n coaseguro
   icostofijo     NUMBER,   --Costo Fijo de la capa
   pcomisinterm   NUMBER,   --% de comisi�n de intermediaci�n
   nrepos         NUMBER,   -- Cantidad de reposiciones
   ptramo         NUMBER,    --BUG CONF-250  Fecha (02/09/2016) - HRE porcentaje tramos
   preest         NUMBER,    --BUG CONF-1048 Fecha (29/08/2017) - HRE porcentaje reinstalamentos    
   cuadroces      t_iax_cuadroces_rea,   -- Cuadro de compa��as de un tramo
   tramosinbono   t_iax_tramo_sin_bono,   -- Cuadro de tramos siniestralidad
   narrastrecont  NUMBER(3),   -- Contador de Anhos Arrastre de perdidas --CONF-587
   iprio NUMBER,---Campo para guardar  Prioridad del tramo IAXIS-4611
   CONSTRUCTOR FUNCTION ob_iax_tramos_rea
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_TRAMOS_REA" AS
   CONSTRUCTOR FUNCTION ob_iax_tramos_rea
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nversio := 0;   -- N�mero versi�n contrato reas.
      SELF.scontra := 0;   -- Secuencia del contrato
      SELF.ctramo := 0;   -- C�digo tramo
      SELF.ttramo := NULL;   -- Descripci�n tramo
      SELF.itottra := 0;   -- Importe total tramo
      SELF.nplenos := 0;   -- N�mero de plenos
      SELF.cfrebor := 0;   -- C�digo frecuencia border�
      SELF.tfrebor := NULL;   -- Descripcion de la frecuencia ( VF 113 )
      SELF.plocal := 0;   -- Porcentaje retenci�n local
      SELF.ixlprio := 0;   -- Importe prioridad XL
      SELF.ixlexce := 0;   -- Importe excedente XL
      SELF.pslprio := 0;   -- Porcentaje prioridad SL
      SELF.pslexce := 0;   -- Porcentaje excedente SL
      SELF.ncesion := 0;   -- N�mero cesi�n
      SELF.fultbor := NULL;   -- Fecha �ltimo border� (cierre mensual)
      SELF.imaxplo := 0;   -- Importe m�ximo retenci�n propia
      SELF.norden := 0;   -- orden de aplicaci�n de los tramos
      SELF.nsegcon := 0;   -- Segundo contrato de protecci�n
      SELF.iminxl := 0;   -- Prima m�nima para contratos XL
      SELF.idepxl := 0;   -- Prima de dep�sito para contratos XL
      SELF.nsegver := 0;   -- Versi�n del segundo contrato de protecci�n.
      SELF.ptasaxl := 0;   -- Porcentaje de l tasa aplicable para contratos XL
      SELF.nctrxl := 0;   -- Contrato XL de preotecci�n
      SELF.nverxl := 0;   -- Versi�n CTR. XL de protecci�n
      SELF.ipmd := 0;   -- Importe Prima M�nima Dep�sito XL
      SELF.cfrepmd := 0;   -- C�digo frecuencia pago PMD
      SELF.tfrepmd := NULL;   -- Descripci�n frecuencia pago PMD( VF 17 )
      SELF.caplixl := 0;   -- Aplica o no el l�mite por contrato del XL (0-Si, 1-No)
      SELF.plimgas := 0;   -- Porcentaje de aumento del l�mite XL por gastos
      SELF.pliminx := 0;   -- Porcentaje l�mite de aplicaci�n de la indexaci�n
      SELF.cuadroces := NULL;   -- Cuadro de compa��as de un tramo
      SELF.tramosinbono := NULL;   -- Cuadro de tramo siniestralidad
      SELF.idaa := 0;   -- Deducible anual
      SELF.ilaa := 0;   -- L�mite agregado anual
      SELF.ctprimaxl := NULL;   -- Tipo Prima XL
      SELF.ttprimaxl := NULL;   -- Desc. Tipo Prima XL
      SELF.iprimafijaxl := 0;   -- Prima fija XL
      SELF.iprimaestimada := 0;   -- Prima Estimada para el tramo
      SELF.caplictasaxl := NULL;   -- Campo aplicaci�n tasa XL
      SELF.taplictasaxl := NULL;   -- Desc. Campo aplicaci�n tasa XL
      SELF.ctiptasaxl := NULL;   -- Tipo tasa XL
      SELF.ttiptasaxl := NULL;   -- Desc. Tipo tasa XL
      SELF.ctramotasaxl := NULL;   -- Tramo de tasa variable XL
      SELF.ttramotasaxl := NULL;   -- DescTramo de tasa variable XL
      SELF.pctpdxl := 0;   -- % Prima Dep�sito
      SELF.cforpagpdxl := NULL;   -- Forma pago prima de dep�sito XL
      SELF.tforpagpdxl := NULL;   -- Desc. Forma pago prima de dep�sito XL
      SELF.pctminxl := 0;   -- % Prima M�nima XL
      SELF.pctpb := 0;   -- % PB
      SELF.nanyosloss := 0;   -- A�os Loss Corridor
      SELF.closscorridor := NULL;   -- C�digo cl�usula Loss Corridor
      SELF.tlosscorridor := NULL;   -- Desc. C�digo cl�usula Loss Corridor
      SELF.ccappedratio := NULL;   -- C�digo cl�usula Capped Ratio
      SELF.tcappedratio := NULL;   -- Desc. C�digo cl�usula Capped Ratio
      SELF.crepos := NULL;   -- C�digo Reposici�n Xl
      SELF.trepos := NULL;   -- Desc. C�digo Reposici�n Xl
      SELF.ibonorec := 0;   -- Bono Reclamaci�n
      SELF.impaviso := 0;   -- Importe Avisos Siniestro
      SELF.impcontado := 0;   -- Importe pagos contado
      SELF.pctcontado := 0;   -- % Pagos Contado
      SELF.pctgastos := 0;   -- Gastos
      SELF.ptasaajuste := 0;   -- Tasa ajuste
      SELF.icapcoaseg := 0;   -- Capacidad seg�n coaseguro
      SELF.icostofijo := 0;   --Costo Fijo de la capa
      SELF.pcomisinterm := 0;   --% de comisi�n de intermediaci�n
      SELF.nrepos := NULL;   -- Cantidad de reposiciones
      SELF.ptramo := NULL;   --BUG CONF-250  Fecha (02/09/2016) - HRE porcentaje tramos
	  SELF.narrastrecont := NULL;  -- Contador de Anhos Arrastre de perdidas --CONF-587
	  SELF.iprio := 0;---Campo para guardar  Prioridad del tramo IAXIS-4611
      RETURN;
   END ob_iax_tramos_rea;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_TRAMOS_REA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TRAMOS_REA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TRAMOS_REA" TO "PROGRAMADORESCSI";  
  GRANT EXECUTE ON "AXIS"."OB_IAX_TRAMOS_REA" TO "AXIS00";
