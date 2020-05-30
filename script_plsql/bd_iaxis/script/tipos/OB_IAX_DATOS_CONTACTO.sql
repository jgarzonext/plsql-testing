--------------------------------------------------------
--  DDL for Type OB_IAX_DATOS_CONTACTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DATOS_CONTACTO" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_DATOS_CONTACTO
   PROPÓSITO:  Contiene la información de los diferentes datos de contacto de la poliza

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/04/2016   JMT                1. Creación del objeto.
******************************************************************************/
(
   sperson	NUMBER(10),    -- Número de persona
   npoliza	NUMBER,        -- Número de póliza
   ncertif	NUMBER,        -- Número de certificado
   tnombre	VARCHAR2(200), -- Nombre persona
   tapelli1	VARCHAR2(200), -- Primer apellido persona
   tapelli2	VARCHAR2(60),  -- Segundo apellido persona
   email	VARCHAR2(100),   -- Dirección correo electrónico
   telefono	VARCHAR2(100), -- Número de teléfono
   tipopers VARCHAR2(100),  -- Tipo de persona
   envio NUMBER(1),  -- Verificación de envio (0-no,1-si)
  /* asegurado	NUMBER(1),      -- Relación como asegurado póliza (0-no,1-si)
   tomador	NUMBER(1),        -- Relación como tomador póliza (0-no,1-si)
   beneficiario	NUMBER(1),    -- Relación como beneficiario póliza (0-no,1-si)*/

   CONSTRUCTOR FUNCTION ob_iax_datos_contacto
      RETURN SELF AS RESULT
)
;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DATOS_CONTACTO" AS

  CONSTRUCTOR FUNCTION ob_iax_datos_contacto
     RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := 0;   -- Número de persona
      SELF.npoliza := 0;   -- Número de póliza
      SELF.ncertif := 0;   -- Número de certificado
      SELF.tnombre :=NULL;   -- Nombre persona
      SELF.tapelli1 := NULL;   -- Primer apellido persona
      SELF.tapelli2 := NULL;  -- Segundo apellido persona
      SELF.email := NULL;   -- Dirección correo electrónico
      SELF.telefono := NULL;   -- Número de teléfono
      SELF.tipopers := NULL;  -- Tipo de persona
      SELF.envio := 0;  -- Verificación de envio
 /*     SELF.asegurado := 0;   -- Relación como asegurado póliza (0-no,1-si)
      SELF.tomador := 0;   -- Relación como tomador póliza (0-no,1-si)
      SELF.beneficiario := 0;   -- Relación como beneficiario póliza (0-no,1-si) */
      RETURN;

  END ob_iax_datos_contacto;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOS_CONTACTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOS_CONTACTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOS_CONTACTO" TO "PROGRAMADORESCSI";
