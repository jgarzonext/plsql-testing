--------------------------------------------------------
--  DDL for Type OB_IAX_DATOS_CONTACTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DATOS_CONTACTO" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_DATOS_CONTACTO
   PROP�SITO:  Contiene la informaci�n de los diferentes datos de contacto de la poliza

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/04/2016   JMT                1. Creaci�n del objeto.
******************************************************************************/
(
   sperson	NUMBER(10),    -- N�mero de persona
   npoliza	NUMBER,        -- N�mero de p�liza
   ncertif	NUMBER,        -- N�mero de certificado
   tnombre	VARCHAR2(200), -- Nombre persona
   tapelli1	VARCHAR2(200), -- Primer apellido persona
   tapelli2	VARCHAR2(60),  -- Segundo apellido persona
   email	VARCHAR2(100),   -- Direcci�n correo electr�nico
   telefono	VARCHAR2(100), -- N�mero de tel�fono
   tipopers VARCHAR2(100),  -- Tipo de persona
   envio NUMBER(1),  -- Verificaci�n de envio (0-no,1-si)
  /* asegurado	NUMBER(1),      -- Relaci�n como asegurado p�liza (0-no,1-si)
   tomador	NUMBER(1),        -- Relaci�n como tomador p�liza (0-no,1-si)
   beneficiario	NUMBER(1),    -- Relaci�n como beneficiario p�liza (0-no,1-si)*/

   CONSTRUCTOR FUNCTION ob_iax_datos_contacto
      RETURN SELF AS RESULT
)
;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DATOS_CONTACTO" AS

  CONSTRUCTOR FUNCTION ob_iax_datos_contacto
     RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := 0;   -- N�mero de persona
      SELF.npoliza := 0;   -- N�mero de p�liza
      SELF.ncertif := 0;   -- N�mero de certificado
      SELF.tnombre :=NULL;   -- Nombre persona
      SELF.tapelli1 := NULL;   -- Primer apellido persona
      SELF.tapelli2 := NULL;  -- Segundo apellido persona
      SELF.email := NULL;   -- Direcci�n correo electr�nico
      SELF.telefono := NULL;   -- N�mero de tel�fono
      SELF.tipopers := NULL;  -- Tipo de persona
      SELF.envio := 0;  -- Verificaci�n de envio
 /*     SELF.asegurado := 0;   -- Relaci�n como asegurado p�liza (0-no,1-si)
      SELF.tomador := 0;   -- Relaci�n como tomador p�liza (0-no,1-si)
      SELF.beneficiario := 0;   -- Relaci�n como beneficiario p�liza (0-no,1-si) */
      RETURN;

  END ob_iax_datos_contacto;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOS_CONTACTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOS_CONTACTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOS_CONTACTO" TO "PROGRAMADORESCSI";
