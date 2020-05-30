--------------------------------------------------------
--  DDL for Type OB_IAX_DETPOLIZA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DETPOLIZA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_POLIZA
   PROP¿SITO:  Contiene la informaci¿n del detalle de la p¿liza

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC              1. Creaci¿n del objeto.
   2.0        25/02/2009   DRA              Bug 0009652: Modificacions demanades per ACC
   3.0        23/03/2009   AMC              2. Se a¿ade el objeto NMESEXTRA y CMODEXTRA,BUG 8286
   4.0        10/03/2009   RSC              3. Adaptaci¿n productos indexados
   5.0        21/07/2009   XPL              4. CRE080. Bug 10702, se a¿ade icap max
   6.0        03/03/2010   FAL              5. 0013483: CEM998 - Afegir NCONTRATO a la consulta de p¿lisses
   7.0        10/06/2010   PFA              6. 14585: CRT001 - A¿adir campo poliza compa¿ia
   8.0        11/04/2011   APD              7. 0018225: AGM704 - Realizar la modificaci¿n de precisi¿n el cagente
   9.0        07/09/2011   AMC              9. 0019372: LCOL_C002 - Identificar promotor en expedici¿n de p¿liza
   10.0       26/09/2011   DRA              10. 0019532: CEM - Tratamiento de la extraprima en AXIS
   11.0       26/09/2011   DRA              11. 0019069: LCOL_C001 - Co-corretaje
   12.0       08/03/2012   JMF              0021592: MdP - TEC - Gestor de Cobro
   13.0       14/08/2012   DCG              13. 0023183: LCOL_T020-COA-Circuit d'alta de propostes amb coasseguran
   14.0       26/02/2013   LCF              14. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
   15.0       01/10/2013   AMC              15. Se a¿ade el campo datos_bpm  Bug 28263/153355
   16.0       27/07/2015   IGIL             16. Se adiciona citas medicas al circuito de contratacion MSV
   17.0       07/03/2016   JAEG             17. 40927/228750: Desarrollo Dise¿o t¿cnico CONF_TEC-03_CONTRAGARANTIAS
