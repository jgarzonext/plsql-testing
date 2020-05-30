--------------------------------------------------------
--  DDL for Type OB_IAX_PROD_USU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROD_USU" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PROD_USU
   PROP�SITO:  Contiene la informaci�n de los productos por agente

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/11/2012   JRB                1. Creaci�n del objeto.
******************************************************************************/
(
   cdelega        NUMBER,   --c�digo del agente
   cramo          NUMBER,   --c�digo del ramo
   cmodali        NUMBER,   --c�digo de la modalidad
   ctipseg        NUMBER,   --c�digo del tipo de seguro
   ccolect        NUMBER,   --c�digo de la colectividad
   emitir         NUMBER,   --permite contrataci�n
   imprimir       NUMBER,   --permite imprimir
   estudis        NUMBER,   --permite estudis
   cartera        NUMBER,   --permite cartera
   recibos        NUMBER,   --permite recibos
   accesible      NUMBER,   --permite resto de acciones
   seleccionado   NUMBER,   --si est� seleccionada
   tramo          VARCHAR2(30),   --titulo del ramo
   ttitulo        VARCHAR2(40),   --titulo del producto
   sproduc        NUMBER,   --c�digo del producto
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
