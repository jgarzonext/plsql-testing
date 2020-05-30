--------------------------------------------------------
--  DDL for Type OB_IAX_DETCOMISION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DETCOMISION" AS object
/******************************************************************************
NOMBRE:       OB_DET_COMISION
PROPÓSITO:  Contiene la información de la gestión de comisión
REVISIONES:
Ver        Fecha        Autor             Descripción
---------  ----------  ---------------  ------------------------------------
1.0        27/11/2007   ACC                1. Creación del objeto.
******************************************************************************/
(
  sproduc    NUMBER(6),
  ttitulo    VARCHAR2(500),
  trotulo    VARCHAR2(500),
  cactivi    NUMBER(4),
  tactivi    VARCHAR2(500),
  cgarant    NUMBER(4),
  tgarant    VARCHAR2(500),
  nivel      NUMBER(1),
  finivig    DATE,
  ffinvig    DATE,
  modificado NUMBER,
  cmodcom    NUMBER(1),
  tmodcom    VARCHAR2(500),
  ccomisi    NUMBER,
  tcomisi    VARCHAR2(500),
  pcomisi FLOAT,
  ninialt   NUMBER,
  nfinalt   NUMBER,
  nindice   NUMBER,
  pdesglose NUMBER,
  ccriterio NUMBER,
  ndesde    NUMBER,
  nhasta    NUMBER,
  tcriterio VARCHAR2(100),
  constructor
  FUNCTION ob_iax_detcomision
    RETURN self AS result );
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DETCOMISION" AS constructor
FUNCTION ob_iax_detcomision

  RETURN self AS result
IS
BEGIN
  self.cmodcom := 0;
  self.pcomisi := 0;
  self.modificado := 0;
  RETURN;
END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DETCOMISION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETCOMISION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETCOMISION" TO "PROGRAMADORESCSI";
