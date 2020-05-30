--------------------------------------------------------
--  DDL for Type OB_IAX_DOCREQUERIDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DOCREQUERIDA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DOCREQUERIDA
   PROPÓSITO:    Contiene la documentación requerida

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/05/2011   JMP                1. Creación del objeto.
   2.0        01/07/2013   RCL                2. 0024697: LCOL_T031-Tamaño del campo SSEGURO
******************************************************************************/
(
   seqdocu        NUMBER(10),
   cdocume        NUMBER(6),
   sproduc        NUMBER(6),
   cactivi        NUMBER(4),
   norden         NUMBER(3),
   ctipdoc        NUMBER(3),
   cobliga        NUMBER(1),
   cclase         NUMBER(3),
   sseguro        NUMBER,
   nmovimi        NUMBER(4),
   nriesgo        NUMBER(6),
   ninqaval       NUMBER(6),
   tfilename      VARCHAR2(200),
   tdescrip       VARCHAR2(1000),
   adjuntado      NUMBER(1),
   sperson        NUMBER(10),
   ctipben        NUMBER(2),
   crecibido      NUMBER,
   frecibido      DATE,
   CONSTRUCTOR FUNCTION ob_iax_docrequerida
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DOCREQUERIDA" AS
   CONSTRUCTOR FUNCTION ob_iax_docrequerida
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.seqdocu := NULL;   -- Número secuencial de documento
      SELF.cdocume := NULL;   -- Código de documento
      SELF.sproduc := NULL;   -- Código de producto
      SELF.cactivi := NULL;   -- Código de actividad
      SELF.norden := NULL;   -- Número de orden
      SELF.ctipdoc := NULL;   -- Tipo de documento (VF. 1031)
      SELF.cobliga := NULL;   -- Indicador de obligatoriedad
      SELF.cclase := NULL;   -- Clase de parametrización (VF. 1032)
      SELF.sseguro := NULL;   -- Número secuencial de seguro
      SELF.nmovimi := NULL;   -- Número de movimiento
      SELF.nriesgo := NULL;   -- Número de riesgo
      SELF.ninqaval := NULL;   -- Número de inquilino/avalista
      SELF.tfilename := NULL;   -- Nombre del fichero
      SELF.tdescrip := NULL;   -- Descripción
      SELF.adjuntado := NULL;   -- Indicador de si se ha adjuntado el documento
      SELF.sperson := NULL;   -- Indicador de si se ha adjuntado el documento
      SELF.ctipben := NULL;   --Tipo de beneficiario
      SELF.crecibido := NULL;
      SELF.frecibido := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCREQUERIDA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCREQUERIDA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCREQUERIDA" TO "PROGRAMADORESCSI";
