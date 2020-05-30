--------------------------------------------------------
--  DDL for Type OB_IAX_DESCCUADROCOMISION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DESCCUADROCOMISION" AS object
/******************************************************************************
NOMBRE:       OB_IAX_SIN_cuadrocomision
PROPÓSITO:  Contiene la información del siniestro
REVISIONES:
Ver        Fecha        Autor             Descripción
---------  ----------  ---------------  ------------------------------------
1.0        17/02/2009   XPL                1. Creación del objeto.
******************************************************************************/
(
  cidioma NUMBER,        -- Código idioma
  tidioma VARCHAR2(100), -- Descripción idioma
  ccomisi NUMBER,
  tcomisi VARCHAR2(500),
  constructor
  FUNCTION ob_iax_desccuadrocomision
    RETURN self AS result );
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DESCCUADROCOMISION" AS constructor
FUNCTION ob_iax_desccuadrocomision

  RETURN self AS result
IS
BEGIN
  RETURN;
END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DESCCUADROCOMISION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DESCCUADROCOMISION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DESCCUADROCOMISION" TO "PROGRAMADORESCSI";
