--------------------------------------------------------
--  DDL for Type OB_IAX_LIQUIDA_MOV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_LIQUIDA_MOV" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_iax_liquida_mov
   PROP�SITO:  Contiene los datos de una liquidacion

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/11/2010   xpl                1. Creaci�n del objeto.

******************************************************************************/
(
   nmovliq        NUMBER(3),   --     N�mero Movimiento Liquidaci�n
   cestliq        NUMBER(2),   --     C�digo Estado Liquidaci�n
   testliq        VARCHAR2(200),   -- desc estado liquidacion
   cmonliq        VARCHAR2(3),   --     C�digo Moneda Liquidaci�n
   tmonliq        VARCHAR2(100),   -- desc moneda liquidacion
   itotliq        NUMBER,   --      Importe Total Liquidaci�n
   cusualt        VARCHAR2(20),   --    C�digo Usuario Alta
   falta          DATE,   --     Fecha Alta
   CONSTRUCTOR FUNCTION ob_iax_liquida_mov
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_LIQUIDA_MOV" AS
/******************************************************************************
   NOMBRE:       OB_iax_liquida_mov
   PROP�SITO:  Contiene los datos de una liquidacion

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/11/2010   xpl                1. Creaci�n del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_liquida_mov
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END ob_iax_liquida_mov;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_LIQUIDA_MOV" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_LIQUIDA_MOV" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_LIQUIDA_MOV" TO "PROGRAMADORESCSI";
