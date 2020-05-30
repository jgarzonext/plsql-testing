--------------------------------------------------------
--  DDL for Type OB_IAX_DATOSCTASEGURO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DATOSCTASEGURO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DATOSCTASEGURO
   PROPÓSITO:  Contiene la información de ctaseguro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/04/2008   JRH                1. Creación del objeto.
   1.1        02/12/2008   XCOSTA             2. Aumentar el tamaño del campo TMOVIMI a 100
   2.0        12/06/2009   JGARCIAM           3. Añadir VALORLIQ y SALDOACUM
******************************************************************************/
(
   fcontab        DATE,
   nnumlin        NUMBER,
   ffecmov        DATE,
   fvalmov        DATE,
   cmovimi        NUMBER,
   tmovimi        VARCHAR2(100),
   imovimi        NUMBER,
   ccalint        NUMBER,
   imovim2        NUMBER,
   nrecibo        NUMBER,
   nsinies        VARCHAR2(14),
   cmovanu        NUMBER,
   tmovanu        VARCHAR2(30),
   smovrec        NUMBER,
   cesta          NUMBER,
   nunidad        NUMBER,
   cestado        VARCHAR2(30),
   fasign         DATE,
   nparpla        NUMBER,
   cestpar        VARCHAR2(30),
   iexceso        NUMBER,
   spermin        NUMBER,
   sidepag        NUMBER,
   ctipapor       VARCHAR2(30),
   srecren        NUMBER,
   capfall        NUMBER,
   capgarant      NUMBER,
-- JGM -12/06/09 - bug 10385
   valorliq       NUMBER,
   saldoacum      NUMBER,
   valorliqcmp    NUMBER,
   valorliqvtashw NUMBER,
   valorliqcmpshw NUMBER,
   falta          DATE,
   CONSTRUCTOR FUNCTION ob_iax_datosctaseguro
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DATOSCTASEGURO" AS
   CONSTRUCTOR FUNCTION ob_iax_datosctaseguro
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOSCTASEGURO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOSCTASEGURO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DATOSCTASEGURO" TO "PROGRAMADORESCSI";
