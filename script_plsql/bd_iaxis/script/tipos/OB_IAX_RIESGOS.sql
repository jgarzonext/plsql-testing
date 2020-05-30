--------------------------------------------------------
--  DDL for Type OB_IAX_RIESGOS
--------------------------------------------------------

  CREATE OR REPLACE TYPE "OB_IAX_RIESGOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_RIESGOS
   PROPÓSITO:  Contiene la información del riesgo de la poliza

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC                1. Creación del objeto.
   2.0        14/09/2007   ACC                2. Simplificación riesgo
   3.0        21/07/2009   XPL                3. Bug. 10702, Afegir saldodeutors
   4.0        16/09/2009   AMC                4. Bug 11165 Cambiar saldodeutors por prestamoseg
   5.0        17/12/2009   JMF                5. 0010908 CRE - ULK - Parametrització del suplement automàtic d'actualització de patrimoni
   6.0        26/09/2011   DRA                6. 0019532: CEM - Tratamiento de la extraprima en AXIS
   7.0        25/04/2011   MDS                7. 0021907: MDP - TEC - Descuentos y recargos (técnico y comercial) a nivel de póliza/riesgo/garantía
******************************************************************************/
(
   nriesgo        NUMBER,   --Número de riesgo
   triesgo        VARCHAR2(1000),   --Descripción riesgo
   nmovima        NUMBER(4),   --Número de movimiento (alta)
   nmovimb        NUMBER(4),   --Número de movimiento (baja)
   fefecto        DATE,   --Fecha de efecto
   cclarie        NUMBER(2),   --Código de la clase de riesgo
   tnatrie        VARCHAR2(300),   --Naturaleza del riesgo
   fanulac        DATE,   --Fecha de anulación
   ctipdiraut     NUMBER(2),   --Tipo de direccion 0.- la del tomador 1.- particular
   iprireb        NUMBER,   --NUMBER(15, 2),   --Prima del 1er rebut
   cactivi        NUMBER(4),   --Código de la actividad
   tactivi        VARCHAR2(1000),   --Descripción actividad
   itotanu        NUMBER,   --NUMBER(15, 2),   --Prima total anualizada
   riespersonal   t_iax_personas,   --Personal
   riesdireccion  ob_iax_sitriesgos,   --Direcciones
   riesgoase      t_iax_asegurados,   --Asegurados
   preguntas      t_iax_preguntas,   --Preguntas
   garantias      t_iax_garantias,   --Garantias
   beneficiario   ob_iax_beneficiarios,   --Beneficiario
   primas         ob_iax_primas,   --Primas acumuladas riesgo
   --JRH 03/2008
   rentirreg      t_iax_rentairr,   --Rentas irregulares
   --JRH 03/2008
   mjs            t_iax_mensajes,
   /* Detalle riesgo autos */
   riesautos      t_iax_autriesgos,   --Detalle riesgo auto
   /* */
   prestamo       t_iax_prestamoseg,   -- colecció de comptes de saldo deutors
   riesdescripcion ob_iax_descripcion,   --Descripción o innominado
   needtarifar    NUMBER,   -- t.7817
   -- Ini Bug 21907 - MDS - 25/04/2012
   crggardif      NUMBER(1),   -- Hay garantías con descuentos o recargos diferentes
   att_garansegcom t_iax_garansegcom,
   bonfranseg     t_iax_bonfranseg,
   cmodalidad     NUMBER,
   aseguradosmes  ob_iax_aseguradosmes,
   tdescrie       VARCHAR2(32000),  -- BUG CONF-114 - 21/09/2016 - JAEG
   -- Fin Bug 21907 - MDS - 25/04/2012
   --Establece el objeto primas riesgo
   MEMBER PROCEDURE p_set_primas(pri ob_iax_primas),
   --Acumula las primas de les garantias a nivell risc
   MEMBER FUNCTION f_get_primas(
      SELF IN OUT ob_iax_riesgos,
      pssolicit NUMBER,
      pnmovimi NUMBER,
      pmode VARCHAR2)
      RETURN ob_iax_primas,
   --Calcula la prima del risc
   MEMBER PROCEDURE p_calc_primas(pssolicit NUMBER, pnmovimi NUMBER, pmode VARCHAR2),
   --Establece la necesidad de volver a tarificar y como consequencia no mostrar primas
   -- 1 necesita tarificar  0 tarficado
   MEMBER PROCEDURE p_set_needtarificar(need NUMBER),
   -- Recupera les preguntes de risc automatiques
   MEMBER PROCEDURE p_get_pregauto(pssolicit NUMBER, pnmovimi NUMBER, pmode VARCHAR2),
   -- Recarrega les garantias despres de tarificar
   MEMBER PROCEDURE p_get_garaftertar(pssolicit NUMBER, pnmovimi NUMBER, pmode VARCHAR2),
   -- Estableix la descripión del riesgo según el tipo riesgo
   MEMBER PROCEDURE p_descriesgo(
      vcobjase NUMBER,
      pssolicit IN NUMBER,
      pmode VARCHAR2 DEFAULT 'EST'),
   -- Recupera la descripión del riesgo según el tipo riesgo
   MEMBER PROCEDURE get_descriesgo(
      vcobjase NUMBER,
      pssolicit NUMBER,
      risc OUT VARCHAR2,
      pmode VARCHAR2 DEFAULT 'EST'),
   -- Recupera les preguntes automàtiques a nivell de garantia
   -- Paràmetres:
   --     pssolicit -> sseguro de la pòlissa
   --     pnmovimi  -> nmovimi de la pòlissa
   --     pmode     -> el valor de com recuperar les dades (EST o POL)
   MEMBER PROCEDURE p_get_pregautoriegar(
      pssolicit IN NUMBER,
      pnmovimi IN NUMBER,
      pmode VARCHAR2 DEFAULT 'EST'),
   MEMBER PROCEDURE p_set_needtarifar(need IN NUMBER),   -- t.7817
   CONSTRUCTOR FUNCTION ob_iax_riesgos
      RETURN SELF AS RESULT
-- ini Bug 0010908 - 17/12/2009 - JMF
   ,
   MEMBER PROCEDURE p_get_tablaspregauto(
      pssolicit IN NUMBER,
      pnmovimi IN NUMBER,
      pmode VARCHAR2 DEFAULT 'EST')

-- fin Bug 0010908 - 17/12/2009 - JMF
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_RIESGOS" AS
   CONSTRUCTOR FUNCTION ob_iax_riesgos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.riespersonal := NULL;
      SELF.riesdireccion := NULL;
      SELF.riesgoase := NULL;
      SELF.preguntas := NULL;
      SELF.garantias := NULL;
      SELF.beneficiario := NULL;
      SELF.riesautos := NULL;
      SELF.primas := ob_iax_primas();
      SELF.riesdescripcion := NULL;
      SELF.cmodalidad := NULL;
      SELF.tdescrie := NULL;  -- BUG CONF-114 - 21/09/2016 - JAEG
      RETURN;
   END;
   --Establece el objeto primas riesgo
   MEMBER PROCEDURE p_set_primas(pri ob_iax_primas) IS
   BEGIN
      SELF.primas := pri;
   END p_set_primas;
   --Calcula la prima del risc
   MEMBER PROCEDURE p_calc_primas(pssolicit NUMBER, pnmovimi NUMBER, pmode VARCHAR2) IS
      pri            ob_iax_primas := ob_iax_primas();
      garant         ob_iax_garantias;
      pgar           ob_iax_primas;
      v_msg          t_iax_mensajes;
      v_num_err      NUMBER;
   BEGIN
      IF SELF.garantias IS NOT NULL THEN
         IF SELF.garantias.COUNT > 0 THEN
            FOR vgar IN SELF.garantias.FIRST .. SELF.garantias.LAST LOOP
               IF SELF.garantias.EXISTS(vgar) THEN
                  SELF.garantias(vgar).p_calc_primas(pssolicit, pnmovimi, pmode, nriesgo);
                  pgar := SELF.garantias(vgar).primas;
                  --  pri.primaseguro := nvl(pri.primaseguro,0) + nvl(pgar.primaseguro,0);
                  --  pri.impuestos   := nvl(pri.impuestos,0) + nvl(pgar.impuestos,0);
                  --  pri.recargos    := nvl(pri.recargos,0) + nvl(pgar.recargos,0);
                  --  pri.primatotal  := nvl(pri.primatotal,0) + nvl(pgar.primatotal,0);
                  --  pri.primarecibo := nvl(pri.primarecibo,0) + nvl(pgar.primarecibo,0);
                  pri.iextrap := NVL(pri.iextrap, 0) + NVL(pgar.iextrap, 0);
                  pri.iiextrap := NVL(pri.iiextrap, 0) + NVL(pgar.iiextrap, 0);   -- BUG19532:DRA:28/09/2011
                  pri.iprianu := NVL(pri.iprianu, 0) + NVL(pgar.iprianu, 0);
                  pri.ipritar := NVL(pri.ipritar, 0) + NVL(pgar.ipritar, 0);
                  pri.ipritot := NVL(pri.ipritot, 0) + NVL(pgar.ipritot, 0);
                  --pri.precarg := NVL(pri.precarg, 0) + NVL(pgar.precarg, 0); -- Bug 21907 - MDS - 20/04/2012
                  pri.irecarg := NVL(pri.irecarg, 0) + NVL(pgar.irecarg, 0);
                  --pri.pdtocom := NVL(pri.pdtocom, 0) + NVL(pgar.pdtocom, 0); -- Bug 21907 - MDS - 20/04/2012
                  pri.idtocom := NVL(pri.idtocom, 0) + NVL(pgar.idtocom, 0);
                  pri.itarifa := NVL(pri.itarifa, 0) + NVL(pgar.itarifa, 0);
                  pri.iconsor := NVL(pri.iconsor, 0) + NVL(pgar.iconsor, 0);
                  pri.ireccon := NVL(pri.ireccon, 0) + NVL(pgar.ireccon, 0);
                  pri.iips := NVL(pri.iips, 0) + (CASE NVL(pgar.iprianu, -1) WHEN -1 THEN 0 ELSE NVL(pgar.iips, 0) END);-- NVL(pgar.iips, 0); IAXIS-4205 CJMR 2019/12/20
                  -- Bug 0019578 - FAL - 26/09/2011 - Cálculo derechos de registro
                  pri.icderreg := NVL(pri.icderreg, 0) + NVL(pgar.icderreg, 0);
                  pri.idgs := NVL(pri.idgs, 0) + NVL(pgar.idgs, 0);
                  pri.iarbitr := NVL(pri.iarbitr, 0) + NVL(pgar.iarbitr, 0);
                  pri.ifng := NVL(pri.ifng, 0) + NVL(pgar.ifng, 0);
                  pri.irecfra := NVL(pri.irecfra, 0) + NVL(pgar.irecfra, 0);
                  pri.itotpri := NVL(pri.itotpri, 0) + NVL(pgar.itotpri, 0);
                  pri.itotdto := NVL(pri.itotdto, 0) + NVL(pgar.itotdto, 0);
                  pri.itotcon := NVL(pri.itotcon, 0) + NVL(pgar.itotcon, 0);
                  pri.itotimp := NVL(pri.itotimp, 0) + NVL(pgar.itotimp, 0);
                  pri.itotalr := NVL(pri.itotalr, 0) + (CASE NVL(pgar.iprianu, -1) WHEN -1 THEN 0 ELSE NVL(pgar.itotalr, 0) END);-- NVL(pgar.itotalr, 0); IAXIS-4205 CJMR 2019/12/20
                  pri.iprireb := NVL(pri.iprireb, 0) + NVL(pgar.iprireb, 0);
                  pri.itotanu := NVL(pri.itotanu, 0) + NVL(pgar.itotanu, 0);
                  pri.idtotec := NVL(pri.idtotec, 0) + NVL(pgar.idtotec, 0);   -- Bug 21907 - MDS - 20/04/2012
                  pri.ireccom := NVL(pri.ireccom, 0) + NVL(pgar.ireccom, 0);   -- Bug 21907 - MDS - 20/04/2012
                  pri.itotrec := NVL(pri.itotrec, 0) + NVL(pgar.itotrec, 0);   -- Bug 21907 - MDS - 20/04/2012
                  pri.iprivigencia := NVL(pri.iprivigencia, 0) + NVL(pgar.iprivigencia, 0);   -- Bug 30509/168760 - 11/03/2014 - AMC
                  pri.itotdev := NVL(pri.itotdev, 0) + NVL(pgar.itotdev, 0);
               END IF;
            END LOOP;
         END IF;
      END IF;

      -- Bug 26419 - APD - 16/05/2013 - se sustituye SELF.primas por PRI
      v_num_err := pac_iax_produccion.f_get_dtorec_riesgo(pmode, pssolicit, SELF.nriesgo,
                                                          pri.pdtocom, pri.precarg,
                                                          pri.pdtotec, pri.preccom, v_msg);

      -- fin Bug 26419 - APD - 16/05/2013
      IF v_num_err <> 0 THEN
         p_tab_error(f_sysdate, f_user, 'OB_IAX_RIESGOS.p_calc_primas', 1, SQLCODE, SQLERRM);
      END IF;

      p_set_primas(pri);
   END p_calc_primas;
   --Acumula las primas de les garantias a nivell risc
   MEMBER FUNCTION f_get_primas(
      SELF IN OUT ob_iax_riesgos,
      pssolicit NUMBER,
      pnmovimi NUMBER,
      pmode VARCHAR2)
      RETURN ob_iax_primas IS
      --pri OB_IAX_PRIMAS:=OB_IAX_PRIMAS();
      garant         ob_iax_garantias;
      pgar           ob_iax_primas;
   BEGIN
      p_calc_primas(pssolicit, pnmovimi, pmode);
      RETURN SELF.primas;
   END f_get_primas;
   --Establece la necesidad de volver a tarificar y como consecuencia no mostrar primas
   -- 1=necesita tarificar  0=tarificado
   MEMBER PROCEDURE p_set_needtarificar(need NUMBER) IS
   BEGIN
      SELF.needtarifar := need;
      SELF.primas.p_set_needtarificar(need);

      IF SELF.garantias IS NOT NULL THEN
         IF SELF.garantias.COUNT > 0 THEN
            FOR vgar IN SELF.garantias.FIRST .. SELF.garantias.LAST LOOP
               IF SELF.garantias.EXISTS(vgar) THEN
                  SELF.garantias(vgar).p_set_needtarificar(need);
               END IF;
            END LOOP;
         END IF;
      END IF;
   END p_set_needtarificar;
   -- Recupera les preguntes de risc automatiques
   MEMBER PROCEDURE p_get_pregauto(pssolicit NUMBER, pnmovimi NUMBER, pmode VARCHAR2) IS
   BEGIN
      pac_mdobj_prod.p_get_pregauto(SELF, pssolicit, pnmovimi, pmode);
   EXCEPTION
      WHEN OTHERS THEN
         NULL;
   END p_get_pregauto;
   -- Recarrega les garantias despres de tarificar
   MEMBER PROCEDURE p_get_garaftertar(pssolicit NUMBER, pnmovimi NUMBER, pmode VARCHAR2) IS
   BEGIN
      pac_mdobj_prod.p_get_garaftertarrie(SELF, pssolicit, pnmovimi, pmode);
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'OB_IAX_RIESGOS.P_Get_GarAfterTar', 3, SQLCODE,
                     SQLERRM);
         NULL;
   END p_get_garaftertar;
   -- Recupera la descripión del riesgo según el tipo riesgo
   MEMBER PROCEDURE p_descriesgo(
      vcobjase NUMBER,
      pssolicit IN NUMBER,
      pmode VARCHAR2 DEFAULT 'EST') IS
      vpasexec       NUMBER(8) := 1;
   BEGIN
      pac_mdobj_prod.p_descriesgo(SELF, vcobjase, pssolicit, pmode);
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'OB_IAX_RIESGOS.P_DescRiesgo', vpasexec, SQLCODE,
                     SQLERRM);
   END p_descriesgo;
   -- Recupera la descripión del riesgo según el tipo riesgo
   MEMBER PROCEDURE get_descriesgo(
      vcobjase NUMBER,
      pssolicit NUMBER,
      risc OUT VARCHAR2,
      pmode VARCHAR2 DEFAULT 'EST') IS
      vpasexec       NUMBER(8) := 1;
   BEGIN
      p_descriesgo(vcobjase, pssolicit, pmode);
      risc := triesgo;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'OB_IAX_RIESGOS.Get_DescRiesgo', vpasexec, SQLCODE,
                     SQLERRM);
   END get_descriesgo;
   -- Recupera les preguntes automàtiques a nivell de garantia
   -- Paràmetres:
   --     pssolicit -> sseguro de la pòlissa
   --     pnmovimi  -> nmovimi de la pòlissa
   --     pmode     -> el valor de com recuperar les dades (EST o POL)
   MEMBER PROCEDURE p_get_pregautoriegar(
      pssolicit IN NUMBER,
      pnmovimi IN NUMBER,
      pmode VARCHAR2 DEFAULT 'EST') IS
   BEGIN
      pac_mdobj_prod.p_get_pregautoriegar(SELF, pssolicit, pnmovimi, pmode);
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'OB_IAX_GARANTIAS.P_Get_PregAutoRieGar', 1, SQLCODE,
                     SQLERRM);
   END p_get_pregautoriegar;
   -- ini t.7817
   MEMBER PROCEDURE p_set_needtarifar(need IN NUMBER) IS
   BEGIN
      SELF.needtarifar := need;
      p_set_needtarificar(need);   --bug 7535 ACC 170209
   END p_set_needtarifar;
-- fin t.7817

   -- ini Bug 0010908 - 17/12/2009 - JMF
   MEMBER PROCEDURE p_get_tablaspregauto(
      pssolicit IN NUMBER,
      pnmovimi IN NUMBER,
      pmode VARCHAR2 DEFAULT 'EST') IS
   BEGIN
      pac_mdobj_prod.p_get_tablaspregauto(SELF, pssolicit, pnmovimi, pmode);
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'OB_IAX_RIESGOS.p_get_tablaspregauto', 1, SQLCODE,
                     SQLERRM);
   END p_get_tablaspregauto;
-- fin Bug 0010908 - 17/12/2009 - JMF
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_RIESGOS" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_RIESGOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_RIESGOS" TO "R_AXIS";
