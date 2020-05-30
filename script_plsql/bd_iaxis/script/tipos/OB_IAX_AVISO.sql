--------------------------------------------------------
--  DDL for Type OB_IAX_AVISO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AVISO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_AVISO
   PROPÃ“SITO:  Contiene la informaciÃ³n de la agenda
   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/06/2011   XPL                1. CreaciÃ³n del objeto.
******************************************************************************/
(
   caviso         NUMBER(6),   --código del aviso
   taviso         VARCHAR2(200),   --Título del aviso
   ctipaviso      NUMBER(4),   --código tipo de aviso
   ttipaviso      VARCHAR2(200),   -- desc. tipo de aviso
   tfunc          VARCHAR2(500),   --función a la que llama
   cactivo        NUMBER(1),   --1 activo, 0 inactivo
   cbloqueo       NUMBER(1),   --0 OK, 1 KO, 2 Warning
   tbloqueo       VARCHAR2(200),   --desc código bloqueo(detvalores 800033)
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
