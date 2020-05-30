--------------------------------------------------------
--  DDL for Type OB_IAX_DATOSECONOMICOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DATOSECONOMICOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DATOSECONOMICOS
   PROPÓSITO:  Contiene la información de datos económicos de una póliza

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/05/2008   JRH                 1. Creación del objeto.
   2.0        21/06/2010   JRH                 2. Bug 0014598: CEM800 - Información adicional en pantallas y documentos
   3.0        14/10/2010   RSC                 3. 0016217: Mostrar cuadro de capitales para la pólizas de rentas
******************************************************************************/
(
   recpen         NUMBER,   --RECIBOS PEND
   imprecpen      NUMBER,   --IMP. REC PEND
   impprimainicial NUMBER,   --IMPORTE PRIMA INICIAL
   impprimaper    NUMBER,   --    IMPORTE DE LA PRIMA PERIODICA
   impprimaactual NUMBER,   --    IMPORTE DE LA PRIMA ACTUAL A PAGAR
   impaportacum   NUMBER,   --    IMPORTE DEL IMPORTE ACUMULADO
   impaportacumtot NUMBER,   --    IMPORTE DEL TOTAL IMPORTE ACUMULADO
   impaportmax    NUMBER,   --IMPORTE DE LA APORTACIÓN MÁXIMA
   impaportmaxtot NUMBER,   --    IMPORTE DE LA APORTACIÓN MÁXIMA TOTAL
   impaportpend   NUMBER,   --    IMPORTE DE LAS APORTACIONES PDTES.
   impprovision   NUMBER,   --PROVISIÓN
   impcapfall     NUMBER,   --    CAPITAL DE FALLECIMIENTO
   impcapgaran    NUMBER,   --    CAPITAL GARANTIZADO
   impprovisionant NUMBER,   --PROVISIÓN ÚLTIMO CIERRE
   impcapfallant  NUMBER,   --    CAPITAL DE FALLECIMIENTO ÚLTIMO CIERRE
   impcapgaranant NUMBER,   --    CAPITAL GARANTIZADO ÚLTIMO CIERRE
   pctinttect     NUMBER,   --    INTERÉS TÉCNICO DE LA PÓLIZA
   impcapestimat  NUMBER,   --    Capital estimado: Bug 10828 - RSC - 14/09/2009 - CRE - Revisión de los productos PPJ dinámico y Pla Estudiant (ajustes)
   -- Bug 14598 - JRH - 21/06/2010   - CRE - Bug 0014598: CEM800 - Información adicional en pantallas y documentos
   impcapgarrevi  NUMBER,   --Capital garant a fecha revisión
   impprovrevi    NUMBER,   --Prov a fecha revisión
   impcapestrevi  NUMBER,   --Cap estimado a fecha revisión
   -- Fi Bug 14598 - JRH - 21/06/2010
   impprovresc    NUMBER,   -- Bug 19412 - RSC - 05/11/2011: Valor de rescate (provisión de riesgo)
   valresc        NUMBER,   -- Bug 25788 - XVM - 24/01/2013. Valor de rescate
   valpb          NUMBER,   -- Bug 25788 - XVM - 24/01/2013. Valor ahorro PB
   CONSTRUCTOR FUNCTION ob_iax_datoseconomicos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DATOSECONOMICOS" AS
   CONSTRUCTOR FUNCTION ob_iax_datoseconomicos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.impprimainicial := NULL;
      SELF.impprimaper := NULL;
      SELF.impprimaactual := NULL;
      SELF.impaportacum := NULL;
      SELF.impaportmax := NULL;
      SELF.impaportmaxtot := NULL;
      SELF.impaportpend := NULL;
      SELF.impprovision := NULL;
      SELF.impcapfall := NULL;
      SELF.impcapgaran := NULL;
      SELF.pctinttect := NULL;
      SELF.impcapestimat := NULL;   -- Bug 10828 - RSC - 14/09/2009 - CRE - Revisión de los productos PPJ dinámico y Pla Estudiant (ajustes)
      -- Bug 14598 - JRH - 21/06/2010   - CRE - Bug 0014598: CEM800 - Información adicional en pantallas y documentos
      SELF.impcapgarrevi := NULL;
      SELF.impprovrevi := NULL;
      SELF.impcapestrevi := NULL;
      -- Fi Bug 14598 - JRH - 21/06/2010
      SELF.impprovresc := NULL;   -- Bug 19412 - RSC - 05/11/2011: Valor de rescate (provisión de riesgo)
      SELF.valresc := NULL;   -- Bug 25788 - XVM - 24/01/2013
      SELF.valpb := NULL;   -- Bug 25788 - XVM - 24/01/2013
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOSECONOMICOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOSECONOMICOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOSECONOMICOS" TO "PROGRAMADORESCSI";
