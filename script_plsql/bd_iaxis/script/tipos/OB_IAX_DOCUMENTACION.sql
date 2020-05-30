--------------------------------------------------------
--  DDL for Type OB_IAX_DOCUMENTACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DOCUMENTACION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DOCUMENTACION
   PROPÓSITO:  Contiene la documentacion

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        20/12/2007   JAS                1. Creación del objeto.
******************************************************************************/
(
    cdocume  NUMBER(2),          --Código del documento
    tdocume  VARCHAR2 (1000),    --Descripción del documento

    CONSTRUCTOR FUNCTION OB_IAX_DOCUMENTACION RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DOCUMENTACION" AS

    CONSTRUCTOR FUNCTION OB_IAX_DOCUMENTACION RETURN SELF AS RESULT IS
    BEGIN
		SELF.cdocume := NULL;
		SELF.tdocume := '';
        RETURN;
    END;


 END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCUMENTACION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCUMENTACION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCUMENTACION" TO "PROGRAMADORESCSI";
