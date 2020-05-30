--------------------------------------------------------
--  DDL for Type OB_IAX_PRODGARANTIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODGARANTIAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODGARANTIAS
   PROPÓSITO:  Contiene información de las actividades del producto
                garantias

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creación del objeto.
   2.0        28/03/2013   MMS                2. 0026501: POSRA400-(POSRA400)-Vida Grupo (Voluntario)
   3.0        18/02/2014   DEV                3. 0029920: POSFC100-Taller de Productos
******************************************************************************/
(
   cactivi        NUMBER,   -- Código de actividad
   tactivi        VARCHAR2(240),   -- Descripción de actividad
   cgarant        NUMBER,   -- Código garantia
   tgarant        VARCHAR2(120),   -- Descripción de garantia
   norden         NUMBER,   -- Número de orden
   ctarjet        NUMBER,   -- Si tiene tarjeta o no
   ctipgar        NUMBER,   -- Tipo de garantia. (VF 33)
   ttipgar        VARCHAR2(100),   -- Descripción tipo de garantia
   cgardep        NUMBER,   -- Código garantía de la que depende.
   tgardep        VARCHAR2(120),   -- Descripción garantia depende
   cpardep        VARCHAR2(20),   -- Código parámetro garantia
   tpardep        VARCHAR2(40),   -- Descripción código parametro garantia
   cvalpar        NUMBER,   -- Parámetro garantia
   tvalpar        VARCHAR2(40),   -- Valor parámetro de garantia
   cbasica        NUMBER,   -- Indica garantia basica
   ctipcap        NUMBER,   -- Tipo de capital. (VF 34)
   ttipcap        VARCHAR2(100),   -- Descripción tipo capital
   icapmax        NUMBER,   -- Importe máximo de contratación.
   ccapmax        NUMBER,   -- Capital contratación.
   tcapmax        VARCHAR2(100),   -- Descripción capital contratación
   cclacap        NUMBER,   -- Código de la fórmula SGT para el cálculo del capital máximo
   tclacap        VARCHAR2(100),   -- Descripción de la formula
   cformul        NUMBER,   -- Código de fórmula para tarifar la garantia
   tformul        VARCHAR2(100),   -- Descripción formula
   pcapdep        NUMBER,   -- Porcentaje del capital de la garantía
   garanprocap    t_iax_prodgaranprocap,
   ccapmin        NUMBER,   -- 0.- Capital mínimo fijo, 1.- Capital mínimo según forma pago
   tcapmin        VARCHAR2(100),   -- Descripción capital mínimo
   icapmin        NUMBER,   -- Importe mínimo de contratación
   capitalmin     t_iax_prodcapitalmin,
   icaprev        NUMBER,   -- Capital máximo a la renovación
   iprimax        NUMBER,   -- Importe prima maxima
   iprimin        NUMBER,   -- Importe prima minima
   datgestion     ob_iax_prodgardatgestion,
   impuestos      ob_iax_prodgarimpuestos,
   incompgaran    t_iax_prodincompgaran,
   dattecnicos    ob_iax_prodgardattecnicos,
   formulas       t_iax_prodgarformulas,
   preguntas      t_iax_prodpregunprogaran,
   cumulos        t_iax_prodcumgaran,
   cclamin        NUMBER,   -- Bug 26501 - MMS - 27/03/2013
   cmoncap        NUMBER,
   parametros     t_iax_prodparagaranpro,
   CONSTRUCTOR FUNCTION ob_iax_prodgarantias
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODGARANTIAS" AS
   CONSTRUCTOR FUNCTION ob_iax_prodgarantias
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cactivi := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARANTIAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARANTIAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARANTIAS" TO "PROGRAMADORESCSI";
