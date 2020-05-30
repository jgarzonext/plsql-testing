--------------------------------------------------------
--  DDL for Type OB_IAX_DIR_GEODIRECCIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DIR_GEODIRECCIONES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DIR_GEODIRECCIONES
   PROPOSITO:    Direcciones Geodirecciones

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. Creación del objeto.
******************************************************************************/
(
   idgeodir       NUMBER(10),   --Id interno de la GEODirecci�n
   idcalle        NUMBER(10),   --Id interno de la Calle
   ctipnum        NUMBER(1),   --N�mero de calle, Kil�metro, etc.
   ndesde         NUMBER(5),   --N�mero Desde  de la Calle
   tdesde         VARCHAR2(10),   --Dato Complementario al N�mero Desde (Bis, Bloque A, etc)
   nhasta         NUMBER(5),   --N�mero Hasta  de la Calle
   thasta         VARCHAR2(10),   --Dato Complementario al N�mero Hasta (Bis, Bloque A, etc)
   cpostal        VARCHAR2(30),   --C�digo Postal de la calle (desde/hasta n�mero calle)
   cgeox          VARCHAR2(20),   --Coordenadas Longitud
   cgeoy          VARCHAR2(20),   --Coordenadas Latitud
   cgeoz          VARCHAR2(20),
   cgeonum        NUMBER(10),   --
   cgeoid         VARCHAR2(30),   --
   cvaldir        NUMBER(1),   --
   tvaldir        VARCHAR2(100),   --
   calle          ob_iax_dir_calles,
   CONSTRUCTOR FUNCTION ob_iax_dir_geodirecciones
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DIR_GEODIRECCIONES" AS
   CONSTRUCTOR FUNCTION ob_iax_dir_geodirecciones
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.idgeodir := NULL;
      SELF.idcalle := NULL;
      SELF.ctipnum := NULL;
      SELF.ndesde := NULL;
      SELF.tdesde := NULL;
      SELF.nhasta := NULL;
      SELF.thasta := NULL;
      SELF.cpostal := NULL;
      SELF.cgeox := NULL;
      SELF.cgeoy := NULL;
      SELF.cgeoz := NULL;
      SELF.cgeonum := NULL;
      SELF.cgeoid := NULL;
      SELF.cvaldir := NULL;
      SELF.tvaldir := NULL;
      SELF.calle := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_GEODIRECCIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_GEODIRECCIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_GEODIRECCIONES" TO "PROGRAMADORESCSI";
