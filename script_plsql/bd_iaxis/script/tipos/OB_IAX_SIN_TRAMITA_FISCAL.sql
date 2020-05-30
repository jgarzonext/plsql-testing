--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMITA_FISCAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMITA_FISCAL" AS OBJECT
   /******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITA_FISCAL
   PROPOSITO:  Contiene la informacion de la tramitacion judicial
   REVISIONES:
   Ver        Fecha        Autor             Descripcion
   ---------  ----------  ---------------  ------------------------------------
   1.0        07/09/2016   IGIL              1. Creacion objeto
   2.0        13/10/2017   JGONZALEZ         2. Adicion de campo CPROVIN
******************************************************************************/
   (
      NSINIES   VARCHAR2(14),
      NTRAMIT   NUMBER(3),
      NORDEN    NUMBER(3),
      FAPERTU   DATE,
      FIMPUTA   DATE,
      FNOTIFI   DATE,
      FAUDIEN   DATE,
      HAUDIEN   VARCHAR2(5),
      CAUDIEN   NUMBER,
      SPROFES   NUMBER,
      COTERRI   NUMBER,
      CPROVIN   NUMBER,
      CCONTRA   NUMBER,
      CUESPEC   NUMBER,
      TCONTRA   VARCHAR2(2000),
      CTIPTRA   NUMBER(8),
      TESTADO   VARCHAR2(2000),
      CMEDIO    NUMBER,
      FDESCAR   DATE,
      FFALLO    DATE,
      CFALLO    NUMBER,
      TFALLO    VARCHAR2(2000),
      CRECURSO  NUMBER,
      GARANTIAS T_IAX_SIN_T_VALPRETENSION,
      FMODIFI   DATE,
      CUSUALT   VARCHAR2(20),
      NNUMIDEPROFES VARCHAR2(50),
      NOMBREPROFES  VARCHAR2(200),
      ITOTASEG  NUMBER(19,2),
      ITOTPRET  NUMBER(19,2),
   CONSTRUCTOR FUNCTION ob_iax_sin_tramita_fiscal
      RETURN SELF AS RESULT
      );
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMITA_FISCAL" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_tramita_fiscal
      RETURN SELF AS RESULT IS
   BEGIN
   SELF.NSINIES   := NULL;
   SELF.NTRAMIT   := NULL;
   SELF.NORDEN    := NULL;
   SELF.FAPERTU   := NULL;
   SELF.FIMPUTA   := NULL;
   SELF.FNOTIFI   := NULL;
   SELF.FAUDIEN   := NULL;
   SELF.HAUDIEN   := NULL;
   SELF.CAUDIEN   := NULL;
   SELF.SPROFES   := NULL;
   SELF.COTERRI   := NULL;
   SELF.CPROVIN   := NULL;
   SELF.CCONTRA   := NULL;
   SELF.CUESPEC   := NULL;
   SELF.TCONTRA   := NULL;
   SELF.CTIPTRA   := NULL;
   SELF.TESTADO   := NULL;
   SELF.CMEDIO    := NULL;
   SELF.FDESCAR   := NULL;
   SELF.FFALLO    := NULL;
   SELF.CFALLO    := NULL;
   SELF.TFALLO    := NULL;
   SELF.CRECURSO  := NULL;
   SELF.GARANTIAS := T_IAX_SIN_T_VALPRETENSION();
   SELF.FMODIFI   := NULL;
   SELF.CUSUALT   := NULL;

      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_FISCAL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_FISCAL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_FISCAL" TO "PROGRAMADORESCSI";
