--------------------------------------------------------
--  DDL for Type OB_IAX_LIQUIDA_REC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_LIQUIDA_REC" AS OBJECT
/******************************************************************************
   NOMBRE:       ob_iax_liquida_rec
   PROPÓSITO:  Contiene los datos de una liquidacion

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/11/2010   xpl                1. Creación del objeto.
   2.0        11/04/2011   APD                2. 0018225: AGM704 - Realizar la modificación de precisión el cagente
   3.0        04/10/2013   DEV                3. 0028462: LCOL_T001-Cambio dimensi?n iAxis
******************************************************************************/
(
   nrecibo        NUMBER,   --     Número Recibo -- Bug 28462 - 04/10/2013 - DEV - la precisión debe ser NUMBER
   ccompani       NUMBER(3),   --Código compañia
   tcompani       VARCHAR2(200),   --desc Código compañia
   cagente        NUMBER,   --    Código Agente -- Bug 18225 - APD - 11/04/2011 - la precisión debe ser NUMBER
   tagente        VARCHAR2(200),   --desc Código compañia
   cmonseg        VARCHAR2(3),   --      Código Moneda Seguro (Origen)
   tmonseg        VARCHAR2(250),   --    Código Moneda Seguro (Origen)
   itotalr        FLOAT,   --   Importe recibo
   icomisi        FLOAT,   --   Importe comisión
   iretenc        FLOAT,   --   Importe retención
   iprinet        FLOAT,   --   Prima neta
   iliquida       FLOAT,   --      Importe liquidado
   cmonliq        VARCHAR2(3),   --     Código Moneda Liquidación
   tmonliq        VARCHAR2(250),   --    Código Moneda Liquidación
   iliquidaliq    FLOAT,   --   Importe Liquidación
   fcambio        DATE,   --   Fecha Cambio Moneda
   cgescob        NUMBER(1),   --   Código Gestor de Cobro 1.Correduria 2.Compañía 3.Broker VF.694
   tgescob        VARCHAR2(250),   --    Código Moneda Seguro (Origen)
   cselecc        NUMBER,   -- Recibo seleccionado para liquidación (1:Seleccionado,0:No seleccionado)
   estaliquidado  NUMBER,   -- 1 si este recibo esta en una liquidación anterior
   poliza         ob_iax_genpoliza,
   recibo         ob_iax_recibos,   -- objeto recibo
   CONSTRUCTOR FUNCTION ob_iax_liquida_rec
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_LIQUIDA_REC" AS
/******************************************************************************
   NOMBRE:       ob_iax_liquida_rec
   PROPÓSITO:  Contiene los datos de una liquidacion

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/11/2010   xpl                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_liquida_rec
      RETURN SELF AS RESULT IS
   BEGIN
      poliza := NULL;
      recibo := NULL;
      RETURN;
   END ob_iax_liquida_rec;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_LIQUIDA_REC" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_LIQUIDA_REC" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_LIQUIDA_REC" TO "PROGRAMADORESCSI";
