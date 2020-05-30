--------------------------------------------------------
--  DDL for Type OB_IAX_PREGUNTASTAB_COLUMNS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PREGUNTASTAB_COLUMNS" AS OBJECT
/******************************************************************************
   NOMBRE:       ob_iax_preguntastab
   PROP??SITO:  Contiene la informaci??n de las preguntes del riesgo o garant??a

   REVISIONES:
   Ver        Fecha        Autor             Descripci??n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/05/2012   XPL                1. Creaci??n del objeto.
******************************************************************************/
(
   ccolumna       VARCHAR2(50),
   tcolumna       VARCHAR2(100),
   tvalida        VARCHAR2(100),
   ctipdato       VARCHAR2(250),
   ttipdato       VARCHAR2(500),
   cobliga        NUMBER(1),
   tobliga        VARCHAR2(550),
   crevaloriza    NUMBER(1),
   trevaloriza    VARCHAR2(550),
   ctipcol        NUMBER(1),
   ttipcol        VARCHAR2(550),
   tconsulta      VARCHAR2(4000),
   tvalor         VARCHAR2(250),
   fvalor         DATE,
   nvalor         NUMBER,   --NUMBER(19, 12),
   tlista         t_iax_preglistatab,
   CONSTRUCTOR FUNCTION ob_iax_preguntastab_columns
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PREGUNTASTAB_COLUMNS" AS
   CONSTRUCTOR FUNCTION ob_iax_preguntastab_columns
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PREGUNTASTAB_COLUMNS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PREGUNTASTAB_COLUMNS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PREGUNTASTAB_COLUMNS" TO "PROGRAMADORESCSI";
