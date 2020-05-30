--------------------------------------------------------
--  DDL for Type OB_IAX_GFIFORM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GFIFORM" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_GFIFORM
   PROP�SITO:  Contiene la informaci�n de las formulas

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2007   ACC                1. Creaci�n del objeto.
******************************************************************************/
(
   clave          NUMBER,   -- C�digo formula
   codigo         VARCHAR2(30),   -- Identificador de formula
   descripcion    VARCHAR2(50),   -- Descripci�n de la formula
   formula        VARCHAR2(2000),   -- Formula
   cramo          NUMBER,   -- C�digo de ramo
   cutili         NUMBER,   -- Donde se utilizan las formulas (VF 203)
   crastro        NUMBER,   -- Dejar rastro (VF 828)
   sumatorio      NUMBER,   -- Indica en sgt_term_form el origen 5 es sumatario sino 1
   params         t_iax_gfiparam,   -- Colecci�n de par�metros de la formula
   CONSTRUCTOR FUNCTION ob_iax_gfiform
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GFIFORM" AS

    CONSTRUCTOR FUNCTION OB_IAX_GFIFORM RETURN SELF AS RESULT IS
    BEGIN
        SELF.clave := null;
        RETURN;
    END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIFORM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIFORM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GFIFORM" TO "PROGRAMADORESCSI";
