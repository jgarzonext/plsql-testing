--------------------------------------------------------
--  DDL for Type OB_IAX_CCC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CCC" AS OBJECT(
/******************************************************************************
   NOMBRE:     OB_IAX_CCC
   PROPÓSITO:  Contiene la información datos bancarios o tarjetas de personas

   REVISIONES:
   Ver   Fecha      Autor           Descripción
   ----- ---------- --------------- ------------------------------------
   1.0   XX/XX/XXXX XXX             1. Creación del objeto.
   2.0   04/11/2011 JGR             2. 0019985: LCOL_A001-Control de las matriculas (prenotificaciones)
******************************************************************************/
   cnordban       NUMBER,   --id de la cuenta
   ctipban        NUMBER(3),   --tipo iuenta
   ttipban        VARCHAR2(100),   -- descripción tipo cuenta
   cbancar        VARCHAR2(50),   -- cuenta
   fbaja          DATE,   -- baja?
   cdefecto       NUMBER(1),   -- cuenta por defecto?
   tdefecto       VARCHAR2(20),   -- descripción de cuenta por defecto?
   cusumov        VARCHAR2(20),   -- usuario de alta
   fusumov        DATE,   --fecha de modificación
   -- 2.0 - 0019985: LCOL_A001-Control de las matriculas (prenotificaciones) - Inici
   tbanco         VARCHAR2(36),
   ttiptarj       VARCHAR2(100),
   falta          DATE,
   cusualta       VARCHAR2(20),
   fvencim        DATE,
   tseguri        VARCHAR2(20),
   cvalida        NUMBER,
   tvalida        VARCHAR2(100),
   cpagsin        NUMBER,
   ctipcc         NUMBER,
   -- 2.0 - 0019985: LCOL_A001-Control de las matriculas (prenotificaciones) - Fi
   CONSTRUCTOR FUNCTION ob_iax_ccc
      RETURN SELF AS RESULT,
   STATIC FUNCTION instanciar(a NUMBER)
      RETURN ob_iax_ccc,
   STATIC FUNCTION instanciar(psperson IN NUMBER, pnordban IN NUMBER)
      RETURN ob_iax_ccc,
   MEMBER PROCEDURE p_get(psperson IN NUMBER, pcnordban IN NUMBER)
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CCC" AS
   CONSTRUCTOR FUNCTION ob_iax_ccc
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
   STATIC FUNCTION instanciar(a NUMBER)
      RETURN ob_iax_ccc IS
      vcont          ob_iax_ccc;
   BEGIN
      vcont := ob_iax_ccc(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                          NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
      RETURN(vcont);
   END instanciar;
   STATIC FUNCTION instanciar(psperson IN NUMBER, pnordban IN NUMBER)
      RETURN ob_iax_ccc IS
      vcont          ob_iax_ccc;
   BEGIN
      vcont := ob_iax_ccc(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                          NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
      vcont.p_get(psperson, pnordban);
      RETURN(vcont);
   END instanciar;
   MEMBER PROCEDURE p_get(psperson IN NUMBER, pcnordban IN NUMBER) IS
   BEGIN
      SELECT c.ctipban, c.cbancar, c.fbaja, c.cdefecto, c.cusumov,
             c.fusumov, c.cnordban,
             -- 2.0 - 0019985: LCOL_A001-Control de las matriculas (prenotificaciones) - Inici
             pac_domiciliaciones.ff_nombre_entidad(c.cbancar, c.ctipban) tbanco,
             ff_desvalorfijo(800049, pac_md_common.f_get_cxtidioma(), t.ctipcc) ttiptarj,
             c.falta, c.cusualta, c.fvencim, c.tseguri, c.cvalida,
             ff_desvalorfijo(386, pac_md_common.f_get_cxtidioma(), c.cvalida) tvalida,
             c.cpagsin, t.ctipcc
        -- 2.0 - 0019985: LCOL_A001-Control de las matriculas (prenotificaciones) - Fi
      INTO   SELF.ctipban, SELF.cbancar, SELF.fbaja, SELF.cdefecto, SELF.cusumov,
             SELF.fusumov, SELF.cnordban,
             -- 2.0 - 0019985: LCOL_A001-Control de las matriculas (prenotificaciones) - Inici
             SELF.tbanco,
             SELF.ttiptarj,
             SELF.falta, SELF.cusualta, SELF.fvencim, SELF.tseguri, SELF.cvalida,
             SELF.tvalida,
             SELF.cpagsin, SELF.ctipcc
        -- 2.0 - 0019985: LCOL_A001-Control de las matriculas (prenotificaciones) - Fi
      FROM   per_ccc c, tipos_cuenta t
       WHERE c.sperson = psperson
         AND c.cnordban = pcnordban
         AND c.ctipban = t.ctipban(+);
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'OB_IAX_CCC.P_Get', 1, SQLCODE, SQLERRM);   -- 2.0 - 0019985:
   -- NULL;
   END p_get;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CCC" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CCC" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CCC" TO "PROGRAMADORESCSI";
