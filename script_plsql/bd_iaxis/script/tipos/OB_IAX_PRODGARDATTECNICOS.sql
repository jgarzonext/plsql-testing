--------------------------------------------------------
--  DDL for Type OB_IAX_PRODGARDATTECNICOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODGARDATTECNICOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODGARDATTECNICOS
   PROPÓSITO:  Contiene información de las garantias del producto
                datos tecnicos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creación del objeto.
   2.0        23/09/2014   JTT                2. 0032620: Añadimos el campo CPROVIS
******************************************************************************/
(
   ctabla         NUMBER,   -- Tabla de mortalidad
   ttabla         VARCHAR2(100),   -- Descripción tabla mortalidad (CODMORTALIDAD)
   cramdgs        NUMBER,   -- Código ramo DGS
   tramdgs        VARCHAR2(150),   -- Descripción ramo DGS (DESRAMODGS)
   nparben        NUMBER,   -- Indicador de si el producto permite particpación en beneficios
   precseg        NUMBER,   -- Porcentage recargor de seguridad
   cprovis        NUMBER,   -- Indica si se calculan provisiones no técnicas
   tprovis        VARCHAR2(100),   -- Descripcion del indicador de calculo de provisiones
   CONSTRUCTOR FUNCTION ob_iax_prodgardattecnicos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODGARDATTECNICOS" AS
   CONSTRUCTOR FUNCTION ob_iax_prodgardattecnicos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ctabla := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARDATTECNICOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARDATTECNICOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARDATTECNICOS" TO "PROGRAMADORESCSI";
