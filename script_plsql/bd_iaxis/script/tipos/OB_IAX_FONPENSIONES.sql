--------------------------------------------------------
--  DDL for Type OB_IAX_FONPENSIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_FONPENSIONES" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_FONPENSIONES
   PROPÓSITO:  Contiene la información de los fondos de pensiones

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/12/2009   JTS                1. Creación del objeto.
******************************************************************************/
(
   ccodfon        NUMBER(6),
   coddgs         VARCHAR2(10),
   faltare        DATE,
   persona        ob_iax_personas,   --persona fondo pension
   personatit     ob_iax_personas,   --persona titular fondo pension
   fbajare        DATE,
   tbanco         VARCHAR2(36),
   ccomerc        VARCHAR2(1),
   ccodges        NUMBER(6),
   cgesdgs        VARCHAR2(10),
   tnomges        VARCHAR2(250),
   clafon         NUMBER(3),
   cdivisa        NUMBER(2),
   cbancar        VARCHAR2(50 BYTE),
   ctipban        NUMBER(3),
   tcodges        VARCHAR2(61 BYTE),
   tfondo         VARCHAR2(100 BYTE),
   ntomo          NUMBER(6),
   nfolio         NUMBER(6),
   nhoja          NUMBER(6),
   sperson        NUMBER,
   depositaria    t_iax_pdepositarias,
   planpensiones  t_iax_planpensiones,
   CONSTRUCTOR FUNCTION ob_iax_fonpensiones
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_FONPENSIONES" AS
   CONSTRUCTOR FUNCTION ob_iax_fonpensiones
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodfon := NULL;
      SELF.coddgs := NULL;
      SELF.faltare := NULL;
      SELF.fbajare := NULL;
      SELF.tbanco := NULL;
      SELF.ccomerc := NULL;
      SELF.ccodges := NULL;
      SELF.tnomges := NULL;
      SELF.clafon := NULL;
      SELF.cdivisa := NULL;
      SELF.cgesdgs := NULL;
      SELF.cbancar := NULL;
      SELF.ctipban := NULL;
      SELF.depositaria := NULL;
      SELF.tcodges := NULL;
      SELF.tfondo := NULL;
      SELF.sperson := NULL;
      SELF.ntomo := NULL;
      SELF.nfolio := NULL;
      SELF.nhoja := NULL;
      SELF.persona := ob_iax_personas();
      SELF.personatit := ob_iax_personas();
      SELF.planpensiones := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_FONPENSIONES" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_FONPENSIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_FONPENSIONES" TO "R_AXIS";
