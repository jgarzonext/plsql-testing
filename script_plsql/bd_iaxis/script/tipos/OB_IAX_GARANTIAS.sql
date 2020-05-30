--------------------------------------------------------
--  DDL for Type OB_IAX_GARANTIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GARANTIAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_GARANTIAS
   PROP??SITO:  Contiene la informaci??n de les garantias de la poliza

   REVISIONES:
   Ver        Fecha        Autor             Descripci??n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC                1. Creaci??n del objeto.
   2.0        17/03/2016   JAEG               2. 41143/229973: Desarrollo Dise¿o t¿cnico CONF_TEC-01_VIGENCIA_AMPARO
******************************************************************************/
(
   cgarant        NUMBER,   -- C??digo de garant?-a
   tgarant        VARCHAR2(120),   -- Descripci?? de garant?-a
   nmovimi        NUMBER,   -- N??mero movimiento
   nmovima        NUMBER,   -- N??mero de movimiento de alta
   norden         NUMBER,   -- N??mero de orden
   cobliga        NUMBER,   -- Indica si est?! contratada (1) o no (0)
   ctipgar        NUMBER,   -- Tipo de garantia.
   icapital       FLOAT,   -- Importe garant?-a
   --  iprianu float,              -- Importe prima anual
   --  ipritar float,              -- Importe primes tarificat
   icaptot        FLOAT,   -- Importe garant?-a (igual que capital)
   crevali        NUMBER,   -- Tipo revalorizaci??n VF 62
   trevali        VARCHAR2(200),   -- Descripci??n tipo revalorizaci??n
   prevali        FLOAT,   -- Porcentaje de revalorizaci??n
   irevali        FLOAT,   -- Importe de revalorizaci??n
   --precarg float,              -- Porcentaje recargo
   cfranq         NUMBER,   -- C??digo franquicia
   --irecarg float,              -- Importe recargo
   ifranqu        FLOAT,   -- Importe franquicia
   --pdtocom float,              -- Porcentage descuento comercial
   --idtocom float,              -- Importe descuento comercial
   finiefe        DATE,   -- Data Efecte garantia
   --JRH 03/2008
   ctipo          NUMBER,   -- tipo cobertura
   --JRH 03/2008
   ctarman        NUMBER,   --tarificaci?? manual 1 s?-, 0 no
   icaprecomend   NUMBER,
   excaprecomend  NUMBER,   --(1 si la garant?a tiene capital recomendado o 0 si no, es un par?metro nuevo de garant?a)
   primas         ob_iax_primas,   -- Primas garantia
   preguntas      t_iax_preguntas,   -- Puede tener preguntas por garantia
   masdatos       ob_iax_masdatosgar,
   desglose       t_iax_desglose_gar,   -- Desglose de capitales
   editable       NUMBER,   -- Bug 11735: APR - suplemento de modificaci??n de capital /prima
   esextra        NUMBER,   -- Bug 13832 - RSC - 09/06/2010 - APRS015 - suplemento de aportaciones ??nicas
   cdetalle       NUMBER,
   reglasseg      ob_iax_reglasseg,   --
   cpartida       NUMBER,   -- Bug 17988 - JBN - 21/03/2011 - AGM003 - Modificaci??n pantalla garantias (axisctr007).
   cnivgar        NUMBER,   -- Nivel de la garant?-a: si es garant?-a, sub-garant?-a o sub-subgarant?-a
   cvisniv        NUMBER,   -- Nivel de visi??n de la garant?-a (v.f.1080)
   cvisible       NUMBER,   -- Garanita visible o no
   cgarpadre      NUMBER,   -- C??digo de la garant?-a padre
   cderreg        NUMBER,   -- Bug 0019578 - FAL - 26/09/2011 - Aplicar derechos de registro en funci??n de la pregunta gastos de emisi??n.
   --Establece el objeto primas garantias
   cmoncap        NUMBER,   -- Moneda en que est?!n expresados el capital de la garant?-a y los capitales m?-nimo y m?!ximo
   tmoncap        VARCHAR2(1000),   -- Descripci??n Moneda en que est?!n expresados el capital de la garant?-a y los capitales m?-nimo y m?!ximo
   cmoncapint     VARCHAR2(100),   -- C??digo Moneda ECO_CODMONEDAS
   detprimas      t_iax_detprimas,   -- Bug 21121 - APD - 01/03/2012 - detalle de primas de la garantira
   cseleccion     NUMBER,   -- BUG 22839/0120955 - FAL - 05/09/2012
   cplanbenef     NUMBER,   -- Bug 26662 - APD - 17/04/2013 - codigo del plan de beneficion (CODPLANBENEF)
   nfactor        NUMBER,   -- Bug 30171/173304 - 28/04/2014 - AMC
   finivig        DATE,     -- BUG 41143/229973 - 17/03/2016 - JAEG
   ffinvig        DATE,     -- BUG 41143/229973 - 17/03/2016 - JAEG
   ccobprima		NUMBER,   -- BUG 41143/229973 - 17/03/2016 - JAEG
   ipridev		   NUMBER,   -- BUG 41143/229973 - 17/03/2016 - JAEG
   excontractual 	NUMBER,   -- BUG 41143/229973 - 17/03/2016 - JAEG
   MEMBER PROCEDURE p_set_primas(pri ob_iax_primas),
   --Acumula las primas de les garantias
   MEMBER FUNCTION f_get_primas(
      SELF IN OUT ob_iax_garantias,
      pssolicit NUMBER,
      pnmovimi NUMBER,
      pmode VARCHAR2,
      nriesgo NUMBER)
      RETURN ob_iax_primas,
   --Calcula la prima de la garantia
   MEMBER PROCEDURE p_calc_primas(
      pssolicit NUMBER,
      pnmovimi NUMBER,
      pmode VARCHAR2,
      nriesgo NUMBER),
   --Establece la necesidad de volver a tarificar y como consequencia no mostrar primas
   -- 1 necesita tarificar  0 tarficado
   MEMBER PROCEDURE p_set_needtarificar(need NUMBER),
   -- Recarrega les garantias despres de tarificar
   MEMBER PROCEDURE p_get_garaftertar(
      SELF IN OUT ob_iax_garantias,
      pssolicit NUMBER,
      pnmovimi NUMBER,
      pmode VARCHAR2,
      pnriesgo NUMBER),
   -- Recupera les preguntes autom? tiques a nivell de garantia
   -- Par? metres:
   --     priesgo   -> objecte risc
   --     pssolicit -> sseguro de la p??lissa
   --     pnmovimi  -> nmovimi de la p??lissa
   --     pmode     -> el valor de com recuperar les dades (EST o POL)
   MEMBER PROCEDURE p_get_pregautogar(
      pssolicit IN NUMBER,
      pnmovimi IN NUMBER,
      pmode VARCHAR2 DEFAULT 'EST',
      pnriesgo IN NUMBER),
   -- Bug 21121 - APD - 02/03/2012 - se crea la funcion
   MEMBER PROCEDURE p_get_detprimas(
      pssolicit IN NUMBER,
      pnmovimi IN NUMBER,
      pmode VARCHAR2 DEFAULT 'EST',
      pnriesgo IN NUMBER),
   -- fin Bug 21121 - APD - 02/03/2012
   CONSTRUCTOR FUNCTION ob_iax_garantias
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GARANTIAS" AS
   CONSTRUCTOR FUNCTION ob_iax_garantias
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cgarant := 0;
      SELF.tgarant := NULL;
      SELF.preguntas := NULL;
      SELF.icapital := NULL;
      -- SELF.iprianu:=null;
      -- SELF.ipritar:=null;
      SELF.crevali := NULL;
      SELF.trevali := NULL;
      SELF.prevali := NULL;
      SELF.irevali := NULL;
      -- SELF.precarg:=0;
      SELF.cfranq := NULL;
      SELF.ifranqu := NULL;
      -- SELF.irecarg :=0;
      SELF.primas := ob_iax_primas();
      SELF.masdatos := ob_iax_masdatosgar();
      SELF.editable := 1;
      SELF.ctarman := 0;
      SELF.cdetalle := 0;
      SELF.esextra := NULL;   -- Bug 13832 - RSC - 09/06/2010 - APRS015 - suplemento de aportaciones ??nicas
      SELF.cpartida := NULL;   -- Bug 17988 - JBN - 21/03/2011 - AGM003 - Modificaci??n pantalla garantias (axisctr007).
      SELF.cseleccion := NULL;   -- BUG 22839/0120955 - FAL - 05/09/2012
      SELF.cplanbenef := NULL;   -- Bug 26662 - APD - 17/04/2013 - codigo del plan de beneficion (CODPLANBENEF)
      SELF.nfactor := NULL;   -- Bug 30171/173304 - 28/04/2014 - AMC
      SELF.finivig       := NULL;  -- BUG 41143/229973 - 17/03/2016 - JAEG
      SELF.ffinvig       := NULL;  -- BUG 41143/229973 - 17/03/2016 - JAEG
      SELF.ccobprima     := 1;     -- BUG 41143/229973 - 17/03/2016 - JAEG
      SELF.ipridev       := NULL;  -- BUG 41143/229973 - 17/03/2016 - JAEG
      SELF.excontractual := NULL;  -- BUG 41143/229973 - 17/03/2016 - JAEG
      RETURN;
   END;
   --Establece el objeto primas
   MEMBER PROCEDURE p_set_primas(pri ob_iax_primas) IS
   BEGIN
      SELF.primas := pri;
   END;
   --Calcula la prima de la garantia
   MEMBER PROCEDURE p_calc_primas(
      pssolicit NUMBER,
      pnmovimi NUMBER,
      pmode VARCHAR2,
      nriesgo NUMBER) IS
   BEGIN
      primas.p_get_prigarant(pssolicit, pnmovimi, pmode, nriesgo, SELF.cgarant,
                             SELF.masdatos.ndetgar, SELF.ctarman);
   END;
   --Acumula las primas de les garantias
   MEMBER FUNCTION f_get_primas(
      SELF IN OUT ob_iax_garantias,
      pssolicit NUMBER,
      pnmovimi NUMBER,
      pmode VARCHAR2,
      nriesgo NUMBER)
      RETURN ob_iax_primas IS
   BEGIN
      p_calc_primas(pssolicit, pnmovimi, pmode, nriesgo);
      RETURN SELF.primas;
   END f_get_primas;
   --Establece la necesidad de volver a tarificar y como consequencia no mostrar primas
   -- 1 necesita tarificar  0 tarficado
   MEMBER PROCEDURE p_set_needtarificar(need NUMBER) IS
   BEGIN
      SELF.primas.p_set_needtarificar(need);
   END p_set_needtarificar;
   -- Recarrega les garantias despres de tarificar
   MEMBER PROCEDURE p_get_garaftertar(
      SELF IN OUT ob_iax_garantias,
      pssolicit NUMBER,
      pnmovimi NUMBER,
      pmode VARCHAR2,
      pnriesgo NUMBER) IS
      gar            ob_iax_garantias := SELF;
   BEGIN
      pac_mdobj_prod.p_get_garaftertargar(SELF, pssolicit, pnmovimi, pmode, pnriesgo);
      -- BUG9496:15/05/2009:DRA:Inici
      p_get_pregautogar(pssolicit, pnmovimi, pmode, pnriesgo);
   -- BUG9496:15/05/2009:DRA:Fi
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'OB_IAX_GARANTIAS.P_Get_GarAfterTar', 3, SQLCODE,
                     SQLERRM);
   END p_get_garaftertar;
   -- Recupera les preguntes autom? tiques a nivell de garantia
   -- Par? metres:
   --     priesgo   -> objecte risc
   --     pssolicit -> sseguro de la p??lissa
   --     pnmovimi  -> nmovimi de la p??lissa
   --     pmode     -> el valor de com recuperar les dades (EST o POL)
   MEMBER PROCEDURE p_get_pregautogar(
      pssolicit IN NUMBER,
      pnmovimi IN NUMBER,
      pmode VARCHAR2 DEFAULT 'EST',
      pnriesgo IN NUMBER) IS
   BEGIN
      pac_mdobj_prod.p_get_pregautogar(SELF, pssolicit, pnmovimi, pmode, pnriesgo);
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'OB_IAX_GARANTIAS.P_Get_PregAutoGar', 1, SQLCODE,
                     SQLERRM);
   END p_get_pregautogar;
   -- Bug 21121 - APD - 02/03/2012 - se crea la funcion
   MEMBER PROCEDURE p_get_detprimas(
      pssolicit IN NUMBER,
      pnmovimi IN NUMBER,
      pmode VARCHAR2 DEFAULT 'EST',
      pnriesgo IN NUMBER) IS
   BEGIN
      pac_mdobj_prod.p_get_detprimas(SELF, pssolicit, pnmovimi, pmode, pnriesgo);
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'OB_IAX_GARANTIAS.P_Get_Detprimas', 1, SQLCODE,
                     SQLERRM);
   END p_get_detprimas;
-- fin Bug 21121 - APD - 02/03/2012
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GARANTIAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GARANTIAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GARANTIAS" TO "PROGRAMADORESCSI";
