--------------------------------------------------------
--  DDL for Type OB_IAX_BENEFICIARIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BENEFICIARIOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_DET_BENEFICIARIOS
   PROPÓSITO:  Contiene información de los beneficiarios

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC                1. Creación del objeto.
   1.1        10/08/2007   ACC                2. Añadir beneficiarios nominales
   1.2        20/10/2011   ICV                3. 0019152: LCOL_T001- Beneficiari Nominats - LCOL_TEC-02_Emisión_Brechas01
******************************************************************************/
(
   ctipo          NUMBER,   --1 especial, 2 beneficiario, 3 Ben. Especiales
   tclaesp        VARCHAR2(4000),   --Texto de la cláusula especial
   sclaben        NUMBER,   --Secuencia cláusula de beneficiario
   tclaben        VARCHAR2(600),   --Descripción de la cláusula de beneficiario
   ffinclau       DATE,   --Fecha fin cláusula
   finiclau       DATE,   --Fecha inicio cláusula
   nordcla        NUMBER,   --Número orden de la cláusula
   nominales      t_iax_benenominales,   --Beneficiario como persona
   benefesp       ob_iax_benespeciales,   -- Beneficiarios especiales
   --CLAUBENseg
   --clausuesp
   --clausuben
   CONSTRUCTOR FUNCTION ob_iax_beneficiarios
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BENEFICIARIOS" AS
   CONSTRUCTOR FUNCTION ob_iax_beneficiarios
      RETURN SELF AS RESULT IS
   BEGIN
      self.ctipo := NULL;
      self.tclaesp := NULL;
      self.sclaben := NULL;
      self.tclaben := NULL;
      self.nominales := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BENEFICIARIOS" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BENEFICIARIOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BENEFICIARIOS" TO "R_AXIS";
