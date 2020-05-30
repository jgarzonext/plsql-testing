--------------------------------------------------------
--  DDL for Type OB_IAX_REDUCGARAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_REDUCGARAN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_REDUCGARAN
   PROP�SITO:  Contiene la informaci�n de la reducci�n

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/10/2009   XPL                1. Creaci�n del objeto.
   2.0        01/07/2013   RCL              2. 0024697: LCOL_T031-Tama�o del campo SSEGURO
******************************************************************************/
(
   sseguro        NUMBER,   --    Identificador de la poliza
   nriesgo        NUMBER(6),   --
   cgarant        NUMBER(6),   --   Identificador de la garant�a
   tgarant        VARCHAR2(120),   --    Descripci�n de la garant�a
   ndetgar        NUMBER(4),   -- Detalle de la garant�a
   icapital       NUMBER,   --NUMBER(13, 2),   --   Capital calculado por el sistema
   icapred        NUMBER,   --NUMBER(13, 2),   -- Capital informado por el usuario
   cobliga        NUMBER(1),   -- Marca de garant�a seleccionada 1 , no seleccionada 0
   CONSTRUCTOR FUNCTION ob_iax_reducgaran
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_REDUCGARAN" AS
   CONSTRUCTOR FUNCTION ob_iax_reducgaran
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_REDUCGARAN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REDUCGARAN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REDUCGARAN" TO "PROGRAMADORESCSI";
