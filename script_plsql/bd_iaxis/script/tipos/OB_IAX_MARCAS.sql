--------------------------------------------------------
--  DDL for Type OB_IAX_MARCAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_MARCAS" AS OBJECT(
/******************************************************************************
   NOMBRE:     OB_IAX_MARCAS
   PROP¿SITO:  Contiene la informaci¿n de las marcas de las personas

   REVISIONES:
   Ver   Fecha      Autor           Descripci¿n
   ----- ---------- --------------- ------------------------------------
   1.0   08/08/2016 HRE             1. Creación del objeto.
   2.0   18/02/2019 CJMR            2. TCS-344 Marcas: Se agrega campo proveedor
******************************************************************************/
  cempres     NUMBER(2),
  sperson     NUMBER(10),
  carea       VARCHAR2(500),
  cmarca      VARCHAR2(10),
  descripcion VARCHAR2(2000),
  nmovimi     NUMBER(4),
  ctipo       NUMBER,
  ctomador    NUMBER,
  cconsorcio  NUMBER,
  casegurado  NUMBER,
  ccodeudor   NUMBER,
  cbenef      NUMBER,
  caccionista NUMBER,
  cintermed   NUMBER,
  crepresen   NUMBER,
  capoderado  NUMBER,
  cpagador    NUMBER,
  cvalor      NUMBER,
  observacion VARCHAR2(2000),
  cuser       VARCHAR2(20),
  falta       DATE,
  cproveedor  NUMBER, -- TCS-344 CJMR 18/02/2019
   -- 2.0 - 0019985: LCOL_A001-Control de las matriculas (prenotificaciones) - Fi
   CONSTRUCTOR FUNCTION ob_iax_marcas
      RETURN SELF AS RESULT,
   STATIC FUNCTION instanciar(a NUMBER)
      RETURN ob_iax_marcas,
   STATIC FUNCTION instanciar(pcempres IN NUMBER, psperson IN NUMBER, pcmarca IN VARCHAR2, pnmovimi IN NUMBER)
      RETURN ob_iax_marcas,
   MEMBER PROCEDURE p_get(pcempres IN NUMBER, psperson IN NUMBER, pcmarca IN VARCHAR2, pnmovimi IN NUMBER)
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_MARCAS" AS
   CONSTRUCTOR FUNCTION ob_iax_marcas
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
   STATIC FUNCTION instanciar(a NUMBER)
      RETURN ob_iax_marcas IS
      vcont          ob_iax_marcas;
   BEGIN
      vcont := ob_iax_marcas(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  -- TCS-344 CJMR 18/02/2019
      RETURN(vcont);
   END instanciar;

   STATIC FUNCTION instanciar(pcempres IN NUMBER, psperson IN NUMBER, pcmarca IN VARCHAR2, pnmovimi IN NUMBER)
      RETURN ob_iax_marcas IS
      vcont          ob_iax_marcas;
   BEGIN
      vcont := ob_iax_marcas(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  -- TCS-344 CJMR 18/02/2019
      vcont.p_get(pcempres, psperson, pcmarca, pnmovimi);
      RETURN(vcont);
   END instanciar;

   MEMBER PROCEDURE p_get(pcempres IN NUMBER, psperson IN NUMBER, pcmarca IN VARCHAR2, pnmovimi IN NUMBER) IS
   BEGIN
      SELECT a.cempres, a.sperson, c.tatribu area, a.cmarca, b.descripcion, a.nmovimi, a.ctipo, a.ctomador, a.cconsorcio, a.casegurado, a.ccodeudor, a.cbenef,
             a.caccionista, a.cintermed, a.crepresen, a.capoderado, a.cpagador, a.cproveedor, CASE  -- TCS-344 CJMR 18/02/2019
                                                 WHEN a.ctomador = 0 AND a.cconsorcio = 0 AND a.casegurado = 0 AND a.ccodeudor = 0
                                                      AND a.caccionista = 0 AND a.cintermed = 0 AND a.crepresen = 0 AND a.capoderado = 0
                                                      AND a.cpagador = 0 AND a.cproveedor = 0  -- TCS-344 CJMR 18/02/2019
                                                 THEN 0
                                                 ELSE 1
                                              END cvalor, a.observacion, a.cuser, a.falta
        INTO SELF.cempres, SELF.sperson, SELF.carea,SELF.cmarca, SELF.descripcion, SELF.nmovimi, SELF.ctipo, SELF.ctomador, SELF.cconsorcio, SELF.casegurado,
             SELF.ccodeudor, SELF.cbenef, SELF.caccionista, SELF.cintermed, SELF.crepresen, SELF.capoderado, SELF.cpagador, SELF.cproveedor, SELF.cvalor,   -- TCS-344 CJMR 18/02/2019
             SELF.observacion,SELF.cuser, SELF.falta
        FROM per_agr_marcas a, agr_marcas b, detvalores c
       WHERE a.cempres = b.cempres
         AND a.cmarca = b.cmarca
         AND b.carea = c.catribu
         AND c.cvalor = 8002004    -- TCS-344 CJMR 18/02/2019
         AND c.cidioma = pac_md_common.f_get_cxtidioma
         AND a.cempres = pcempres
         AND a.sperson = psperson
         AND a.cmarca = pcmarca
         AND ((pnmovimi IS NOT NULL AND a.nmovimi = pnmovimi)
               OR
              (pnmovimi IS NULL and a.nmovimi = (SELECT MAX(nmovimi)
                                                 FROM per_agr_marcas b
                                                WHERE a.cempres = b.cempres
                                                  AND a.sperson = b.sperson
                                                  AND a.cmarca = b.cmarca
                                               )
               )
             );

   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'OB_IAX_MARCAS.P_Get', 1, SQLCODE, SQLERRM);
   END p_get;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_MARCAS" TO "AXIS00";
