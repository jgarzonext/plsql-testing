--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_T_JUDICIAL_AUDIEN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_T_JUDICIAL_AUDIEN" AS OBJECT
   /******************************************************************************
   NOMBRE:       OB_IAX_SIN_T_JUDICIAL_AUDIEN
   PROPOSITO:  Contiene la informacion de la tramitacion judicial - audiencias
   REVISIONES:
   Ver        Fecha        Autor             Descripcion
   ---------  ----------  ---------------  ------------------------------------
   1.0        19/12/2016   JGONZALEZ        1. Creacion objeto
******************************************************************************/
   (
   NAUDIEN NUMBER(3),
   FAUDIEN DATE,
   HAUDIEN VARCHAR2(10),
   TAUDIEN VARCHAR2(200),
   CDESPA NUMBER(8),
   TLAUDIE VARCHAR2(200),
   CAUDIEN VARCHAR2(30),
   CDESPAO NUMBER(8),
   TLAUDIEO VARCHAR2(200),
   CAUDIENO VARCHAR2(30),
   SABOGAU NUMBER(10),
   CORAL NUMBER(1),
   CESTADO NUMBER(1),
   CRESOLU NUMBER(1),
   FINSTA1 DATE,
   FINSTA2 DATE,
   FNUEVA DATE,
   TRESULT VARCHAR2(2000),
   NNUMIDEAUDEN VARCHAR2(50),
   NOMBREAUDEN VARCHAR2(200),
   CONSTRUCTOR FUNCTION ob_iax_sin_t_judicial_audien
      RETURN SELF AS RESULT
   );
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_T_JUDICIAL_AUDIEN" AS

  CONSTRUCTOR FUNCTION ob_iax_sin_t_judicial_audien
      RETURN SELF AS RESULT IS
  BEGIN

  SELF.NAUDIEN      := NULL;
  SELF.FAUDIEN      := NULL;
  SELF.HAUDIEN      := NULL;
  SELF.TAUDIEN      := NULL;
  SELF.CDESPA       := NULL;
  SELF.TLAUDIE      := NULL;
  SELF.CAUDIEN      := NULL;
  SELF.CDESPAO      := NULL;
  SELF.TLAUDIEO     := NULL;
  SELF.CAUDIENO     := NULL;
  SELF.SABOGAU      := NULL;
  SELF.CORAL        := NULL;
  SELF.CESTADO      := NULL;
  SELF.CRESOLU      := NULL;
  SELF.FINSTA1      := NULL;
  SELF.FINSTA2      := NULL;
  SELF.FNUEVA       := NULL;
  SELF.TRESULT      := NULL;
    RETURN;
  END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_T_JUDICIAL_AUDIEN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_T_JUDICIAL_AUDIEN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_T_JUDICIAL_AUDIEN" TO "PROGRAMADORESCSI";
