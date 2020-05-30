--------------------------------------------------------
--  DDL for Type OB_IAX_DATOS_FND
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DATOS_FND" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DATOS_FND
   PROPÓSITO:  Contiene información de los fondos contratados.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0         04/06/2014  CMP                1. Creación del objeto.
******************************************************************************/
(
   cobliga        NUMBER(1),   -- fondo a rescatar.
   ccesta         NUMBER(3),   -- Código fondos
   tcesta         VARCHAR2(100),   -- Descripción fondos
   nuniact        NUMBER,   -- numero de unidades actuales
   iimpact        NUMBER,   -- importe rescatable del fondo
   fultval        DATE,   -- fecha de la ultima valoracion
   fultliq        DATE,   -- fecha de la ultima liquidacion
   prescat        NUMBER(5, 2),   -- porcentaje a rescatar
   irescat        NUMBER,   -- Importe o numero de unidades a rescatar.
   cmodabo        NUMBER,
   ndayaft        NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_datos_fnd
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DATOS_FND" AS
   CONSTRUCTOR FUNCTION ob_iax_datos_fnd
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccesta := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOS_FND" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOS_FND" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOS_FND" TO "PROGRAMADORESCSI";
