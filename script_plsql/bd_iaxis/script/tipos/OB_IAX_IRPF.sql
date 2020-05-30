--------------------------------------------------------
--  DDL for Type OB_IAX_IRPF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_IRPF" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PERSONAS
   PROP�SITO:  Contiene la informaci�n de las personas

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC                1. Creaci�n del objeto.
              26/03/2008   SBG                2. Creaci�n del atributo SNIP.
              04/04/2008   JRH                3. Creaci�n atributos spereal, tabla de contactos, cuentas y nacionalidades
   2.0        26/03/2010   AMC                4. Se a�aden los atributos fmovgeo y cpago
   3.0        11/04/2011   APD                5. 0018225: AGM704 - Realizar la modificaci�n de precisi�n el cagente
******************************************************************************/
(
   sperson        NUMBER(10),   --C�digo de �nico de persona
   nano           NUMBER(4),   --N�mero de a�o
   cagente        NUMBER,   -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
   csitfam        NUMBER(1),   --C�digo situaci�n Familiar. Valor fijo 883
   tsitfam        VARCHAR2(100),   --descripci�n Situaci�n familiar
   cnifcon        VARCHAR2(10),   --Nif c�nyuge
   cgrado         NUMBER(1),   --Grado minusval�a. Valor fijo 688
   tgrado         VARCHAR2(100),   --Descripci�n grado minusval�a
   cayuda         NUMBER(1),   --Como trabajador precisa la ayuda de terceras personas para desplazarse a su lugar de trabajo.
   ipension       NUMBER,   --NUMBER(25, 10),   --Pensi�n compensatoria al c�nyuge.
   ianuhijos      NUMBER,   --NUMBER(25, 2),   --Anualidades de hijos.
   prolon         NUMBER(2),   --Prolongaci�n de actividad laboral
   rmovgeo        NUMBER(2),   --Reducci�n por movilidad geogr�fica.
   cusuari        VARCHAR2(20),   --Usuario alta
   fmovimi        VARCHAR2(20),   --Fecha alta
   fmovgeo        DATE,   -- Fecha movilidad geogr�fica
   cpago          NUMBER,   -- Pagos por la adquisici�n o rehabilitaci�n de la vivienda
   descendientes  t_iax_irpfdescen,   --Colecci�n de posibles descendientes
   mayores        t_iax_irpfmayores,   --Colecci�n de posibles ascendientes
   CONSTRUCTOR FUNCTION ob_iax_irpf
      RETURN SELF AS RESULT
)
NOT FINAL;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_IRPF" AS
   CONSTRUCTOR FUNCTION ob_iax_irpf
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := NULL;
      descendientes := t_iax_irpfdescen();
      mayores := t_iax_irpfmayores();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_IRPF" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_IRPF" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_IRPF" TO "PROGRAMADORESCSI";
