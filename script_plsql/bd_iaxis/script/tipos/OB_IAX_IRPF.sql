--------------------------------------------------------
--  DDL for Type OB_IAX_IRPF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_IRPF" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PERSONAS
   PROPÓSITO:  Contiene la información de las personas

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC                1. Creación del objeto.
              26/03/2008   SBG                2. Creación del atributo SNIP.
              04/04/2008   JRH                3. Creación atributos spereal, tabla de contactos, cuentas y nacionalidades
   2.0        26/03/2010   AMC                4. Se añaden los atributos fmovgeo y cpago
   3.0        11/04/2011   APD                5. 0018225: AGM704 - Realizar la modificación de precisión el cagente
******************************************************************************/
(
   sperson        NUMBER(10),   --Código de único de persona
   nano           NUMBER(4),   --Número de año
   cagente        NUMBER,   -- Bug 18225 - APD - 11/04/2011 - la precisión debe ser NUMBER
   csitfam        NUMBER(1),   --Código situación Familiar. Valor fijo 883
   tsitfam        VARCHAR2(100),   --descripción Situación familiar
   cnifcon        VARCHAR2(10),   --Nif cónyuge
   cgrado         NUMBER(1),   --Grado minusvalía. Valor fijo 688
   tgrado         VARCHAR2(100),   --Descripción grado minusvalía
   cayuda         NUMBER(1),   --Como trabajador precisa la ayuda de terceras personas para desplazarse a su lugar de trabajo.
   ipension       NUMBER,   --NUMBER(25, 10),   --Pensión compensatoria al cónyuge.
   ianuhijos      NUMBER,   --NUMBER(25, 2),   --Anualidades de hijos.
   prolon         NUMBER(2),   --Prolongación de actividad laboral
   rmovgeo        NUMBER(2),   --Reducción por movilidad geográfica.
   cusuari        VARCHAR2(20),   --Usuario alta
   fmovimi        VARCHAR2(20),   --Fecha alta
   fmovgeo        DATE,   -- Fecha movilidad geográfica
   cpago          NUMBER,   -- Pagos por la adquisición o rehabilitación de la vivienda
   descendientes  t_iax_irpfdescen,   --Colección de posibles descendientes
   mayores        t_iax_irpfmayores,   --Colección de posibles ascendientes
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
