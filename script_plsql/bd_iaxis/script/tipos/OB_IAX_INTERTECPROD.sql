--------------------------------------------------------
--  DDL for Type OB_IAX_INTERTECPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INTERTECPROD" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_INTERTECPROD
   PROP�SITO:  Contiene los intereses por producto

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/05/2008   AMC                1. Creaci�n del objeto.
******************************************************************************/
(
    NCODINT     NUMBER(6),                    --C�digo cuadro Inter�s T�cnico
    TCODINT        VARCHAR2(50),                    --Descripci�n del cuadro de inter�s T�cnico asignado
    FINICIO        DATE,                        --Fecha de Entrada en vigor
    CTIPO        NUMBER(1),                    --Tipo de Inter�s T�cnico. Valor Fijo: 848
    TTIPO        VARCHAR2(100),                --Descripcion del tipo de Inter�s.
    FFIN        DATE,                        --Fecha fin del Vigor
    CTRAMOTIP    NUMBER(3),                    --Concepto del tramo ( Valor fijo.
    TTRAMOTIP    VARCHAR2(100),                 --Descripci�n del tipo de tramo
    DETINTERES    T_IAX_INTERTECMOVDETPROD,    --Colecci�n que contiene los tramos permitido por vigencia

CONSTRUCTOR FUNCTION OB_IAX_INTERTECPROD RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INTERTECPROD" AS

    CONSTRUCTOR FUNCTION OB_IAX_INTERTECPROD RETURN SELF AS RESULT IS
    BEGIN

        SELF.NCODINT    := NULL;
        SELF.TCODINT    := ' ';
        SELF.FINICIO    := NULL;
        SELF.CTIPO        := NULL;
        SELF.TTIPO      := ' ';
        SELF.FFIN       := NULL;
        SELF.CTRAMOTIP  := NULL;
        SELF.TTRAMOTIP  := ' ';

        SELF.DETINTERES := NULL;

        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERTECPROD" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERTECPROD" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INTERTECPROD" TO "PROGRAMADORESCSI";
