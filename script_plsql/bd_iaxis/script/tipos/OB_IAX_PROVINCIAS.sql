--------------------------------------------------------
--  DDL for Type OB_IAX_PROVINCIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROVINCIAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PROVINCIAS
   PROPOSITO:    Tabla de provincias

   REVISIONES:
   Ver        Fecha        Autor             Descripci√≥n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. Creaci√≥n del objeto.
   2.0        20/05/2015   MNUSTES           1. 33977-0201044 Precision de los campos cprovin, cpoblac
******************************************************************************/
(
   cprovin        NUMBER,   --Codigo de Provincia Bug 33977-0201044 20/05/2015 - precision NUMBER
   tprovin        VARCHAR2(30),   --Nombre de la Provincia
   cpais          NUMBER(3),   --Codigo de Pais
   tpais          VARCHAR2(100),   -- Nombre de Pais
   ccedcon        NUMBER(1),   --Cede o no el consorcio
   tcedcon        VARCHAR2(100),   -- Cede o no el consorcio
   cceddgs        NUMBER(1),   --Cede o no DGS
   tceddgs        VARCHAR2(100),   -- Cede o no DGS
   ccedips        NUMBER(1),   --Cede o no IPS
   tcedips        VARCHAR2(100),   -- Cede o no IPS
   idccaa         NUMBER(2),   --Id CCAA
   iso31662       VARCHAR2(100),   --Codigo ISO-3166-2 Region Administrativa
   cvalprv        NUMBER(1),   --Indica si la provincia est· confirmada
   tvalprv        VARCHAR2(100),   -- Indica si la provincia est· confirmada
   CONSTRUCTOR FUNCTION ob_iax_provincias
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROVINCIAS" AS
   CONSTRUCTOR FUNCTION ob_iax_provincias
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cprovin := NULL;
      SELF.tprovin := NULL;
      SELF.cpais := NULL;
      SELF.tpais := NULL;
      SELF.ccedcon := NULL;
      SELF.tcedcon := NULL;
      SELF.cceddgs := NULL;
      SELF.tceddgs := NULL;
      SELF.ccedips := NULL;
      SELF.tcedips := NULL;
      SELF.idccaa := NULL;
      SELF.iso31662 := NULL;
      SELF.cvalprv := NULL;
      SELF.tvalprv := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROVINCIAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROVINCIAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROVINCIAS" TO "PROGRAMADORESCSI";
