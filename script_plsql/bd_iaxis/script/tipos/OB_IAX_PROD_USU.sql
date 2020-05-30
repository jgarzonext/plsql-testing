--------------------------------------------------------
--  DDL for Type OB_IAX_PROD_USU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROD_USU" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PROD_USU
   PROPÓSITO:  Contiene la información de los productos por agente

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/11/2012   JRB                1. Creación del objeto.
******************************************************************************/
(
   cdelega        NUMBER,   --código del agente
   cramo          NUMBER,   --código del ramo
   cmodali        NUMBER,   --código de la modalidad
   ctipseg        NUMBER,   --código del tipo de seguro
   ccolect        NUMBER,   --código de la colectividad
   emitir         NUMBER,   --permite contratación
   imprimir       NUMBER,   --permite imprimir
   estudis        NUMBER,   --permite estudis
   cartera        NUMBER,   --permite cartera
   recibos        NUMBER,   --permite recibos
   accesible      NUMBER,   --permite resto de acciones
   seleccionado   NUMBER,   --si está seleccionada
   tramo          VARCHAR2(30),   --titulo del ramo
   ttitulo        VARCHAR2(40),   --titulo del producto
   sproduc        NUMBER,   --código del producto
   CONSTRUCTOR FUNCTION ob_iax_prod_usu
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROD_USU" AS
   CONSTRUCTOR FUNCTION ob_iax_prod_usu
      RETURN SELF AS RESULT IS
   BEGIN
      seleccionado := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROD_USU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROD_USU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROD_USU" TO "PROGRAMADORESCSI";
