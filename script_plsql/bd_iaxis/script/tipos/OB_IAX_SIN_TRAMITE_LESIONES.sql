--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMITE_LESIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMITE_LESIONES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITE_LESIONES
   PROP�SITO:  Contiene informaci�n de los tr�mites de siniestros.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/04/2011   ICV                1. Creaci�n del objeto.
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --N�mero Siniestro
   ntramte        NUMBER,   --N�mero Tr�mite
   cusualt        VARCHAR2(20),
   falta          DATE,
   cusumod        VARCHAR2(20),
   fusumod        VARCHAR2(20),
   nlesiones      NUMBER,
   nmuertos       NUMBER,
   agravantes     VARCHAR2(2000),
   cgradoresp     NUMBER,
   ctiplesiones   NUMBER,
   ctiphos        NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_sin_tramite_lesiones
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMITE_LESIONES" AS
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITE_LESIONES
   PROP�SITO:  Contiene informaci�n de los tr�mites de siniestros.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/04/2011   ICV                1. Creaci�n del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_sin_tramite_lesiones
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.ntramte := NULL;
      SELF.cusualt := NULL;
      SELF.falta := NULL;
      SELF.cusumod := NULL;
      SELF.fusumod := NULL;
      SELF.nlesiones := NULL;
      SELF.nmuertos := NULL;
      SELF.agravantes := NULL;
      SELF.cgradoresp := NULL;
      SELF.ctiplesiones := NULL;
      SELF.ctiphos := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE_LESIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE_LESIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITE_LESIONES" TO "PROGRAMADORESCSI";
