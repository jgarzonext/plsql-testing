--------------------------------------------------------
--  DDL for Type OB_FIS_PARAMETROS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_FIS_PARAMETROS" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_FIS_PARAMETROS
   PROPÓSITO:

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        03/09/2008  SBG              1. Creación del objeto.
******************************************************************************/
(
   EMPRESA       NUMBER(2),    -- Empresa presentadora
   MODELO        VARCHAR2(50), -- Modelo fiscal a generar
   FICHERO       VARCHAR2(80), -- Nombre Fichero
   FECHA_INI     DATE,         -- Fecha inicio periodo
   FECHA_FIN     DATE,         -- Fecha fin periodo
   ANOFISCAL     VARCHAR2(4),  -- Año fiscal
   TIPOSOPORTE   VARCHAR2(30), -- Tipo de soporte entrega
   TIPOCIUDADANO VARCHAR2(30), -- Tipo de ciudadano

   MEMBER FUNCTION F_ComponerLinea (P_ERROR OUT NUMBER) RETURN VARCHAR2,

   CONSTRUCTOR FUNCTION OB_FIS_PARAMETROS RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_FIS_PARAMETROS" AS

   CONSTRUCTOR FUNCTION OB_FIS_PARAMETROS RETURN SELF AS RESULT IS
   BEGIN
      SELF.EMPRESA       := NULL;
      SELF.MODELO        := NULL;
      SELF.FICHERO       := NULL;
      SELF.FECHA_INI     := NULL;
      SELF.FECHA_FIN     := NULL;
      SELF.ANOFISCAL     := NULL;
      SELF.TIPOSOPORTE   := NULL;
      SELF.TIPOCIUDADANO := NULL;

      RETURN;
   END;

   MEMBER FUNCTION F_ComponerLinea (P_ERROR OUT NUMBER) RETURN VARCHAR2 IS
      V_LPARAME VARCHAR2(2000);
      V_RES     VARCHAR2(500);
   BEGIN
      V_LPARAME := PAC_FISCIERRE.F_GETLINEAPARAM(SELF.EMPRESA, SELF.MODELO, P_ERROR);

      IF P_ERROR <> 0 THEN
         RETURN NULL;
      END IF;

      V_RES := V_LPARAME;
      V_RES := REPLACE(V_RES, '#EMPRESA',       SELF.EMPRESA);
      V_RES := REPLACE(V_RES, '#MODELO',        SELF.MODELO);
      V_RES := REPLACE(V_RES, '#FICHERO',       SELF.FICHERO);
      V_RES := REPLACE(V_RES, '#FECHA_INI',     TO_CHAR(SELF.FECHA_INI, 'YYYYMMDD'));
      V_RES := REPLACE(V_RES, '#FECHA_FIN',     TO_CHAR(SELF.FECHA_FIN, 'YYYYMMDD'));
      V_RES := REPLACE(V_RES, '#ANOFISCAL',     SELF.ANOFISCAL);
      V_RES := REPLACE(V_RES, '#TIPOSOPORTE',   SELF.TIPOSOPORTE);
      V_RES := REPLACE(V_RES, '#TIPOCIUDADANO', SELF.TIPOCIUDADANO);

      IF INSTR(V_RES, '#') = 0 THEN
         P_ERROR := 0;
      ELSE
         P_ERROR := -1;
      END IF;

      RETURN(V_RES);
   END F_ComponerLinea;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_FIS_PARAMETROS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_FIS_PARAMETROS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_FIS_PARAMETROS" TO "PROGRAMADORESCSI";
