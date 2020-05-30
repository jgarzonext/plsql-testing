--------------------------------------------------------
--  DDL for Type OB_IAX_CONTRAGARAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CONTRAGARAN" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_CONTRAGARAN
   PROP�SITO: Objeto para contener los datos de contrataci�n de garant�as.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/03/2016   JAE                1. Creaci�nn del objeto.
******************************************************************************/
(
   scontgar NUMBER, --Nro. Contragarant�a
   sperson  NUMBER, --Persona
   tdescrip VARCHAR2(100), --Descripci�n
   ttipo    VARCHAR2(100), --Tipo
   tclase   VARCHAR2(100), --Clase
   ttenedor VARCHAR2(100), --Tenedor
   testado  VARCHAR2(100), --Estado
   ivalor   VARCHAR2(100), --Valor
   cactivo  NUMBER, --1 = Activo, 0 = Inactivo
   nmovimi  NUMBER, --Movimiento
   CONSTRUCTOR FUNCTION OB_IAX_CONTRAGARAN RETURN SELF AS RESULT
)
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CONTRAGARAN" AS
/******************************************************************************
   NOMBRE:    OB_IAX_CONTRAGARAN
   PROP�SITO: Objeto para contener los datos de contrataci�n de garant�as.

   REVISIONES:
   Ver        Fecha       Autor            Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/03/2016  JAE              1. Creaci�n del objeto.
******************************************************************************/
  CONSTRUCTOR FUNCTION OB_IAX_CONTRAGARAN RETURN SELF AS RESULT IS
  BEGIN
    SELF.scontgar := NULL;
    SELF.sperson  := NULL;
    SELF.tdescrip := NULL;
    SELF.ttipo    := NULL;

    SELF.tclase   := NULL;
    SELF.ttenedor := NULL;
    SELF.testado  := NULL;
    SELF.ivalor   := NULL;
    SELF.cactivo  := NULL;
    SELF.nmovimi  := NULL;
    RETURN;
  END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTRAGARAN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTRAGARAN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTRAGARAN" TO "PROGRAMADORESCSI";
