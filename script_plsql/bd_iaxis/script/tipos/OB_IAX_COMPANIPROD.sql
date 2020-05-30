--------------------------------------------------------
--  DDL for Type OB_IAX_COMPANIPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_COMPANIPROD" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_COMPANIPROD
   PROP�SITO:  Nos informa de las compa�ias de un producto

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/06/2010   PFA                1. Creaci�n del objeto.
******************************************************************************/
(
   ccompani       NUMBER(3),
   tcompani       VARCHAR2(150),
   cagencorr      VARCHAR2(30),
   sproduc        NUMBER(8),   -- producto generico
   tproducgen     VARCHAR2(100),   --Descripci�n del Producto Generico
   sproducesp     NUMBER(8),   --C�digo del Producto Espec�fico
   tproducesp     VARCHAR2(100),   --Descripci�n del Producto Espec�fico
   cmarcar        NUMBER(2),
   iddoc          NUMBER(8),
   fpresupuesto   DATE,
   CONSTRUCTOR FUNCTION ob_iax_companiprod
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_COMPANIPROD" AS
/******************************************************************************
   NOMBRE:     OB_IAX_COMPANIPROD
   PROP�SITO:  Contiene datos de la relacion producto/compa�ia

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/06/2010   PFA                1. Creaci�n del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_companiprod
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END ob_iax_companiprod;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_COMPANIPROD" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COMPANIPROD" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COMPANIPROD" TO "PROGRAMADORESCSI";
