--------------------------------------------------------
--  DDL for Type OB_IAX_BENEFICIARIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BENEFICIARIOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_DET_BENEFICIARIOS
   PROP�SITO:  Contiene informaci�n de los beneficiarios

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC                1. Creaci�n del objeto.
   1.1        10/08/2007   ACC                2. A�adir beneficiarios nominales
   1.2        20/10/2011   ICV                3. 0019152: LCOL_T001- Beneficiari Nominats - LCOL_TEC-02_Emisi�n_Brechas01
******************************************************************************/
(
   ctipo          NUMBER,   --1 especial, 2 beneficiario, 3 Ben. Especiales
   tclaesp        VARCHAR2(4000),   --Texto de la cl�usula especial
   sclaben        NUMBER,   --Secuencia cl�usula de beneficiario
   tclaben        VARCHAR2(600),   --Descripci�n de la cl�usula de beneficiario
   ffinclau       DATE,   --Fecha fin cl�usula
   finiclau       DATE,   --Fecha inicio cl�usula
   nordcla        NUMBER,   --N�mero orden de la cl�usula
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
