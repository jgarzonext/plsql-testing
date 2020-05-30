--------------------------------------------------------
--  DDL for Type OB_IAX_AVISO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AVISO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_AVISO
   PROPÓSITO:  Contiene la información de la agenda
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/06/2011   XPL                1. Creación del objeto.
******************************************************************************/
(
   caviso         NUMBER(6),   --c�digo del aviso
   taviso         VARCHAR2(200),   --T�tulo del aviso
   ctipaviso      NUMBER(4),   --c�digo tipo de aviso
   ttipaviso      VARCHAR2(200),   -- desc. tipo de aviso
   tfunc          VARCHAR2(500),   --funci�n a la que llama
   cactivo        NUMBER(1),   --1 activo, 0 inactivo
   cbloqueo       NUMBER(1),   --0 OK, 1 KO, 2 Warning
   tbloqueo       VARCHAR2(200),   --desc c�digo bloqueo(detvalores 800033)
   tmensaje       VARCHAR2(2000),   -- Mensaje de error/warning
   CONSTRUCTOR FUNCTION ob_iax_aviso
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AVISO" AS
   CONSTRUCTOR FUNCTION ob_iax_aviso
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.caviso := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AVISO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AVISO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AVISO" TO "PROGRAMADORESCSI";
