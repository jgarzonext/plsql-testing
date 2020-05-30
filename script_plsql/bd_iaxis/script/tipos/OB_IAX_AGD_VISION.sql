--------------------------------------------------------
--  DDL for Type OB_IAX_AGD_VISION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AGD_VISION" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_agd_vision
   PROPÓSITO:      Vision de los Apu/Obs

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/03/2011   XPL                1. Creación del objeto.

******************************************************************************/
(
   cempres        NUMBER(2),   --Empresa del qual depende la observaci�n
   tempres        VARCHAR2(300),   --Descripci�n de la empresa
   idobs          NUMBER(8),   --C�digo de la observaci�n
   ctipvision     NUMBER(2),   --Tipo de visi�n agd_obs_vision 0 Rol 1 Usuario
   desctipvision  VARCHAR2(300),   --Descripci�n tipo visi�n
   ttipvision     VARCHAR2(100),   -- Valor del tipo de visi�n
   descttipvision VARCHAR2(1000),   -- Descripci� del valor
   cvisible       NUMBER(1),   --Visibilidad para el rol/usuario marcado
   CONSTRUCTOR FUNCTION ob_iax_agd_vision
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AGD_VISION" AS
   CONSTRUCTOR FUNCTION ob_iax_agd_vision
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cempres := NULL;
      SELF.tempres := '';
      SELF.idobs := NULL;
      SELF.ctipvision := NULL;
      SELF.desctipvision := '';
      SELF.ttipvision := '';
      SELF.cvisible := NULL;
      SELF.descttipvision := '';
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AGD_VISION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGD_VISION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGD_VISION" TO "PROGRAMADORESCSI";
