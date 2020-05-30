--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_T_VALPRETENSION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_T_VALPRETENSION" AS OBJECT
   /******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITA_JUDICIAL
   PROPOSITO:  Contiene la informacion de la tramitacion judicial - pretensiones
   REVISIONES:
   Ver        Fecha        Autor             Descripcion
   ---------  ----------  ---------------  ------------------------------------
   1.0        09/08/2016   IGIL                1. Creacion objeto
******************************************************************************/
   (
CGARANT	NUMBER(4),
TGARANT	VARCHAR2(120),
CMONEDA	VARCHAR2(5),
ICAPITAL	NUMBER,
IPRETEN	NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_sin_t_valpretension
      RETURN SELF AS RESULT
      );
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_T_VALPRETENSION" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_t_valpretension
      RETURN SELF AS RESULT IS
   BEGIN
SELF.CGARANT	:= NULL;
SELF.TGARANT	:= NULL;
SELF.CMONEDA	:= NULL;
SELF.ICAPITAL	:= NULL;
SELF.IPRETEN	:= NULL;

      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_T_VALPRETENSION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_T_VALPRETENSION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_T_VALPRETENSION" TO "PROGRAMADORESCSI";
