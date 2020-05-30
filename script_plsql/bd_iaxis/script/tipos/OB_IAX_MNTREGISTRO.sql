--------------------------------------------------------
--  DDL for Type OB_IAX_MNTREGISTRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_MNTREGISTRO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_MNTREGISTRO
   PROPÓSITO:    Contiene el nombre del campo y valor, tanto como para valores
                 originales como los modificadors. Los nombres se establecen en
                 el tipo de campo texto de modo que pueda establecer culquier tipo
                 de valor y una vez recibido por la base de datos se tratará como
                 el tipo de base de datos correspondiente
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/03/2008   JCA                1. Creación del objeto.

******************************************************************************/
(
    campo      VARCHAR2(50),                             --Nombre del campo
    valor      VARCHAR2(4000),                           --Valor del campo


    CONSTRUCTOR FUNCTION OB_IAX_MNTREGISTRO RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_MNTREGISTRO" AS

    CONSTRUCTOR FUNCTION OB_IAX_MNTREGISTRO RETURN SELF AS RESULT IS
    BEGIN
        SELF.campo        := NULL;
        SELF.valor        := NULL;

        RETURN;
    END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_MNTREGISTRO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MNTREGISTRO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MNTREGISTRO" TO "PROGRAMADORESCSI";
