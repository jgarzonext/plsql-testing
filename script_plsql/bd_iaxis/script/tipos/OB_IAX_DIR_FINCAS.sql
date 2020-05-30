--------------------------------------------------------
--  DDL for Type OB_IAX_DIR_FINCAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DIR_FINCAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DIR_FINCAS
   PROPOSITO:    Direcciones fincas

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. CreaciÃ³n del objeto.
   2.0        20/05/2014   MNUSTES           1. 33977-0201044 Precision de los campos cprovin, cpoblac
******************************************************************************/
(
   idfinca        NUMBER(10),   --Identificador de la finca
   idlocal        NUMBER(8),   --Identificador de la localidad
   ccatast        VARCHAR2(30),   --Referencia Catastral
   ctipfin        NUMBER(1),   --Codigo tipo finca
   ttipfin        VARCHAR2(100),   -- Nombre tipo finca
   nanycon        NUMBER(4),   --Año de Construcción Finca
   tfinca         VARCHAR2(100),   --Nombre de la Finca (ej. Edificio Walden)
   cnoaseg        NUMBER(1),   --Indica si la Finca está identificada como no asegurable
   tnoaseg        NUMBER(2),   --Tipificación de no asegurable
   cpostalfin     VARCHAR2(30),
   cpaisfin       NUMBER(3),
   tpaisfin       VARCHAR2(100),
   cprovinfin     NUMBER,   -- Bug 33977-0201044 20/05/2015 - precision NUMBER
   tprovinfin     VARCHAR2(100),
   cpoblacfin     NUMBER,   -- Bug 33977-0201044 20/05/2015 - precision NUMBER
   tpoblacfin     VARCHAR2(100),
   clocalifin     NUMBER(8),
   tlocalifin     VARCHAR2(100),
   ctipviafin     NUMBER(3),
   csiglasfin     VARCHAR2(50),
   tcallefin      VARCHAR2(100),
   ndesdefin      NUMBER(5),
   tdesdefin      VARCHAR2(10),
   tfuentefin     VARCHAR2(50),
   cfuentefin     NUMBER(1),
   portales       t_iax_dir_portales,
   CONSTRUCTOR FUNCTION ob_iax_dir_fincas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DIR_FINCAS" AS
   CONSTRUCTOR FUNCTION ob_iax_dir_fincas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.idfinca := NULL;
      SELF.idlocal := NULL;
      SELF.ccatast := NULL;
      SELF.ctipfin := NULL;
      SELF.ttipfin := NULL;
      SELF.nanycon := NULL;
      SELF.tfinca := NULL;
      SELF.cnoaseg := NULL;
      SELF.tnoaseg := NULL;
      SELF.cpostalfin := NULL;
      SELF.cpaisfin := NULL;
      SELF.tpaisfin := NULL;
      SELF.cprovinfin := NULL;
      SELF.tprovinfin := NULL;
      SELF.cpoblacfin := NULL;
      SELF.tpoblacfin := NULL;
      SELF.clocalifin := NULL;
      SELF.tlocalifin := NULL;
      SELF.ctipviafin := NULL;
      SELF.csiglasfin := NULL;
      SELF.tcallefin := NULL;
      SELF.ndesdefin := NULL;
      SELF.tdesdefin := NULL;
      SELF.cfuentefin := NULL;
      SELF.tfuentefin := NULL;
      SELF.portales := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_FINCAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_FINCAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIR_FINCAS" TO "PROGRAMADORESCSI";
