--------------------------------------------------------
--  DDL for Type OB_IAX_PRODCUMGARAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODCUMGARAN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODCUMGARAN
   PROP�SITO:  Contiene informaci�n de las garantias del producto
                cumulos de garantias

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(

    CCUMULO NUMBER,             -- Clave del C�mulo
    TCUMULO VARCHAR2(20),       -- Descripci�n del c�mulo (CUM_CODCUMULO)
    FFECINI DATE,               -- Fecha Inicio vigencia
    FECFIN  DATE,               -- Fecha Final vigencia
    ILIMITE NUMBER,             -- Limite del riesgo
    CFORMUL NUMBER,             -- Clave de Formula SGT
    TFORMUL VARCHAR2(50),       -- Descripci�n Formula
    CLAVE   NUMBER,             -- Clave formula
    TCLAVE  VARCHAR2(50),       -- Descripci�n formulas
    CVALOR  NUMBER,             -- C�digo valor
    TVALOR  VARCHAR2(100),      -- Descripci�n c�digo valor


   CONSTRUCTOR FUNCTION OB_IAX_PRODCUMGARAN RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODCUMGARAN" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODCUMGARAN RETURN SELF AS RESULT IS
    BEGIN
            SELF.CCUMULO := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODCUMGARAN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODCUMGARAN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODCUMGARAN" TO "PROGRAMADORESCSI";