******************************************************************************/
(
   sseguro        NUMBER,   --C¿digo seguro identificador interno
   ssegpol        NUMBER,
--C¿digo corresponde con el sseguro de la tabla SEGUROS cuando el estudio ha pasado a p¿liza
   nsolici        NUMBER,   --Numero de solicitud
   nmovimi        NUMBER,   --N¿mero movimiento
   nsuplem        NUMBER,   --Contador del n¿mero de suplementos
   npoliza        NUMBER,   --N¿mero de p¿liza.
   ncertif        NUMBER,   --N¿mero de certificado para p¿lizas colectivas
   cmodali        NUMBER(2),   --C¿digo de Modalidad del Producto
   ccolect        NUMBER(2),   --C¿digo de Colectividad del Producto
   cramo          NUMBER(8),   --C¿digo de Ramo del Producto
   ctipseg        NUMBER(2),   --C¿digo de Tipo de Seguro del Producto
   --cactivi        NUMBER,   --C¿digo de Actividad NO UTILIZAR !!! OBSOLETO !! UTILIZAR EL DE GESTION.
   sproduc        NUMBER(8),   --C¿digo del Producto
   cagente        NUMBER,
--C¿digo de Agente -- Bug 18225 - APD - 11/04/2011 - la precisi¿n debe ser NUMBER
   cobjase        NUMBER(2),   --C¿digo de Objeto asegurado
   csubpro        NUMBER(2),   --C¿digo de subtipo de producto
   csituac        NUMBER,   --C¿digo de situaci¿n. Valor fijo 61
   creteni        NUMBER,   --Propuesta retenida o no. Valor fijo 66
   -- Recupera de productes en fase crea solicitud
   ctipreb        NUMBER(1),   --El recibo es por tomador o asegurado
   cagrpro        NUMBER(2),   --Codigo agrupaci¿n de producto
   cempres        NUMBER,   --C¿digo de empresa
   ctarman        NUMBER,   --La tarificaci¿n puede ser manual
   cpagdef        NUMBER,   --Forma de pago por defecto
   creccob        NUMBER,   --Indica si el primer recibo es pendiente o cobrado
   crevali        NUMBER,   --C¿digo de revalorizaci¿n (PRODUCTO)
   irevali        NUMBER,   --Importe de revalorizaci¿n  (PRODUCTO)
   prevali        NUMBER,   --Porcetage de revalorizaci¿n  (PRODUCTO)
   nrenova        NUMBER,   --D¿a y mes renovaci¿n
   nanuali        NUMBER,   --N¿mero de anualidades
   crecman        NUMBER,   --Primer recibo manual
   casegur        NUMBER,   --C¿digo de asegurado
   creafac        NUMBER,   --C¿digo de si hay reaseguro facultativo o no.
   ctiprea        NUMBER,   --C¿digo tipo de reaseguro
   creatip        NUMBER,
--C¿digo tipo de reaseguro y facultativo, para la lista de valores del reaseguro. Valor fijo 74
   ctipcol        NUMBER,   --Si los riesgos tienen o no las mismas garant¿as
   ctipcoa        NUMBER,   --C¿digo tipo de coaseguro
   ttipcoa        VARCHAR2(100),
   --Descripci¿n del tipo de coaseguro - Bug 0023183 - DCG - 14/08/2012
   nfracci        NUMBER,
   --Contador del n¿mero de pagos fraccionados emitidos en la anualida
   ctipest        NUMBER,
   trevali        VARCHAR2(100),   --Descripci¿n del tipo de revalorizaci¿n
   iprireb        NUMBER,   --25803   -- Prima del 1er rebut
   icapmaxpol     NUMBER,   --25803
   -- Importe capital m¿ximo por p¿liza. Tabla saldodeutorseg.icapmax
   cmodextra      NUMBER,   --Nos indica si las pagas extra se pueden modificar
   ncontrato      VARCHAR2(50),   -- N¿m de contracte intern CEM
   cpolcia        VARCHAR2(50),
   sfbureau 		  NUMBER,
   -- BUG 14585 - PFA - Anadir campo poliza compania
   tomadores      t_iax_tomadores,   --Tomadores
   preguntas      t_iax_preguntas,   --Preguntas a nivel de p¿liza
   gestion        ob_iax_gestion,   --Datos gesti¿n poliza
   --CONVENIOS
   convempvers    ob_iax_convempvers,
   --CONVENIOS
   --AGENDA
   agensegu    t_IAX_AGENSEGU, -- JLTS
   --AGENDA

   riesgos        t_iax_riesgos,   --Datos riesgos
   clausulas      t_iax_clausulas,   --Cl¿usulas
   primas         t_iax_primas,   --Importe de la poliza
   gstcomision    t_iax_gstcomision,   --Gesti¿n comisiones
   nmesextra      ob_iax_nmesextra,   --Meses que tienen paga extra
   modeloinv      ob_iax_produlkmodelosinv,
   -- Bug 9031 - 10/03/2009 - RSC - Adaptaci¿n productos indexados
   polinfo        t_iax_info,
   ccompani       NUMBER,
   cpromotor      NUMBER(10),   -- Bug 19372/91763 - 07/09/2011 - AMC
   reemplazos     t_iax_reemplazos,
   --Colecci¿n de las p¿lizas de reemplazo bug 19276
   corretaje      t_iax_corretaje,   -- BUG19069:DRA:29/06/2011
   gestorcobro    t_iax_gescobros,
   -- Bug 0021592 - 08/03/2012 - JMF -- Gestor de cobros
   inquiaval      t_iax_inquiaval,   -- BUG 21657 --ETM--
   ncuacoa        NUMBER,
   coacuadro      ob_iax_coacuadro,
   retorno        t_iax_retorno,   -- Bug 0022701 - 03/09/2012 - JMF
   datos_bpm      ob_iax_bpm,   -- Bug 28263/153355 - 01/10/2013 - AMC
   citamedicas    t_iax_citamedica,   -- Bug 36596/209581 - 07/07/2015 - IGIL
   contragaran    t_iax_contragaran,  -- Bug 40927/228750 - 07/03/2016 - JAEG
-- Bug 0023183 - DCG - 14/08/2012 - LCOL_T020-COA-Circuit d'alta de propostes amb coasseguran
   --Establece la necesidad de volver a tarificar y como consequencia no mostrar primas
   -- 1 necesita tarificar  0 tarficado
   MEMBER PROCEDURE p_set_needtarificar(need NUMBER),
   --Establece el objeto primas
   MEMBER PROCEDURE p_set_primas(pri ob_iax_primas),
   --Acumula les primes dels risc
   MEMBER FUNCTION f_get_primas(
      SELF IN OUT ob_iax_detpoliza,
      pssolicit NUMBER,
      pnmovimi NUMBER,
      pmode VARCHAR2)
      RETURN t_iax_primas,
   --Calcula la prima del risc
   MEMBER PROCEDURE p_calc_primas(pssolicit NUMBER, pnmovimi NUMBER, pmode VARCHAR2),
   --bug 7535 ACC 170209
   --Establece la necesidad de volver a tarificar y como consequencia no mostrar primas
   --a nivel de primas de poliza
   -- 1 necesita tarificar  0 tarficado
   MEMBER PROCEDURE p_set_needtarpol(need NUMBER),
   --Comprova que la p¿lissa s'hagi tarificat tots els riscos
   MEMBER PROCEDURE p_check_needtarificarpol,
   --bug 7535 ACC 170209
   -- BUG9263:DRA:11-05-2009:Inici
   -- Recupera les preguntes de p¿lissa automatiques
   MEMBER PROCEDURE p_get_pregauto(pssolicit NUMBER, pnmovimi NUMBER, pmode VARCHAR2),
   -- BUG9263:DRA:11-05-2009:Fi
   CONSTRUCTOR FUNCTION ob_iax_detpoliza
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DETPOLIZA" AS
   CONSTRUCTOR FUNCTION ob_iax_detpoliza
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.tomadores := NULL;
      SELF.gestion := NULL;
      SELF.preguntas := NULL;
      SELF.riesgos := NULL;
      SELF.clausulas := NULL;
      SELF.primas := NULL;
      SELF.ncertif := 0;   --// acc encara no estracta
      SELF.modeloinv := NULL;   -- Bug 9031 - 10/03/2009 - RSC - Adaptaci¿n productos indexados
      SELF.reemplazos := t_iax_reemplazos();
      SELF.gestorcobro := NULL;   -- Bug 0021592 - 08/03/2012 - JMF
      SELF.inquiaval := t_iax_inquiaval();   -- BUG 21657 --ETM--
      SELF.coacuadro := NULL;   -- Bug 0023183 - DCG - 14/08/2012 - LCOL_T020-COA-Circuit d'alta de propostes amb coasseguran
      SELF.retorno := t_iax_retorno();   -- Bug 0022701 - 03/09/2012 - JMF
      SELF.datos_bpm := NULL;   -- Bug 28263/153355 - 01/10/2013 - AMC
      SELF.citamedicas := t_iax_citamedica(); -- Bug 36596/209581 - 07/07/2015 - IGIL
      SELF.contragaran :=t_iax_contragaran(); -- Bug 40927/228750 - 07/03/2016 - JAEG
	  SELF.sfbureau := 0;
      RETURN;
   END;
   --Establece la necesidad de volver a tarificar y como consequencia no mostrar primas
   -- 1 necesita tarificar  0 tarficado
   MEMBER PROCEDURE p_set_needtarificar(need NUMBER) IS
   BEGIN
--      IF SELF.primas IS NOT NULL THEN
--         IF SELF.primas.COUNT > 0 THEN
--            FOR vpri IN SELF.primas.FIRST .. SELF.primas.LAST LOOP
--               IF SELF.primas.EXISTS(vpri) THEN
--                  SELF.primas(vpri).p_set_needtarificar(need);
--               END IF;
--            END LOOP;
--         END IF;
--      END IF;
      p_set_needtarpol(need);   --BUG 7535 ACC 170209

      IF SELF.riesgos IS NOT NULL THEN
         IF SELF.riesgos.COUNT > 0 THEN
            FOR vrie IN SELF.riesgos.FIRST .. SELF.riesgos.LAST LOOP
               IF SELF.riesgos.EXISTS(vrie) THEN
                  SELF.riesgos(vrie).p_set_needtarificar(need);
               END IF;
            END LOOP;
         END IF;
      END IF;
   END;
   --Establece el objeto primas
   MEMBER PROCEDURE p_set_primas(pri ob_iax_primas) IS
   BEGIN
      SELF.primas := t_iax_primas();
      SELF.primas.EXTEND;
      SELF.primas(SELF.primas.LAST) := pri;
   END;
   --Calcula la prima dels riscos
   MEMBER PROCEDURE p_calc_primas(pssolicit NUMBER, pnmovimi NUMBER, pmode VARCHAR2) IS
      pri            ob_iax_primas := ob_iax_primas();
      rpri           ob_iax_primas;
      v_msg          t_iax_mensajes;
      v_num_err      NUMBER;
   BEGIN
      -- ACC 17122008
      -- Comprova si hi ha algun risc per tarificar si es aixi retorna les
      -- primes a 0
      IF pac_mdobj_prod.f_get_needtarificarpol(SELF) = 1 THEN
         pri.iprianu := 0;   -- Importe prima anual local (sin coaseguro)
         pri.ipritar := 0;   -- Importe tarifa
         pri.ipritot := 0;   -- Importe prima anual total (con coaseguro)
         pri.irecarg := 0;   -- Importe del recargo (sobreprima)
         pri.idtocom := 0;   -- Importe descuento comercial
         pri.itarifa := 0;   -- Tarifa + extraprima
         pri.iconsor := 0;   -- Consorcio
         pri.ireccon := 0;   -- Recargo Consorcio
         pri.iips := 0;   -- Impuesto IPS
         pri.idgs := 0;   -- Impuesto CLEA/DGS
         pri.iarbitr := 0;   -- Arbitrios (bomberos, ...)
         -- Bug 0019578 - FAL - 26/09/2011 - C¿lculo derechos de registro
         pri.icderreg := 0;   -- Derechos de registro
         pri.ifng := 0;   -- Impuesto FNG
         pri.irecfra := 0;   -- Recargo Fraccionamiento
         pri.itotpri := 0;   -- Total Prima Neta
         pri.itotdto := 0;   -- Total Descuentos
         pri.itotcon := 0;   -- Total Consorcio
         pri.itotimp := 0;   -- Total Impuestos y Arbitrios
         pri.itotalr := 0;   -- TOTAL RECIBO
         pri.iprireb := 0;   -- Prima del 1er rebut
         pri.iextrap := 0;   -- Factor de la extraprima
         pri.iiextrap := 0;   -- Importe de la extraprima
         p_set_primas(pri);
         RETURN;
      END IF;

      IF SELF.riesgos IS NOT NULL THEN
         IF SELF.riesgos.COUNT > 0 THEN
            FOR vrie IN SELF.riesgos.FIRST .. SELF.riesgos.LAST LOOP
               IF SELF.riesgos.EXISTS(vrie) THEN
                  /* ACC 18122008
                  S'ha comentat perque no es neteixaven les primes, s'han
                  fet proves i no s'ha trobat a que pot afectar ja que
                  nom¿s es crida desde AxisCtr009 AxisCtr100
                  SELF.riesgos(vrie).P_Set_NeedTarificar(0);
                  */
                  rpri := SELF.riesgos(vrie).f_get_primas(pssolicit, pnmovimi, pmode);
                  -- pri.primaseguro := nvl(pri.primaseguro,0) + nvl(rpri.primaseguro,0);
                  -- pri.impuestos   := nvl(pri.impuestos,0) + nvl(rpri.impuestos,0);
                  -- pri.recargos    := nvl(pri.recargos,0) + nvl(rpri.recargos,0);
                  -- pri.primatotal  := nvl(pri.primatotal,0) + nvl(rpri.primatotal,0);
                  -- pri.primarecibo := nvl(pri.primarecibo,0) + nvl(rpri.primarecibo,0);
                  pri.iextrap := NVL(pri.iextrap, 0) + NVL(rpri.iextrap, 0);
                  pri.iiextrap := NVL(pri.iiextrap, 0) + NVL(rpri.iiextrap, 0);   -- BUG19532:DRA:28/09/2011
                  pri.iprianu := NVL(pri.iprianu, 0) + NVL(rpri.iprianu, 0);
                  pri.ipritar := NVL(pri.ipritar, 0) + NVL(rpri.ipritar, 0);
                  pri.ipritot := NVL(pri.ipritot, 0) + NVL(rpri.ipritot, 0);
                  --pri.precarg := NVL(pri.precarg, 0) + NVL(rpri.precarg, 0); -- Bug 21907 - MDS - 20/04/2012
                  pri.irecarg := NVL(pri.irecarg, 0) + NVL(rpri.irecarg, 0);
                  --pri.pdtocom := NVL(pri.pdtocom, 0) + NVL(rpri.pdtocom, 0); -- Bug 21907 - MDS - 20/04/2012
                  pri.idtocom := NVL(pri.idtocom, 0) + NVL(rpri.idtocom, 0);
                  pri.itarifa := NVL(pri.itarifa, 0) + NVL(rpri.itarifa, 0);
                  pri.iconsor := NVL(pri.iconsor, 0) + NVL(rpri.iconsor, 0);
                  pri.ireccon := NVL(pri.ireccon, 0) + NVL(rpri.ireccon, 0);
                  pri.iips := NVL(pri.iips, 0) + NVL(rpri.iips, 0);
                  pri.idgs := NVL(pri.idgs, 0) + NVL(rpri.idgs, 0);
                  pri.iarbitr := NVL(pri.iarbitr, 0) + NVL(rpri.iarbitr, 0);
                  pri.icderreg := NVL(pri.icderreg, 0) + NVL(rpri.icderreg, 0);   -- Bug 0019578 - FAL - 26/09/2011
                  pri.ifng := NVL(pri.ifng, 0) + NVL(rpri.ifng, 0);
                  pri.irecfra := NVL(pri.irecfra, 0) + NVL(rpri.irecfra, 0);
                  pri.itotpri := NVL(pri.itotpri, 0) + NVL(rpri.itotpri, 0);
                  pri.itotdto := NVL(pri.itotdto, 0) + NVL(rpri.itotdto, 0);
                  pri.itotcon := NVL(pri.itotcon, 0) + NVL(rpri.itotcon, 0);
                  pri.itotimp := NVL(pri.itotimp, 0) + NVL(rpri.itotimp, 0);
                  pri.itotalr := NVL(pri.itotalr, 0) + NVL(rpri.itotalr, 0);
                  pri.iprireb := NVL(pri.iprireb, 0) + NVL(rpri.iprireb, 0);
                  pri.needtarifar := 0;   --BUG 9652 ACC 250209
                  pri.idtotec := NVL(pri.idtotec, 0) + NVL(rpri.idtotec, 0);   -- Bug 21907 - MDS - 20/04/2012
                  pri.ireccom := NVL(pri.ireccom, 0) + NVL(rpri.ireccom, 0);   -- Bug 21907 - MDS - 20/04/2012
                  pri.itotrec := NVL(pri.itotrec, 0) + NVL(rpri.itotrec, 0);   -- Bug 21907 - MDS - 20/04/2012
                  v_num_err :=
                     pac_iax_produccion.f_get_dtorec_riesgo
                                                           (pmode,
                                                            NVL(pssolicit,
                                                                pac_iax_produccion.vsolicit),
                                                            SELF.riesgos(vrie).nriesgo,
                                                            SELF.riesgos(vrie).primas.pdtocom,
                                                            SELF.riesgos(vrie).primas.precarg,
                                                            SELF.riesgos(vrie).primas.pdtotec,
                                                            SELF.riesgos(vrie).primas.preccom,
                                                            v_msg);

                  IF v_num_err <> 0 THEN
                     p_tab_error(f_sysdate, f_user, 'OB_IAX_DETPOLIZA.p_calc_primas', 1,
                                 v_num_err, SQLERRM);
                  END IF;
               END IF;
            END LOOP;
         END IF;
      END IF;

      p_set_primas(pri);
   END;
   --Acumula las primas dels riscos
   MEMBER FUNCTION f_get_primas(
      SELF IN OUT ob_iax_detpoliza,
      pssolicit NUMBER,
      pnmovimi NUMBER,
      pmode VARCHAR2)
      RETURN t_iax_primas IS
   BEGIN
      p_calc_primas(pssolicit, pnmovimi, pmode);
      RETURN SELF.primas;
   END;
   --bug 7535 ACC 170209
   --Establece la necesidad de volver a tarificar y como consequencia no mostrar primas
   --a nivel de primas de poliza
   -- 1 necesita tarificar  0 tarficado
   MEMBER PROCEDURE p_set_needtarpol(need NUMBER) IS
   BEGIN
      IF SELF.primas IS NOT NULL THEN
         IF SELF.primas.COUNT > 0 THEN
            FOR vpri IN SELF.primas.FIRST .. SELF.primas.LAST LOOP
               IF SELF.primas.EXISTS(vpri) THEN
                  SELF.primas(vpri).p_set_needtarificar(need);
               END IF;
            END LOOP;
         END IF;
      END IF;
   END p_set_needtarpol;
   --Comprova que la p¿lissa s'hagi tarificat tots els riscos
   MEMBER PROCEDURE p_check_needtarificarpol IS
   BEGIN
      pac_mdobj_prod.p_check_needtarificarpol(SELF);
   END p_check_needtarificarpol;
   --bug 7535 ACC 170209

   -- BUG9263:DRA:11/05/2009:Inici
   -- Recupera les preguntes de p¿lissa automatiques
   MEMBER PROCEDURE p_get_pregauto(pssolicit NUMBER, pnmovimi NUMBER, pmode VARCHAR2) IS
   BEGIN
      pac_mdobj_prod.p_get_pregautopol(SELF, pssolicit, pnmovimi, pmode);
   END p_get_pregauto;
-- BUG9263:DRA:11/05/2009:Fi
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DETPOLIZA" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETPOLIZA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETPOLIZA" TO "R_AXIS";
