--------------------------------------------------------
--  DDL for Type OB_IAX_MNTREGISTROS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_MNTREGISTROS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_MNTREGISTROS
   PROPÓSITO:    Contiene la informacion de los registros a modificar y el
                 modificado. En caso de que el registro sea nuevo solo tendra
                 informado el atributo con los nuevos valores (newversion). Al
                 tener que eliminar el registro solo informara oldversion.
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/03/2008   JCA                1. Creación del objeto.

******************************************************************************/
(
    oldversion      T_IAX_MNTREGISTRO,         --Colección de registros con los valores anteriores
    newversion      T_IAX_MNTREGISTRO,         --Colección de registros con los nuevos valores


    CONSTRUCTOR FUNCTION OB_IAX_MNTREGISTROS RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_MNTREGISTROS" AS

    CONSTRUCTOR FUNCTION OB_IAX_MNTREGISTROS RETURN SELF AS RESULT IS
    BEGIN
        SELF.oldversion        := NULL;
        SELF.newversion        := NULL;

        RETURN;
    END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_MNTREGISTROS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MNTREGISTROS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MNTREGISTROS" TO "PROGRAMADORESCSI";
