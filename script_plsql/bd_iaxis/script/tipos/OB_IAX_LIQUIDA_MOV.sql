--------------------------------------------------------
--  DDL for Type OB_IAX_LIQUIDA_MOV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_LIQUIDA_MOV" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_iax_liquida_mov
   PROPÓSITO:  Contiene los datos de una liquidacion

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/11/2010   xpl                1. Creación del objeto.

******************************************************************************/
(
   nmovliq        NUMBER(3),   --     Número Movimiento Liquidación
   cestliq        NUMBER(2),   --     Código Estado Liquidación
   testliq        VARCHAR2(200),   -- desc estado liquidacion
   cmonliq        VARCHAR2(3),   --     Código Moneda Liquidación
   tmonliq        VARCHAR2(100),   -- desc moneda liquidacion
   itotliq        NUMBER,   --      Importe Total Liquidación
   cusualt        VARCHAR2(20),   --    Código Usuario Alta
   falta          DATE,   --     Fecha Alta
   CONSTRUCTOR FUNCTION ob_iax_liquida_mov
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_LIQUIDA_MOV" AS
/******************************************************************************
   NOMBRE:       OB_iax_liquida_mov
   PROPÓSITO:  Contiene los datos de una liquidacion

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/11/2010   xpl                1. Creación del objeto.
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
