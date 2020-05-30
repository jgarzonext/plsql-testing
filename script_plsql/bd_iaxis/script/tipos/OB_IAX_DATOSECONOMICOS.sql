--------------------------------------------------------
--  DDL for Type OB_IAX_DATOSECONOMICOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DATOSECONOMICOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DATOSECONOMICOS
   PROP�SITO:  Contiene la informaci�n de datos econ�micos de una p�liza

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/05/2008   JRH                 1. Creaci�n del objeto.
   2.0        21/06/2010   JRH                 2. Bug 0014598: CEM800 - Informaci�n adicional en pantallas y documentos
   3.0        14/10/2010   RSC                 3. 0016217: Mostrar cuadro de capitales para la p�lizas de rentas
******************************************************************************/
(
   recpen         NUMBER,   --RECIBOS PEND
   imprecpen      NUMBER,   --IMP. REC PEND
   impprimainicial NUMBER,   --IMPORTE PRIMA INICIAL
   impprimaper    NUMBER,   --    IMPORTE DE LA PRIMA PERIODICA
   impprimaactual NUMBER,   --    IMPORTE DE LA PRIMA ACTUAL A PAGAR
   impaportacum   NUMBER,   --    IMPORTE DEL IMPORTE ACUMULADO
   impaportacumtot NUMBER,   --    IMPORTE DEL TOTAL IMPORTE ACUMULADO
   impaportmax    NUMBER,   --IMPORTE DE LA APORTACI�N M�XIMA
   impaportmaxtot NUMBER,   --    IMPORTE DE LA APORTACI�N M�XIMA TOTAL
   impaportpend   NUMBER,   --    IMPORTE DE LAS APORTACIONES PDTES.
   impprovision   NUMBER,   --PROVISI�N
   impcapfall     NUMBER,   --    CAPITAL DE FALLECIMIENTO
   impcapgaran    NUMBER,   --    CAPITAL GARANTIZADO
   impprovisionant NUMBER,   --PROVISI�N �LTIMO CIERRE
   impcapfallant  NUMBER,   --    CAPITAL DE FALLECIMIENTO �LTIMO CIERRE
   impcapgaranant NUMBER,   --    CAPITAL GARANTIZADO �LTIMO CIERRE
   pctinttect     NUMBER,   --    INTER�S T�CNICO DE LA P�LIZA
   impcapestimat  NUMBER,   --    Capital estimado: Bug 10828 - RSC - 14/09/2009 - CRE - Revisi�n de los productos PPJ din�mico y Pla Estudiant (ajustes)
   -- Bug 14598 - JRH - 21/06/2010   - CRE - Bug 0014598: CEM800 - Informaci�n adicional en pantallas y documentos
   impcapgarrevi  NUMBER,   --Capital garant a fecha revisi�n
   impprovrevi    NUMBER,   --Prov a fecha revisi�n
   impcapestrevi  NUMBER,   --Cap estimado a fecha revisi�n
   -- Fi Bug 14598 - JRH - 21/06/2010
   impprovresc    NUMBER,   -- Bug 19412 - RSC - 05/11/2011: Valor de rescate (provisi�n de riesgo)
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
      SELF.impcapestimat := NULL;   -- Bug 10828 - RSC - 14/09/2009 - CRE - Revisi�n de los productos PPJ din�mico y Pla Estudiant (ajustes)
      -- Bug 14598 - JRH - 21/06/2010   - CRE - Bug 0014598: CEM800 - Informaci�n adicional en pantallas y documentos
      SELF.impcapgarrevi := NULL;
      SELF.impprovrevi := NULL;
      SELF.impcapestrevi := NULL;
      -- Fi Bug 14598 - JRH - 21/06/2010
      SELF.impprovresc := NULL;   -- Bug 19412 - RSC - 05/11/2011: Valor de rescate (provisi�n de riesgo)
      SELF.valresc := NULL;   -- Bug 25788 - XVM - 24/01/2013
      SELF.valpb := NULL;   -- Bug 25788 - XVM - 24/01/2013
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOSECONOMICOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOSECONOMICOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOSECONOMICOS" TO "PROGRAMADORESCSI";
