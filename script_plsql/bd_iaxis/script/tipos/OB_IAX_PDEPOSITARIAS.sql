--------------------------------------------------------
--  DDL for Type OB_IAX_PDEPOSITARIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PDEPOSITARIAS" AS OBJECT
/******************************************************************************
   NOMBRE:    ob_iax_pdepositarias
   PROPÓSITO:  Contiene la información de las pensiones depositarias

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/12/2009   JTS              1. Creación del objeto.
   2.0        21-10-2011   JGR              2. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
******************************************************************************/
(
   ccoddep        NUMBER(4),
   falta          DATE,
   fbaja          DATE,
   persona        ob_iax_personas,   --persona depositaria
   cbanco         NUMBER(4),
   ctipban        NUMBER(3),   --solo cuando es consultado junto con un Fondo o Aseguradora
   cbancar        VARCHAR2(50),   --solo cuando es consultado junto con un Fondo o Aseguradora
   ctrasp         NUMBER(1),   --solo cuando es consultado junto con un Fondo o Aseguradora
   CONSTRUCTOR FUNCTION ob_iax_pdepositarias
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PDEPOSITARIAS" AS
   CONSTRUCTOR FUNCTION ob_iax_pdepositarias
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccoddep := NULL;
      SELF.falta := NULL;
      SELF.fbaja := NULL;
      SELF.persona := ob_iax_personas();
      SELF.cbanco := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PDEPOSITARIAS" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PDEPOSITARIAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PDEPOSITARIAS" TO "R_AXIS";
