--------------------------------------------------------
--  DDL for Type OB_IAX_PAR_AGENTES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PAR_AGENTES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PAR_AGENTES
   PROPOSITO:  Contiene informacion de las parametros de AGENTES

   REVISIONES:
   Ver        Fecha        Autor             Descripcion
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/03/2012   AMC              1. Creacion del objeto.

******************************************************************************/
(
   cparam         VARCHAR2(100),   -- Codigo parametro
   cutili         NUMBER,
   ctipo          NUMBER,   -- Tipo del parámetro (númerico, texto...)
   tparam         VARCHAR2(2000),   -- Descripcion parametro
   cvisible       VARCHAR2(200),   --Visible en Nueva producción, en todos los módulos...
   tvalpar        VARCHAR2(2000),   -- Valor texto del parÃ¡metro
   nvalpar        NUMBER,   -- Valor numerico del parÃ¡metro
   resp           VARCHAR2(2000),   -- Descripcion del valor numerico del parametro al tratarse de un valor de codigo tabla
   fvalpar        DATE,   -- Valor fecha del parametro
   CONSTRUCTOR FUNCTION ob_iax_par_agentes
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PAR_AGENTES" AS
   CONSTRUCTOR FUNCTION ob_iax_par_agentes
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cparam := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PAR_AGENTES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PAR_AGENTES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PAR_AGENTES" TO "PROGRAMADORESCSI";
