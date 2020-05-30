--------------------------------------------------------
--  DDL for Type OB_IAX_PRODTITULO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODTITULO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODTITULO
   PROPÓSITO:  Contiene información de la definción de titulo del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(

    CIDIOMA NUMBER,        -- Código idioma
    TIDIOMA VARCHAR2(100), -- Descripción idioma
    TTITULO VARCHAR2(40),  -- Titulo producto
    TROTULO VARCHAR2(15),  -- Rotulo producto

    CONSTRUCTOR FUNCTION OB_IAX_PRODTITULO RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODTITULO" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODTITULO RETURN SELF AS RESULT IS
    BEGIN

    		SELF.CIDIOMA := 0;
    		SELF.TIDIOMA := NULL;
    		SELF.TTITULO := NULL;
    		SELF.TROTULO := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODTITULO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODTITULO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODTITULO" TO "PROGRAMADORESCSI";
