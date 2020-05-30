--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_CONVE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_CONVE" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PROF_CONVE
   PROPÓSITO:  Contiene los convenios del profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   sconven        NUMBER,   --Identificativo del convenio
   tdescri        VARCHAR2(200),   --Descripcion
   starifa        NUMBER,   --Tarifa seleccionada
   ttarifa        VARCHAR2(200),   --Descripción tarifa seleccionada
   spersed        NUMBER,   --Sede
   tpersed        VARCHAR2(200),   --Descripción sede sin_prof_Tarifa
   ncomple        NUMBER,   --Nivel de complejidad
   npriorm        NUMBER,   --Prioridad de remision
   cestado        NUMBER,   --Estado convenio
   testado        VARCHAR2(200),   --Descripción estado
   festado        DATE,   -- Fecha estado
   cvalor         NUMBER,   -- Disminuye o Aumenta
   ctipo          NUMBER,   -- Lineal o Porcentaje
   nimporte       NUMBER,   -- Importe(lineal) a variar
   nporcent       NUMBER,   -- Porcentaje a variar
   termino        VARCHAR2(31),   -- Termino
   CONSTRUCTOR FUNCTION ob_iax_prof_conve
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_CONVE" AS
   CONSTRUCTOR FUNCTION ob_iax_prof_conve
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sconven := NULL;
      SELF.tdescri := NULL;
      SELF.starifa := NULL;
      SELF.ttarifa := NULL;
      SELF.spersed := NULL;
      SELF.tpersed := NULL;
      SELF.ncomple := NULL;
      SELF.npriorm := NULL;
      SELF.cestado := NULL;
      SELF.testado := NULL;
      SELF.festado := NULL;
      SELF.cvalor := NULL;
      SELF.ctipo := NULL;
      SELF.nimporte := NULL;
      SELF.nporcent := NULL;
      SELF.termino := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CONVE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CONVE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_CONVE" TO "PROGRAMADORESCSI";
