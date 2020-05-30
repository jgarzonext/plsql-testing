--------------------------------------------------------
--  DDL for Type OB_IAX_LIQUIDA_REC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_LIQUIDA_REC" AS OBJECT
/******************************************************************************
   NOMBRE:       ob_iax_liquida_rec
   PROP�SITO:  Contiene los datos de una liquidacion

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/11/2010   xpl                1. Creaci�n del objeto.
   2.0        11/04/2011   APD                2. 0018225: AGM704 - Realizar la modificaci�n de precisi�n el cagente
   3.0        04/10/2013   DEV                3. 0028462: LCOL_T001-Cambio dimensi?n iAxis
******************************************************************************/
(
   nrecibo        NUMBER,   --     N�mero Recibo -- Bug 28462 - 04/10/2013 - DEV - la precisi�n debe ser NUMBER
   ccompani       NUMBER(3),   --C�digo compa�ia
   tcompani       VARCHAR2(200),   --desc C�digo compa�ia
   cagente        NUMBER,   --    C�digo Agente -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
   tagente        VARCHAR2(200),   --desc C�digo compa�ia
   cmonseg        VARCHAR2(3),   --      C�digo Moneda Seguro (Origen)
   tmonseg        VARCHAR2(250),   --    C�digo Moneda Seguro (Origen)
   itotalr        FLOAT,   --   Importe recibo
   icomisi        FLOAT,   --   Importe comisi�n
   iretenc        FLOAT,   --   Importe retenci�n
   iprinet        FLOAT,   --   Prima neta
   iliquida       FLOAT,   --      Importe liquidado
   cmonliq        VARCHAR2(3),   --     C�digo Moneda Liquidaci�n
   tmonliq        VARCHAR2(250),   --    C�digo Moneda Liquidaci�n
   iliquidaliq    FLOAT,   --   Importe Liquidaci�n
   fcambio        DATE,   --   Fecha Cambio Moneda
   cgescob        NUMBER(1),   --   C�digo Gestor de Cobro 1.Correduria 2.Compa��a 3.Broker VF.694
   tgescob        VARCHAR2(250),   --    C�digo Moneda Seguro (Origen)
   cselecc        NUMBER,   -- Recibo seleccionado para liquidaci�n (1:Seleccionado,0:No seleccionado)
   estaliquidado  NUMBER,   -- 1 si este recibo esta en una liquidaci�n anterior
   poliza         ob_iax_genpoliza,
   recibo         ob_iax_recibos,   -- objeto recibo
   CONSTRUCTOR FUNCTION ob_iax_liquida_rec
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_LIQUIDA_REC" AS
/******************************************************************************
   NOMBRE:       ob_iax_liquida_rec
   PROP�SITO:  Contiene los datos de una liquidacion

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/11/2010   xpl                1. Creaci�n del objeto.
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
