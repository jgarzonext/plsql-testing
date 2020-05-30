--------------------------------------------------------
--  DDL for Type OB_IAX_PSU_SUBESTADOSPROP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PSU_SUBESTADOSPROP" AS OBJECT
/******************************************************************************
   NOMBRE:  OB_IAX_PSU_SUBESTADOSPROP
   PROP¿SITO:

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------

******************************************************************************/
(

	SSEGURO    NUMBER,
	NVERSION   NUMBER(4),
	NVERSIONSUBEST  NUMBER(4),
	NMOVIMI    NUMBER(4),
	CSUBESTADO NUMBER(4),
	COBSERVACIONES  VARCHAR2(500),
	FALTA      DATE,
	CUSUALT    VARCHAR2(32),
	TSUBESTADO  VARCHAR2 (500),


   CONSTRUCTOR FUNCTION OB_IAX_PSU_SUBESTADOSPROP
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PSU_SUBESTADOSPROP" AS
   CONSTRUCTOR FUNCTION OB_IAX_PSU_SUBESTADOSPROP
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PSU_SUBESTADOSPROP" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PSU_SUBESTADOSPROP" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PSU_SUBESTADOSPROP" TO "PROGRAMADORESCSI";
