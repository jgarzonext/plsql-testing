--------------------------------------------------------
--  DDL for Type OB_IAX_PERMARCAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PERMARCAS" AS OBJECT(
/******************************************************************************
   NOMBRE:     OB_IAX_PERMARCAS
   PROP¿SITO:  Contiene la informaci¿n de las marcas de las personas

   REVISIONES:
   Ver   Fecha      Autor           Descripci¿n
   ----- ---------- --------------- ------------------------------------
   1.0   10/08/2016 HRE             1. Creación del objeto.
   2.0   18/02/2019 CJMR            2. TCS-344 Marcas: Se agrega campo proveedor
   3.0   08/03/2019 CJMR            3. TCS-344 Marcas: Se agrega campo beneficiario
******************************************************************************/
  cempres     NUMBER(2),
  sperson     NUMBER(10),
  cmarca      VARCHAR2(10),
  descripcion VARCHAR2(2000),
  nmovimi     NUMBER(4),
  ctipo       NUMBER,
  ctomador    NUMBER,
  cconsorcio  NUMBER,
  casegurado  NUMBER,
  ccodeudor   NUMBER,
  caccionista NUMBER,
  cintermed   NUMBER,
  crepresen   NUMBER,
  capoderado  NUMBER,
  cpagador    NUMBER,
  cvalor      NUMBER,
  cuser       VARCHAR2(20),
  falta       DATE,
  cproveedor  NUMBER, -- TCS-344 CJMR 18/02/2019
  cbenef      NUMBER,

   CONSTRUCTOR FUNCTION ob_iax_PERMARCAS
      RETURN SELF AS RESULT,
   STATIC FUNCTION instanciar(a NUMBER)
      RETURN ob_iax_PERMARCAS,
   STATIC FUNCTION instanciar(pcempres IN NUMBER, psperson IN NUMBER, pcmarca IN VARCHAR2, pnmovimi IN NUMBER)
      RETURN ob_iax_PERMARCAS,
   MEMBER PROCEDURE p_get(pcempres IN NUMBER, psperson IN NUMBER, pcmarca IN VARCHAR2, pnmovimi IN NUMBER)
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PERMARCAS" AS
   CONSTRUCTOR FUNCTION ob_iax_permarcas
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
   STATIC FUNCTION instanciar(a NUMBER)
      RETURN ob_iax_permarcas IS
      vcont          ob_iax_permarcas;
   BEGIN
      vcont := ob_iax_permarcas(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  -- TCS-344 CJMR 18/02/2019
      RETURN(vcont);
   END instanciar;

   STATIC FUNCTION instanciar(pcempres IN NUMBER, psperson IN NUMBER, pcmarca IN VARCHAR2, pnmovimi IN NUMBER)
      RETURN ob_iax_permarcas IS
      vcont          ob_iax_permarcas;
   BEGIN
      vcont := ob_iax_permarcas(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  -- TCS-344 CJMR 18/02/2019
      vcont.p_get(pcempres, psperson, pcmarca, pnmovimi);
      RETURN(vcont);
   END instanciar;

   MEMBER PROCEDURE p_get(pcempres IN NUMBER, psperson IN NUMBER, pcmarca IN VARCHAR2, pnmovimi IN NUMBER) IS
   BEGIN
      SELECT a.cempres, a.sperson, a.cmarca, b.descripcion, a.nmovimi, a.ctipo, a.ctomador, a.cconsorcio, a.casegurado, a.ccodeudor, a.caccionista, a.cintermed,
             a.crepresen, a.capoderado, a.cpagador, a.cproveedor, a.cbenef, CASE  -- TCS-344 CJMR 18/02/2019
                                                 WHEN a.ctomador = 0 AND a.cconsorcio = 0 AND a.casegurado = 0 AND a.ccodeudor = 0
                                                      AND a.caccionista = 0 AND a.cintermed = 0 AND a.crepresen = 0 AND a.capoderado = 0
                                                      AND a.cpagador = 0 AND a.cproveedor = 0 AND a.cbenef = 0  -- TCS-344 CJMR 18/02/2019
                                                 THEN 0
                                                 ELSE 1
                                              END cvalor, a.cuser, a.falta
        INTO SELF.cempres, SELF.sperson, SELF.cmarca, SELF.descripcion, SELF.nmovimi, SELF.ctipo, SELF.ctomador, SELF.cconsorcio, SELF.casegurado,
             SELF.ccodeudor, SELF.caccionista, SELF.cintermed, SELF.crepresen, SELF.capoderado, SELF.cpagador, SELF.cproveedor, SELF.cbenef, SELF.cvalor,   -- TCS-344 CJMR 18/02/2019
             SELF.cuser, SELF.falta
        FROM per_agr_marcas a, agr_marcas b
       WHERE a.cempres = b.cempres
         AND a.cmarca = b.cmarca
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
         p_tab_error(f_sysdate, f_user, 'OB_IAX_PERMARCAS.P_Get', 1, SQLCODE, SQLERRM);
   END p_get;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PERMARCAS" TO "AXIS00";
