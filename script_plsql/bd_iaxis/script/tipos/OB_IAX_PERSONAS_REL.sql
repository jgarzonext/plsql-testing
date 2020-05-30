--------------------------------------------------------
--  DDL for Type OB_IAX_PERSONAS_REL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PERSONAS_REL" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PERSONAS_REL
   PROPÓSITO:  Contiene la información de las personas relacionada

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        19/07/2011   ICV                1. Creación del objeto.
   2.0        19/11/2011   APD                2. 0019587: LCOL_P001 - PER - Validaciones dependiendo del tipo de documento
   3.0        03/04/2014   FAL                3. 0030525: INT030-Prueba de concepto CONFIANZA
******************************************************************************/
(
   sperson        NUMBER(10),   --    Secuencia unica de identificacion de una persona
   cagente        NUMBER,   --    Código de agente
   sperson_rel    NUMBER(10),   --    Código de persona de la persona relacionada
   ctipper_rel    NUMBER(2),   --    Tipo de persona relacionada (V.F. 1037)
   cusuari        VARCHAR2(20),   --    Código usuario modificación registro
   fmovimi        DATE,   --    Fecha modificación registro
   telefono       VARCHAR2(100),   --    Teléfono
   direccion      VARCHAR2(200),   --    Dirección
   mail           VARCHAR2(100),   --    Email
   ttipper_rel    VARCHAR2(100),   --   Descripción del tipo de persona relacionada (V.F. 1037)
   nnumide        VARCHAR2(50),   --   Numero de Censo/Pasaporte de la persona relacionada
   tnombre        VARCHAR2(200),   --   Nombre de la persona de la persona relacionada
   pparticipacion NUMBER,   --    Porcentaje de participacion
   islider        NUMBER,   --    Lider del consorcio (1:Sí/0:No)
   fusumod        DATE,   --    Fecha de baja
   cagrupa        NUMBER,  -- codigo agrupacion consorcios
   fagrupa        DATE,  -- Fecha agrupacion coorcios
   nagrupa        VARCHAR2(200),  -- Nombre agrupacion consorcios
   CONSTRUCTOR FUNCTION ob_iax_personas_rel
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PERSONAS_REL" AS
   CONSTRUCTOR FUNCTION ob_iax_personas_rel
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := 0;
      SELF.cagente := 0;
      SELF.sperson_rel := 0;
      SELF.ctipper_rel := 0;
      SELF.cusuari := NULL;
      SELF.fmovimi := NULL;
      SELF.telefono := NULL;
      SELF.direccion := NULL;
      SELF.mail := NULL;
      SELF.ttipper_rel := NULL;
      SELF.nnumide := NULL;
      SELF.tnombre := NULL;
      SELF.pparticipacion := NULL;
      SELF.islider := NULL;
      SELF.fusumod := NULL;
	  SELF.cagrupa := NULL;
	  SELF.fagrupa := NULL;
      SELF.nagrupa := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PERSONAS_REL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PERSONAS_REL" TO "PROGRAMADORESCSI";
