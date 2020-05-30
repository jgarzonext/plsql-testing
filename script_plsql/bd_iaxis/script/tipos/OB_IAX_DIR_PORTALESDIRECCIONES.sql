--------------------------------------------------------
--  DDL for Type OB_IAX_DIR_PORTALESDIRECCIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DIR_PORTALESDIRECCIONES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DIR_PORTALESDIRECCIONES
   PROPOSITO:    Portales direcciones

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. Creación del objeto.
******************************************************************************/
(
   idfinca        NUMBER(10),   --Id interno de la Finca
   idportal       NUMBER(2),   --Secuencial del Portal en la Finca
   idgeodir       NUMBER(10),   --Id interno de la GEODirecci�n
   cprincip       NUMBER(1),   --Marca de GEODirecci�n Prioritaria (S�lo uno por portal. Para obtener la direcci�n principal del portal)
   domicilios     t_iax_dir_domicilios,
   geodireccion   ob_iax_dir_geodirecciones,
   CONSTRUCTOR FUNCTION ob_iax_dir_portalesdirecciones
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DIR_PORTALESDIRECCIONES" AS
   CONSTRUCTOR FUNCTION ob_iax_dir_portalesdirecciones
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.idfinca := NULL;
      SELF.idportal := NULL;
      SELF.idgeodir := NULL;
      SELF.cprincip := NULL;
      SELF.domicilios := NULL;
      SELF.geodireccion := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_PORTALESDIRECCIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_PORTALESDIRECCIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_PORTALESDIRECCIONES" TO "PROGRAMADORESCSI";
