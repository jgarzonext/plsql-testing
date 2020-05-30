--------------------------------------------------------
--  DDL for Type OB_IAXPAR_CLAUSULAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAXPAR_CLAUSULAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAXPAR_CLAUSULAS
   PROPÓSITO:  Contiene la información de las clausulas

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2007   ACC                1. Creación del objeto.
   2.0        04/11/2010   JBN                2. 16410:CRT003 - Clausulas con parametros
   3.0        24/05/2011   APD                3. 0018362: LCOL003 - Parámetros en cláusulas y visualización cláusulas automáticas
   4.0        04/02/2013   JMF                0025583: LCOL - Revision incidencias qtracker (IV)
******************************************************************************/
-- valores del campo ctipo: --1 especial texto, 2 especial pregunta, 3 especial garantia, 4 general
(
   sclapro        NUMBER,   --Secuencia de clausula de producto
   ctipcla        NUMBER,   --Tipo de cláusula
   norden         NUMBER,   --Número de orden
   sclagen        NUMBER,   --Identificador de cláusula
   tclatit        VARCHAR2(100),   --Título cláusula
   tclatex        VARCHAR2(4000),   --Texto cláusula
   cobliga        NUMBER,   -- 1 Indica si la clausula es de seleccion automatica
   ctipo          NUMBER,   -- Bug 18362 - APD - 24/05/2011 - se añade el campo ctipo
   cparams        NUMBER,   -- Indica numero de parametros que contiene la clausula,0 en caso contrario -- BUG16432:JBN:03/11/2010
   parametros     t_iax_clausupara,   --Parametros de la clausula JBN BUG:16410
   CONSTRUCTOR FUNCTION ob_iaxpar_clausulas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAXPAR_CLAUSULAS" AS
   CONSTRUCTOR FUNCTION ob_iaxpar_clausulas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sclapro := 0;
      SELF.ctipcla := 0;
      SELF.norden := 0;
      SELF.sclagen := 0;
      SELF.tclatit := NULL;
      SELF.tclatex := NULL;
      SELF.ctipo := 0;
      SELF.cparams := 0;   -- BUG16432:JBN:03/11/2010
      SELF.parametros := t_iax_clausupara();   --JBN BUG:16410
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_CLAUSULAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_CLAUSULAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_CLAUSULAS" TO "PROGRAMADORESCSI";
