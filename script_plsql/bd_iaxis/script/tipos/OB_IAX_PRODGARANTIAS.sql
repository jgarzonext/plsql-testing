--------------------------------------------------------
--  DDL for Type OB_IAX_PRODGARANTIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODGARANTIAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODGARANTIAS
   PROP�SITO:  Contiene informaci�n de las actividades del producto
                garantias

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creaci�n del objeto.
   2.0        28/03/2013   MMS                2. 0026501: POSRA400-(POSRA400)-Vida Grupo (Voluntario)
   3.0        18/02/2014   DEV                3. 0029920: POSFC100-Taller de Productos
******************************************************************************/
(
   cactivi        NUMBER,   -- C�digo de actividad
   tactivi        VARCHAR2(240),   -- Descripci�n de actividad
   cgarant        NUMBER,   -- C�digo garantia
   tgarant        VARCHAR2(120),   -- Descripci�n de garantia
   norden         NUMBER,   -- N�mero de orden
   ctarjet        NUMBER,   -- Si tiene tarjeta o no
   ctipgar        NUMBER,   -- Tipo de garantia. (VF 33)
   ttipgar        VARCHAR2(100),   -- Descripci�n tipo de garantia
   cgardep        NUMBER,   -- C�digo garant�a de la que depende.
   tgardep        VARCHAR2(120),   -- Descripci�n garantia depende
   cpardep        VARCHAR2(20),   -- C�digo par�metro garantia
   tpardep        VARCHAR2(40),   -- Descripci�n c�digo parametro garantia
   cvalpar        NUMBER,   -- Par�metro garantia
   tvalpar        VARCHAR2(40),   -- Valor par�metro de garantia
   cbasica        NUMBER,   -- Indica garantia basica
   ctipcap        NUMBER,   -- Tipo de capital. (VF 34)
   ttipcap        VARCHAR2(100),   -- Descripci�n tipo capital
   icapmax        NUMBER,   -- Importe m�ximo de contrataci�n.
   ccapmax        NUMBER,   -- Capital contrataci�n.
   tcapmax        VARCHAR2(100),   -- Descripci�n capital contrataci�n
   cclacap        NUMBER,   -- C�digo de la f�rmula SGT para el c�lculo del capital m�ximo
   tclacap        VARCHAR2(100),   -- Descripci�n de la formula
   cformul        NUMBER,   -- C�digo de f�rmula para tarifar la garantia
   tformul        VARCHAR2(100),   -- Descripci�n formula
   pcapdep        NUMBER,   -- Porcentaje del capital de la garant�a
   garanprocap    t_iax_prodgaranprocap,
   ccapmin        NUMBER,   -- 0.- Capital m�nimo fijo, 1.- Capital m�nimo seg�n forma pago
   tcapmin        VARCHAR2(100),   -- Descripci�n capital m�nimo
   icapmin        NUMBER,   -- Importe m�nimo de contrataci�n
   capitalmin     t_iax_prodcapitalmin,
   icaprev        NUMBER,   -- Capital m�ximo a la renovaci�n
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
