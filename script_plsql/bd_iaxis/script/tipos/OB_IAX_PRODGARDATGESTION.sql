--------------------------------------------------------
--  DDL for Type OB_IAX_PRODGARDATGESTION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODGARDATGESTION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODGARDATGESTION
   PROPÓSITO:  Contiene información de las actividades del producto
                garantias datos gestion

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creación del objeto.
   2.0        23/01/2014   AGG                2. Se añaden las columnas nedamrv, ciedmrv
******************************************************************************/
(
   nedamic        NUMBER,   -- Edad mínima de contratación
   ciedmic        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Edad Min. Ctnr.
   nedamac        NUMBER,   -- Edad mínima de contratación
   ciedmac        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Ctnr.
   nedamar        NUMBER,   -- Edad máxima de renovación
   ciedmar        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Renov.
   nedmi2c        NUMBER,   -- Edad Min. Ctnr. 2ºAsegurado
   ciemi2c        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Min. Ctnr. 2ºAsegurado
   nedma2c        NUMBER,   -- Edad Max. Ctnr. 2ºAsegurado
   ciema2c        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Ctnr. 2ºAsegurado
   nedma2r        NUMBER,   -- Edad Max. Renov. 2ºAsegurado
   ciema2r        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Renov. 2ºAsegurado
   ctiptar        NUMBER,   -- Tipo de tarifa (lista de valores)
   ttiptar        VARCHAR2(100),   -- Descripción tipo de tarifa
   ctarifa        NUMBER,   -- Código de tarifa
   ttarifa        VARCHAR2(100),   -- Descripción codigo tarifa
   creaseg        NUMBER,   -- Código reaseguro
   treaseg        VARCHAR2(100),   -- Descripción código reaseguro
   crevali        NUMBER,   -- Tipo de revalorización
   trevali        VARCHAR2(100),   -- Descripcion tipo revalorización (VF 279)
   prevali        NUMBER,   -- Porcentaje de revalorización
   irevali        NUMBER,   -- Importe de revalorización
   cmodrev        NUMBER,   -- Se puede modificar la revalorización
   crecarg        NUMBER,   -- Se puede añadir un recargo
   cdtocom        NUMBER,   -- Admite descuento comercial
   cextrap        NUMBER,   -- Se puede modificar la extraprima
   ctarman        NUMBER,   -- La tarificación puede ser manual
   ttarman        VARCHAR2(100),   -- Descripción tarificación
   cderreg        NUMBER,   -- Indica si tiene derecho de registro
   ctecnic        NUMBER,   -- Indica si se aplican intereses tecnicos
   cofersn        NUMBER,   -- Indica si se muestra en ofertas
   crecfra        NUMBER,   -- Indica si se aplica recargo fraccionamiento
   nedamrv        NUMBER,   -- Edad máxima de revalorización
   ciedmrv        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Reval.
   forpagrecgaran t_iax_prodforpagrecgaran,
   CONSTRUCTOR FUNCTION ob_iax_prodgardatgestion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODGARDATGESTION" AS
   CONSTRUCTOR FUNCTION ob_iax_prodgardatgestion
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nedamic := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARDATGESTION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARDATGESTION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARDATGESTION" TO "PROGRAMADORESCSI";
