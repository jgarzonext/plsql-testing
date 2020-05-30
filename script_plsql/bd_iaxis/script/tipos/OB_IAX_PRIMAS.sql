--------------------------------------------------------
--  DDL for Type OB_IAX_PRIMAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRIMAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRIMAS
   PROPÓSITO:  Contiene la información de primas de la poliza

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC                1. Creación del objeto.
   2.0        24/05/2011   ICV                2. 0018638: CRT - Nuevo campo garanseg ITOTANU (total prima anualizada)
   3.0        26/09/2011   DRA                3. 0019532: CEM - Tratamiento de la extraprima en AXIS
   4.0        23/04/2011   MDS                4. 0021907: MDP - TEC - Descuentos y recargos (técnico y comercial) a nivel de póliza/riesgo/garantía
   5.0        21/11/2013   FBL                5. 0028974: MSV0003-Desarrollo de Comisiones (COM04-Commercial Network Management)
   6.0        18/0672016   DMCOTTE            6. AMA-214:
******************************************************************************/
(
   iextrap        FLOAT,   -- Porcentaje Extraprima
   iprianu        FLOAT,   -- Importe prima anual
   ipritar        FLOAT,   -- Importe tarifa
   ipritot        FLOAT,
   precarg        FLOAT,   -- Porcentage recargo (sobreprima)
   irecarg        FLOAT,   -- Importe del recargo (sobreprima)
   pdtocom        FLOAT,   -- Porcentage descuento comercial
   idtocom        FLOAT,   -- Importe descuento comercial
   itarifa        FLOAT,   -- Tarifa + extraprima
   iconsor        NUMBER,   --NUMBER(15, 2),   -- Consorcio
   ireccon        NUMBER,   --NUMBER(15, 2),   -- Recargo Consorcio
   iips           NUMBER,   --NUMBER(15, 2),   -- Impuesto IPS
   idgs           NUMBER,   --UMBER(15, 2),   -- Impuesto CLEA/DGS
   iarbitr        NUMBER,   --NUMBER(15, 2),   -- Arbitrios (bomberos, ...)
   ifng           NUMBER,   --NUMBER(15, 2),   -- Impuesto FNG
   irecfra        NUMBER,   --NUMBER(15, 2),   -- Recargo Fraccionamiento
   itotpri        NUMBER,   --NUMBER(15, 2),   -- Total Prima Neta
   itotdto        NUMBER,   --NUMBER(15, 2),   -- Total Descuentos
   itotcon        NUMBER,   --NUMBER(15, 2),   -- Total Consorcio
   itotimp        NUMBER,   --NUMBER(15, 2),   -- Total Impuestos y Arbitrios
   icderreg       FLOAT,   -- Impuesto Derechos de registro
   -- Bug 0019578 - FAL - 26/09/2011 - Cálculo derechos de registro
   itotalr        NUMBER,   --NUMBER(15, 2),   -- TOTAL RECIBO
   needtarifar    NUMBER,   -- 1 necesita tarificar  0 se ha tarifacado
   iprireb        NUMBER,   --NUMBER(15, 2),   -- Prima del 1er rebut
   itotanu        NUMBER,   --NUMBER(15, 2),   --Importe Prima total anualizada (Garanseg)
   iiextrap       FLOAT,   -- Importe de la extraprima (BUG19532:DRA:26/09/2011)
   -- Ini Bug 21907 - MDS - 20/04/2012
   pdtotec        FLOAT,   -- porcentaje descuento técnico
   preccom        FLOAT,   -- porcentaje recargo comercial
   idtotec        FLOAT,   -- importe descuento técnico
   ireccom        FLOAT,   -- importe recargo comercial
   itotrec        NUMBER,   --NUMBER(15, 2),   -- Total Recargos
   -- Fin Bug 21907 - MDS - 20/04/2012
   -- Bug 30509/168760 - 07/03/2014 - AMC
   iprivigencia   NUMBER,   --prima vigencia
   -- Fi Bug 30509/168760 - 07/03/2014 - AMC
   -- FBL. 25/06/2014 MSV Bug 0028974
   ipricom        NUMBER,
   -- Fin FBL. 25/06/2014 MSV Bug 0028974
   -- DMCOTTE. 18/06/2016 AMA-214
   iivaimp        NUMBER,
   itotdev        FLOAT,
   -- Fin DMCOTTE. 18/06/2016 AMA-214
   -- Recupera de la base de dades les primes de les garantias
   MEMBER PROCEDURE p_get_prigarant(
      pssolicit NUMBER,
      pnmovimi NUMBER,
      pmode VARCHAR2,
      pnriesgo NUMBER,
      pcgarant NUMBER,
      pndetgar NUMBER,
      pctarman NUMBER),
   --Establece la necesidad de volver a tarificar y como consequencia no mostrar primas
   -- 1 necesita tarificar  0 tarficado
   MEMBER PROCEDURE p_set_needtarificar(need NUMBER),
   CONSTRUCTOR FUNCTION ob_iax_primas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRIMAS" AS
   CONSTRUCTOR FUNCTION ob_iax_primas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ipritot := 0;
      SELF.itotimp := 0;
      SELF.irecfra := 0;
      SELF.itotalr := 0;
      SELF.needtarifar := 1;
      SELF.iprireb := 0;
      SELF.itotanu := 0;
      SELF.iprivigencia := 0;   -- Fin Bug 21907 - MDS - 20/04/2012
      SELF.itotdev := 0;
      RETURN;
   END;
   -- Recupera de la base de dades les primes de les garantias
   MEMBER PROCEDURE p_get_prigarant(
      pssolicit NUMBER,
      pnmovimi NUMBER,
      pmode VARCHAR2,
      pnriesgo NUMBER,
      pcgarant NUMBER,
      pndetgar NUMBER,
      pctarman NUMBER) IS
   BEGIN
      pac_mdobj_prod.p_get_prigarant(SELF, pssolicit, pnmovimi, pmode, pnriesgo, pcgarant,
                                     pndetgar, pctarman);   --S'afegeix CTARMAN#30/07/2010#XPL#14429: AGA005 - Primes manuals pels productes de Llar
   END;
   --Establece la necesidad de volver a tarificar y como consequencia no mostrar primas
   -- 1 necesita tarificar  0 tarificado
   MEMBER PROCEDURE p_set_needtarificar(need NUMBER) IS
   BEGIN
      SELF.needtarifar := need;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRIMAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRIMAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRIMAS" TO "PROGRAMADORESCSI";
