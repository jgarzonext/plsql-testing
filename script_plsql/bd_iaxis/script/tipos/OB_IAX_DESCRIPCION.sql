--------------------------------------------------------
--  DDL for Type OB_IAX_DESCRIPCION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DESCRIPCION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DESCRIPCION
   PROP�SITO:  Obtiene la informaci�n de riesgos tipo descripci�n e innominados.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        11/07/2008   JRB                1. Creaci�n del objeto.
******************************************************************************/
(
    nasegur       number(6),           --N�mero de asegurados
    nedacol       number(2),           --Edad de un riesgo de un colectivo inominado
    csexcol       number(1),           --Sexo de un riesgo de un colectivo inominado VF=11

    CONSTRUCTOR FUNCTION OB_IAX_DESCRIPCION RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DESCRIPCION" AS

    CONSTRUCTOR FUNCTION OB_IAX_DESCRIPCION RETURN SELF AS RESULT IS
    BEGIN
        SELF.nasegur       := NULL;
        SELF.nedacol       := NULL;
        SELF.csexcol       := NULL;
        RETURN;
    END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DESCRIPCION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DESCRIPCION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DESCRIPCION" TO "PROGRAMADORESCSI";
