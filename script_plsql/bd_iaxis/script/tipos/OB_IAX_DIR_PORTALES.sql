--------------------------------------------------------
--  DDL for Type OB_IAX_DIR_PORTALES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DIR_PORTALES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DIR_PORTALES
   PROPOSITO:    Direcciones Portales

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. CreaciÃ³n del objeto.
******************************************************************************/
(
   idfinca        NUMBER(10),   --Id interno de la Finca
   idportal       NUMBER(2),   --Secuencial del Portal en la Finca
   cprincip       NUMBER(1),   --Indica si el portal es el principal de la Finca. Sólo 1. (0,No;1,Sí)
   cnoaseg        NUMBER(1),   --Indica si el portal está identificado como no asegurable
   tnoaseg        NUMBER(2),   --Tipificación de no asegurable
   nanycon        NUMBER(4),   --Año de Construcción
   ndepart        NUMBER(3),   --Número de Departamentos
   nplsota        NUMBER(2),   --Número de Plantas Sótano
   nplalto        NUMBER(3),   --Número de Plantas en Alto
   nascens        NUMBER(2),   --Número de Ascensores
   nescale        NUMBER(2),   --Número de Escaleras
   nm2vivi        NUMBER(6),   --M2 Viviendas
   nm2come        NUMBER(6),   --M2 Comerciales
   nm2gara        NUMBER(6),   --M2 Garajes
   nm2jard        NUMBER(6),   --M2 Jardines
   nm2cons        NUMBER(6),   --M2 Superficie Construida
   nm2suel        NUMBER(6),   --M2 Superficie Suelo
   csiglaspor     VARCHAR2(50),
   tcallepor      VARCHAR2(100),
   ndesdepor      NUMBER(5),
   nhastapor      NUMBER(5),
   tdesdepor      VARCHAR2(10),
   thastapor      VARCHAR2(10),
   portalesdir    t_iax_dir_portalesdirecciones,
   CONSTRUCTOR FUNCTION ob_iax_dir_portales
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DIR_PORTALES" AS
   CONSTRUCTOR FUNCTION ob_iax_dir_portales
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.idfinca := NULL;
      SELF.idportal := NULL;
      SELF.cprincip := NULL;
      SELF.cnoaseg := NULL;
      SELF.tnoaseg := NULL;
      SELF.nanycon := NULL;
      SELF.ndepart := NULL;
      SELF.nplsota := NULL;
      SELF.nplalto := NULL;
      SELF.nascens := NULL;
      SELF.nescale := NULL;
      SELF.nm2vivi := NULL;
      SELF.nm2come := NULL;
      SELF.nm2gara := NULL;
      SELF.nm2jard := NULL;
      SELF.nm2cons := NULL;
      SELF.nm2suel := NULL;
      SELF.csiglaspor := NULL;
      SELF.tcallepor := NULL;
      SELF.ndesdepor := NULL;
      SELF.nhastapor := NULL;
      SELF.tdesdepor := NULL;
      SELF.thastapor := NULL;
      SELF.portalesdir := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_PORTALES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_PORTALES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_PORTALES" TO "PROGRAMADORESCSI";
