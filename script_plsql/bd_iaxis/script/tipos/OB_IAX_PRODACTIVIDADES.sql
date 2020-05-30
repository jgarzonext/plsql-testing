--------------------------------------------------------
--  DDL for Type OB_IAX_PRODACTIVIDADES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODACTIVIDADES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODACTIVIDADES
   PROPÓSITO:  Contiene información de las actividades del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creación del objeto.
   1.1        22/11/2010   LCF                2. Ampliar tamanyo campo TACTIVI
******************************************************************************/
(
   cactivi        NUMBER,   -- Código actividad
   tactivi        VARCHAR2(300),   -- Descripción actividad
   paractividad   t_iax_prodparactividad,   -- Parametros actividad
   pregunacti     t_iax_prodpregunacti,   -- Preguntas actividad
   recfraccacti   t_iax_prodrecfraccacti,   -- Recargos por fraccionamiento
   CONSTRUCTOR FUNCTION ob_iax_prodactividades
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODACTIVIDADES" AS
   CONSTRUCTOR FUNCTION ob_iax_prodactividades
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cactivi := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODACTIVIDADES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODACTIVIDADES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODACTIVIDADES" TO "PROGRAMADORESCSI";
