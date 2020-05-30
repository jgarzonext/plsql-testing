--------------------------------------------------------
--  DDL for Type OB_IAX_PROCESOSCAB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROCESOSCAB" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PROCESOSCAB
   PROPÓSITO:    PROCESOSCAB

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/02/10   JRB                1. CreaciÃ³n del objeto.
   2.0        07/10/2013 JMG                2. 0028462-155008 : Modificación de campos clave que actualmente estan definidos
                                                 en la base de datos como NUMBER(X) para dejarlos como NUMBER
******************************************************************************/
(
   sproces        NUMBER,   --Identificador de proceso -- Bug 28462 - 08/10/2013 - JMG - Modificacion campo sproces a NUMBER
   cempres        NUMBER(2),   --CÃ³digo de Empresa
   tempres        VARCHAR2(50),
   cusuari        VARCHAR2(20),   --Código de usuario.
   fproini        DATE,   --Hora inicio proceso
   cproces        VARCHAR2(20),   --Código de proceso
   nerror         NUMBER,   --Código de error
   tproces        VARCHAR2(120),   --Parámetros del proceso
   fprofin        DATE,   --Hora final proceso
   CONSTRUCTOR FUNCTION ob_iax_procesoscab
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROCESOSCAB" AS
/******************************************************************************
   NOMBRE:       OB_IAX_PROCESOSCAB
   PROPÓSITO:    PROCESOSCAB

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/02/10   JRB                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_procesoscab
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sproces := 0;
      SELF.cempres := 0;
      SELF.tempres := NULL;
      SELF.cusuari := NULL;
      SELF.fproini := NULL;
      SELF.cproces := NULL;
      SELF.nerror := 0;
      SELF.tproces := NULL;
      SELF.fprofin := NULL;
      RETURN;
   END ob_iax_procesoscab;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROCESOSCAB" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROCESOSCAB" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROCESOSCAB" TO "PROGRAMADORESCSI";
