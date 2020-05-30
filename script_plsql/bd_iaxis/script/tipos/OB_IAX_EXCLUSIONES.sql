--------------------------------------------------------
--  DDL for Type OB_IAX_EXCLUSIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_EXCLUSIONES" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_EXCLUSIONES
   PROPÓSITO:  Contiene información de las exclusiones de una póliza

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        03/07/2015  YDA              1. Creación del objeto.
   2.0        18/08/2015  JCP          2. Adicion texclusdet
******************************************************************************/
(
   sseguro        NUMBER,
   nriesgo        NUMBER(6),
   nmovimi        NUMBER(4),
   cempres        NUMBER(5),
   sorden         NUMBER,
   norden         NUMBER,
   codegar        VARCHAR2(100),
   label          VARCHAR2(100),
   codexclus      VARCHAR2(20),
   texclus        VARCHAR2(1000),
   texclusdet     VARCHAR2(4000),
   CONSTRUCTOR FUNCTION ob_iax_exclusiones
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_EXCLUSIONES" AS
   /******************************************************************************
      NOMBRE:     OB_IAX_EXCLUSIONES
      PROPÓSITO:  Contiene la información de las exclusiones.

      REVISIONES:
      Ver        Fecha        Autor             Descripción
      ---------  ----------  ---------------  ------------------------------------
      1.0        03/07/2015  YDA              1. Creación del objeto.
     2.0      18/08/2015  JCP         2. Modificacion adicion de texclusdet
   ******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_exclusiones
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.nriesgo := NULL;
      SELF.nmovimi := NULL;
      SELF.cempres := NULL;
      SELF.sorden := NULL;
      SELF.norden := NULL;
      SELF.codegar := NULL;
      SELF.label := NULL;
      SELF.codexclus := NULL;
      SELF.texclus := NULL;
      SELF.texclusdet := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_EXCLUSIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_EXCLUSIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_EXCLUSIONES" TO "PROGRAMADORESCSI";
