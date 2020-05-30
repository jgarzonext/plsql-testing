--------------------------------------------------------
--  DDL for Type OB_IAX_COACUADRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_COACUADRO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_coacuadro
   PROP¿SITO:  Contiene la informaci¿n del cuadro de la p¿liza

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/08/2012   DCG                1. Creaci¿n del objeto.
******************************************************************************/
(
   ncuacoa        NUMBER,
   ploccoa        NUMBER,
   finicoa        DATE,
   ffincoa        DATE,
   fcuacoa        DATE,
   ccompan        NUMBER,
   tcompan        VARCHAR2(50),
   npoliza        VARCHAR2(50),
   endoso         NUMBER,
   coacedido      t_iax_coacedido,
   CONSTRUCTOR FUNCTION ob_iax_coacuadro
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_COACUADRO" AS
   CONSTRUCTOR FUNCTION ob_iax_coacuadro
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_COACUADRO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COACUADRO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COACUADRO" TO "PROGRAMADORESCSI";
