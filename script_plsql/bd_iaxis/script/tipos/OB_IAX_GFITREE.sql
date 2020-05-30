--------------------------------------------------------
--  DDL for Type OB_IAX_GFITREE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GFITREE" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_GFITREE
   PROPÓSITO:  Contiene la información del tree de las formulas

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/04/2007   ACC                1. Creación del objeto.
******************************************************************************/
(

    idnode      NUMBER,             -- Idenficador nodo
    padre       NUMBER,             -- Idenficador nodo padre
    clave       NUMBER,             -- Clave de la formula
    nivel       NUMBER,             -- Nivel
    descripcion VARCHAR2(500),      -- Código formula
    tipo        VARCHAR2(100),      -- Indicar que tipo icono a mostrar


    CONSTRUCTOR FUNCTION OB_IAX_GFITREE RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GFITREE" AS

    CONSTRUCTOR FUNCTION OB_IAX_GFITREE RETURN SELF AS RESULT IS
    BEGIN
        SELF.idnode := null;
        SELF.padre:= 1;
        RETURN;
    END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GFITREE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GFITREE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GFITREE" TO "PROGRAMADORESCSI";
