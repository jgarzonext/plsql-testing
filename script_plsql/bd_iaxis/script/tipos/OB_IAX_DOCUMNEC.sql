--------------------------------------------------------
--  DDL for Type OB_IAX_DOCUMNEC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DOCUMNEC" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_DOCUMNEC
   PROPÓSITO:  Contiene la información de la información necesaria adjuntada
               a determinado movimiento de póliza

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        11/02/2008   JAS                1. Creación del objeto.
******************************************************************************/
(
    cdocument   NUMBER(8),      --Código del documento
    nversion    NUMBER(8),      --Número de versión del documento
    cmotmov     NUMBER(8),      --Código del tipo de movimiento al que pertenece el documento

    CONSTRUCTOR FUNCTION OB_IAX_DOCUMNEC RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DOCUMNEC" AS

    CONSTRUCTOR FUNCTION OB_IAX_DOCUMNEC RETURN SELF AS RESULT IS
    BEGIN
	SELF.cdocument := 0;
	SELF.nversion  := 0;
        SELF.cmotmov   := 0;
        RETURN;
    END;


END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCUMNEC" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCUMNEC" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCUMNEC" TO "PROGRAMADORESCSI";
