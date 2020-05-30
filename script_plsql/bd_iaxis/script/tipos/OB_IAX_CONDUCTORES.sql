--------------------------------------------------------
--  DDL for Type OB_IAX_CONDUCTORES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CONDUCTORES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_CONDUCTORES
   PROP�SITO:  Contiene la informaci�n del riesgo autos conductores

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/08/2007   ACC                1. Creaci�n del objeto.
******************************************************************************/
(
   /* Estriesgos + Riesgos */
   norden         NUMBER(2),   --Numero orden de conductor
   sperson        NUMBER(10),   --Codigo de persona (conductor identificado)
   nedad          NUMBER(2),   --Edad conductor innominado
   nanocar        NUMBER(2),   --A�os carnet conductor innominado
   csexo          NUMBER(4),   --Sexo conductor innominado
   ctipcar        VARCHAR2(4),   --C�digo tipo de Carnet
   nmovimi        NUMBER(4),   --N�mero de Movimiento
   exper_manual   NUMBER,   --N�mero de a�os de experiencia del conductor.
   exper_cexper   NUMBER,   --N�mero de a�os de experiencia que viene por interfaz.
   /* */
   CONSTRUCTOR FUNCTION ob_iax_conductores
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CONDUCTORES" AS
   CONSTRUCTOR FUNCTION ob_iax_conductores
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.norden := 0;
      SELF.sperson := 0;
      SELF.nedad := 0;
      SELF.nanocar := 0;
      SELF.csexo := 0;
      SELF.ctipcar := NULL;
      SELF.nmovimi := 0;
      SELF.exper_manual := 0;
      SELF.exper_cexper := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CONDUCTORES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONDUCTORES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONDUCTORES" TO "PROGRAMADORESCSI";
