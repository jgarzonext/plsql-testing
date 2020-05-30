--------------------------------------------------------
--  DDL for Type OB_IAX_PERLOPD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PERLOPD" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PERLOPD
   PROP每SITO:  Contiene la informaci贸n de las LOPD

   REVISIONES:
   Ver        Fecha        Autor             Descripci胒鲁n
   ---------  ----------  ---------------  ------------------------------------
   1.0        08/02/2012   XPL                1. Creaci贸n del objeto.
******************************************************************************/
(
   sperson        NUMBER(10),   --    Secuencia unica de identificacion de una persona
   cagente        NUMBER,   --    C贸digo de agente
   fmovimi        DATE,   --     Fecha del movimiento
   cusuari        VARCHAR2(20),   --   Usuario de alta
   cestado        NUMBER,   --   VF. 276 Estado movimiento LOPD
   testado        VARCHAR2(300),   -- Descripci髇 estado
   ctipdoc        NUMBER(2),   --     Tipo de documento VF. 277
   ttipdoc        VARCHAR2(300),   -- Descripci髇 tipo documento
   ftipdoc        DATE,   --     Fecha de entrada del tipo de documento
   catendido      NUMBER,   --      Atendido el derecho. SI/NO (0:No. 1:Si.)
   fatendido      DATE,   --   Fecha de Atenci髇
   norden         NUMBER(2),   --     N鷐ero de orden de los movimientos
   cesion         NUMBER(2),   --  0:No. 1:Si. (Si se opone) default 0
   publicidad     NUMBER(2),   -- 0:No. 1:Si. (Si se opone) default 0
   cancelacion    NUMBER(2),   --0:No. 1:Si. (Hay movimientos de cancelaci髇) default 0
   acceso         NUMBER(2),   --  0:No. 1:Si. (Si se opone) default 0
   rectificacion  NUMBER(2),   --  0:No. 1:Si. (Si se opone) default 0
   CONSTRUCTOR FUNCTION ob_iax_perlopd
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PERLOPD" AS
   CONSTRUCTOR FUNCTION ob_iax_perlopd
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PERLOPD" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PERLOPD" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PERLOPD" TO "PROGRAMADORESCSI";
