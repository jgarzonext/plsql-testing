--------------------------------------------------------
--  DDL for Type OB_IAX_PRODGARDATGESTION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODGARDATGESTION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODGARDATGESTION
   PROP�SITO:  Contiene informaci�n de las actividades del producto
                garantias datos gestion

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creaci�n del objeto.
   2.0        23/01/2014   AGG                2. Se a�aden las columnas nedamrv, ciedmrv
******************************************************************************/
(
   nedamic        NUMBER,   -- Edad m�nima de contrataci�n
   ciedmic        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Edad Min. Ctnr.
   nedamac        NUMBER,   -- Edad m�nima de contrataci�n
   ciedmac        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Ctnr.
   nedamar        NUMBER,   -- Edad m�xima de renovaci�n
   ciedmar        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Renov.
   nedmi2c        NUMBER,   -- Edad Min. Ctnr. 2�Asegurado
   ciemi2c        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Min. Ctnr. 2�Asegurado
   nedma2c        NUMBER,   -- Edad Max. Ctnr. 2�Asegurado
   ciema2c        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Ctnr. 2�Asegurado
   nedma2r        NUMBER,   -- Edad Max. Renov. 2�Asegurado
   ciema2r        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Renov. 2�Asegurado
   ctiptar        NUMBER,   -- Tipo de tarifa (lista de valores)
   ttiptar        VARCHAR2(100),   -- Descripci�n tipo de tarifa
   ctarifa        NUMBER,   -- C�digo de tarifa
   ttarifa        VARCHAR2(100),   -- Descripci�n codigo tarifa
   creaseg        NUMBER,   -- C�digo reaseguro
   treaseg        VARCHAR2(100),   -- Descripci�n c�digo reaseguro
   crevali        NUMBER,   -- Tipo de revalorizaci�n
   trevali        VARCHAR2(100),   -- Descripcion tipo revalorizaci�n (VF 279)
   prevali        NUMBER,   -- Porcentaje de revalorizaci�n
   irevali        NUMBER,   -- Importe de revalorizaci�n
   cmodrev        NUMBER,   -- Se puede modificar la revalorizaci�n
   crecarg        NUMBER,   -- Se puede a�adir un recargo
   cdtocom        NUMBER,   -- Admite descuento comercial
   cextrap        NUMBER,   -- Se puede modificar la extraprima
   ctarman        NUMBER,   -- La tarificaci�n puede ser manual
   ttarman        VARCHAR2(100),   -- Descripci�n tarificaci�n
   cderreg        NUMBER,   -- Indica si tiene derecho de registro
   ctecnic        NUMBER,   -- Indica si se aplican intereses tecnicos
   cofersn        NUMBER,   -- Indica si se muestra en ofertas
   crecfra        NUMBER,   -- Indica si se aplica recargo fraccionamiento
   nedamrv        NUMBER,   -- Edad m�xima de revalorizaci�n
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
