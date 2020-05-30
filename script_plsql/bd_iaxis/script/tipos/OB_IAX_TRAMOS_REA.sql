--------------------------------------------------------
--  DDL for Type OB_IAX_TRAMOS_REA
--------------------------------------------------------

  EXEC PAC_SKIP_ORA.p_comprovadrop('OB_IAX_TRAMOS_REA','TYPE');

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_TRAMOS_REA" AS OBJECT(
   nversio        NUMBER(2),   -- Número versión contrato reas.
   scontra        NUMBER(6),   -- Secuencia del contrato
   ctramo         NUMBER(2),   -- Código tramo
   ttramo         VARCHAR2(100),   -- Descripción tramo ( VF 106 )
   itottra        NUMBER,   --NUMBER(17, 2),   -- Importe total tramo
   nplenos        NUMBER,   --NUMBER(5, 2),   -- Número de plenos
   cfrebor        NUMBER(2),   -- Código frecuencia borderó
   tfrebor        VARCHAR2(100),   -- Descripcion de la frecuencia ( VF 113 )
   plocal         NUMBER(5, 2),   -- Porcentaje retención local
   ixlprio        NUMBER,   --NUMBER(13, 2),   -- Importe prioridad XL
   ixlexce        NUMBER,   --NUMBER(13, 2),   -- Importe excedente XL
   pslprio        NUMBER(5, 2),   -- Porcentaje prioridad SL
   pslexce        NUMBER(5, 2),   -- Porcentaje excedente SL
   ncesion        NUMBER(6),   -- Número cesión
   fultbor        DATE,   -- Fecha último borderó (cierre mensual)
   imaxplo        NUMBER,   --NUMBER(13, 2),   -- Importe máximo retención propia
   norden         NUMBER(2),   -- orden de aplicación de los tramos
   nsegcon        NUMBER(6),   -- Segundo contrato de protección
   iminxl         NUMBER,   --NUMBER(17, 2),   -- Prima mínima para contratos XL
   idepxl         NUMBER,   --NUMBER(17, 2),   -- Prima de depósito para contratos XL
   nsegver        NUMBER(2),   -- Versión del segundo contrato de protección.
   ptasaxl        NUMBER(6, 3),   -- Porcentaje de la tasa aplicable para contratos XL
   nctrxl         NUMBER(6),   -- Contrato XL de preotección
   nverxl         NUMBER(2),   -- Versión CTR. XL de protección
   ipmd           NUMBER,   --NUMBER(13, 2),   -- Importe Prima Mínima Depósito XL
   cfrepmd        NUMBER(2),   -- Código frecuencia pago PMD
   tfrepmd        VARCHAR2(50),   -- Descripción frecuencia pago PMD( VF 17 )
   caplixl        NUMBER(1),   -- Aplica o no el límite por contrato del XL (0-Si, 1-No)
   plimgas        NUMBER(5, 2),   -- Porcentaje de aumento del límite XL por gastos
   pliminx        NUMBER(5, 2),   -- Porcentaje límite de aplicación de la indexación
   idaa           NUMBER,   --NUMBER(13, 2),   -- Deducible anual
   ilaa           NUMBER,   --NUMBER(13, 2),   -- Límite agregado anual
   ctprimaxl      NUMBER(1),   -- Tipo Prima XL
   ttprimaxl      VARCHAR2(100),   -- Desc. Tipo Prima XL
   iprimafijaxl   NUMBER,   --NUMBER(13, 2),   -- Prima fija XL
   iprimaestimada NUMBER,   --NUMBER(13, 2),   -- Prima Estimada para el tramo
   caplictasaxl   NUMBER(1),   -- Campo aplicación tasa XL
   taplictasaxl   VARCHAR2(100),   -- Desc. Campo aplicación tasa XL
   ctiptasaxl     NUMBER(1),   -- Tipo tasa XL
   ttiptasaxl     VARCHAR2(100),   -- Desc. Tipo tasa XL
   ctramotasaxl   NUMBER(5),   -- Tramo de tasa variable XL
   ttramotasaxl   VARCHAR2(100),   -- DescTramo de tasa variable XL
   pctpdxl        NUMBER(5, 2),   -- % Prima Depósito
   cforpagpdxl    NUMBER(1),   -- Forma pago prima de depósito XL
   tforpagpdxl    VARCHAR2(100),   -- Desc. Forma pago prima de depósito XL
   pctminxl       NUMBER(5, 2),   -- % Prima Mínima XL
   pctpb          NUMBER(5, 2),   -- % PB
   nanyosloss     NUMBER(2),   -- Años Loss Corridor
   closscorridor  NUMBER(5),   -- Código cláusula Loss Corridor
   tlosscorridor  VARCHAR2(100),   -- Desc. Código cláusula Loss Corridor
   ccappedratio   NUMBER(5),   -- Código cláusula Capped Ratio
   tcappedratio   VARCHAR2(100),   -- Desc. Código cláusula Capped Ratio
   crepos         NUMBER(5),   -- Código Reposición Xl
   trepos         VARCHAR2(100),   -- Desc. Código Reposición Xl
   ibonorec       NUMBER,   --NUMBER(13, 2),   -- Bono Reclamación
   impaviso       NUMBER,   --NUMBER(13, 2),   -- Importe Avisos Siniestro
   impcontado     NUMBER,   --NUMBER(13, 2),   -- Importe pagos contado
   pctcontado     NUMBER(5, 2),   -- % Pagos Contado
   pctgastos      NUMBER(5, 2),   -- Gastos
   ptasaajuste    NUMBER(5, 2),   -- Tasa ajuste
   icapcoaseg     NUMBER,   --NUMBER(13, 2),   -- Capacidad según coaseguro
   icostofijo     NUMBER,   --Costo Fijo de la capa
   pcomisinterm   NUMBER,   --% de comisión de intermediación
   nrepos         NUMBER,   -- Cantidad de reposiciones
   ptramo         NUMBER,    --BUG CONF-250  Fecha (02/09/2016) - HRE porcentaje tramos
   preest         NUMBER,    --BUG CONF-1048 Fecha (29/08/2017) - HRE porcentaje reinstalamentos    
   cuadroces      t_iax_cuadroces_rea,   -- Cuadro de compañías de un tramo
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
      SELF.nversio := 0;   -- Número versión contrato reas.
      SELF.scontra := 0;   -- Secuencia del contrato
      SELF.ctramo := 0;   -- Código tramo
      SELF.ttramo := NULL;   -- Descripción tramo
      SELF.itottra := 0;   -- Importe total tramo
      SELF.nplenos := 0;   -- Número de plenos
      SELF.cfrebor := 0;   -- Código frecuencia borderó
      SELF.tfrebor := NULL;   -- Descripcion de la frecuencia ( VF 113 )
      SELF.plocal := 0;   -- Porcentaje retención local
      SELF.ixlprio := 0;   -- Importe prioridad XL
      SELF.ixlexce := 0;   -- Importe excedente XL
      SELF.pslprio := 0;   -- Porcentaje prioridad SL
      SELF.pslexce := 0;   -- Porcentaje excedente SL
      SELF.ncesion := 0;   -- Número cesión
      SELF.fultbor := NULL;   -- Fecha último borderó (cierre mensual)
      SELF.imaxplo := 0;   -- Importe máximo retención propia
      SELF.norden := 0;   -- orden de aplicación de los tramos
      SELF.nsegcon := 0;   -- Segundo contrato de protección
      SELF.iminxl := 0;   -- Prima mínima para contratos XL
      SELF.idepxl := 0;   -- Prima de depósito para contratos XL
      SELF.nsegver := 0;   -- Versión del segundo contrato de protección.
      SELF.ptasaxl := 0;   -- Porcentaje de l tasa aplicable para contratos XL
      SELF.nctrxl := 0;   -- Contrato XL de preotección
      SELF.nverxl := 0;   -- Versión CTR. XL de protección
      SELF.ipmd := 0;   -- Importe Prima Mínima Depósito XL
      SELF.cfrepmd := 0;   -- Código frecuencia pago PMD
      SELF.tfrepmd := NULL;   -- Descripción frecuencia pago PMD( VF 17 )
      SELF.caplixl := 0;   -- Aplica o no el límite por contrato del XL (0-Si, 1-No)
      SELF.plimgas := 0;   -- Porcentaje de aumento del límite XL por gastos
      SELF.pliminx := 0;   -- Porcentaje límite de aplicación de la indexación
      SELF.cuadroces := NULL;   -- Cuadro de compañías de un tramo
      SELF.tramosinbono := NULL;   -- Cuadro de tramo siniestralidad
      SELF.idaa := 0;   -- Deducible anual
      SELF.ilaa := 0;   -- Límite agregado anual
      SELF.ctprimaxl := NULL;   -- Tipo Prima XL
      SELF.ttprimaxl := NULL;   -- Desc. Tipo Prima XL
      SELF.iprimafijaxl := 0;   -- Prima fija XL
      SELF.iprimaestimada := 0;   -- Prima Estimada para el tramo
      SELF.caplictasaxl := NULL;   -- Campo aplicación tasa XL
      SELF.taplictasaxl := NULL;   -- Desc. Campo aplicación tasa XL
      SELF.ctiptasaxl := NULL;   -- Tipo tasa XL
      SELF.ttiptasaxl := NULL;   -- Desc. Tipo tasa XL
      SELF.ctramotasaxl := NULL;   -- Tramo de tasa variable XL
      SELF.ttramotasaxl := NULL;   -- DescTramo de tasa variable XL
      SELF.pctpdxl := 0;   -- % Prima Depósito
      SELF.cforpagpdxl := NULL;   -- Forma pago prima de depósito XL
      SELF.tforpagpdxl := NULL;   -- Desc. Forma pago prima de depósito XL
      SELF.pctminxl := 0;   -- % Prima Mínima XL
      SELF.pctpb := 0;   -- % PB
      SELF.nanyosloss := 0;   -- Años Loss Corridor
      SELF.closscorridor := NULL;   -- Código cláusula Loss Corridor
      SELF.tlosscorridor := NULL;   -- Desc. Código cláusula Loss Corridor
      SELF.ccappedratio := NULL;   -- Código cláusula Capped Ratio
      SELF.tcappedratio := NULL;   -- Desc. Código cláusula Capped Ratio
      SELF.crepos := NULL;   -- Código Reposición Xl
      SELF.trepos := NULL;   -- Desc. Código Reposición Xl
      SELF.ibonorec := 0;   -- Bono Reclamación
      SELF.impaviso := 0;   -- Importe Avisos Siniestro
      SELF.impcontado := 0;   -- Importe pagos contado
      SELF.pctcontado := 0;   -- % Pagos Contado
      SELF.pctgastos := 0;   -- Gastos
      SELF.ptasaajuste := 0;   -- Tasa ajuste
      SELF.icapcoaseg := 0;   -- Capacidad según coaseguro
      SELF.icostofijo := 0;   --Costo Fijo de la capa
      SELF.pcomisinterm := 0;   --% de comisión de intermediación
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
