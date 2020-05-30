--------------------------------------------------------
--  DDL for Type OB_IAX_FORM_CALC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_FORM_CALC" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_FORM_CALC
   PROPÓSITO:  Contiene la información de la parametrización de cálculos automáticos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        19/02/2008   JAS                1. Creación del objeto.
******************************************************************************/
(
    ccfgcalc    NUMBER(8),
    cevent      VARCHAR2(50),
    citdest     VARCHAR2(50),
    ctipres     VARCHAR2(1),
    charval     VARCHAR2(500),
    numval      NUMBER(8),
    dateval     DATE,

    CONSTRUCTOR FUNCTION OB_IAX_FORM_CALC RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_FORM_CALC" AS

    CONSTRUCTOR FUNCTION OB_IAX_FORM_CALC RETURN SELF AS RESULT IS
    BEGIN
        SELF.ccfgcalc   := 0;
        SELF.cevent     := NULL;
        SELF.citdest    := NULL;
        SELF.ctipres    := NULL;
        SELF.charval    := NULL;
        SELF.numval     := 0;
        SELF.dateval    := NULL;
        RETURN;
    END;


END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_FORM_CALC" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_FORM_CALC" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_FORM_CALC" TO "PROGRAMADORESCSI";
