--------------------------------------------------------
--  DDL for Type OB_USUARIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_USUARIOS" AS OBJECT(
/******************************************************************************
   NOMBRE:       OB_DET_OB_IAX_MOVRECIBO
   PROPÓSITO:  Contiene los movimientos del Recibo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        XX/XX/XXXX   XXX                1. Creación del objeto.
   2.0        11/04/2011   APD                2. 0018225: AGM704 - Realizar la modificación de precisión el cagente
   3.0        20/05/2015   MNUSTES            1. 33977-0201044 Precision de los campos cprovin, cpoblac
******************************************************************************/
   cusuari        VARCHAR2(20 BYTE),
   cidioma        NUMBER(2),
   cempres        NUMBER(2),
   tusunom        VARCHAR2(70 BYTE),
   tpcpath        VARCHAR2(30 BYTE),
   cdelega        NUMBER,   -- Bug 18225 - APD - 11/04/2011 - la precisión debe ser NUMBER
   cprovin        NUMBER,   -- Bug 33977-0201044 20/05/2015 - precision NUMBER
   cpoblac        NUMBER,   -- Bug 33977-0201044 20/05/2015 - precision NUMBER
   cvistas        NUMBER(3),
   cweb           NUMBER(1),
   repserver      VARCHAR2(100 BYTE),
   ejecucion      NUMBER(1),
   sperson        NUMBER(10),
   fbaja          DATE,
   ctipusu        NUMBER(2),
   cagecob        NUMBER,   -- Bug 18225 - APD - 11/04/2011 - la precisión de cdelega debe ser NUMBER
   copcion        NUMBER(6),
   tpwd           VARCHAR2(100 BYTE),
   falta          DATE,
   cusubbdd       VARCHAR2(30 BYTE),
   error          t_ob_error,
   CONSTRUCTOR FUNCTION ob_usuarios
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_USUARIOS" AS
   CONSTRUCTOR FUNCTION ob_usuarios
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cusuari := '';
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_USUARIOS" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_USUARIOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_USUARIOS" TO "CONF_DWH";
