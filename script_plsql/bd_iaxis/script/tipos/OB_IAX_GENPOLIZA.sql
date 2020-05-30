--------------------------------------------------------
--  DDL for Type OB_IAX_GENPOLIZA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GENPOLIZA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_GENPOLIZA
   PROP¿SITO:  Contiene la informaci¿n general de consulta de la p¿liza

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/12/2007   JAS                1. Creaci¿n del objeto.
   1.1        23/06/2008   JMR                2. Modificaci¿n del objeto.
   2.0        10/07/2009   AMC                3. Modificaci¿n del objeto bug 10499
   3.0        28/01/2010   DRA                4. 0012421: CRE 80- Saldo deutors II
   4.0        26/04/2010   JRH                5. Se a¿ade interes y fppren
   5.0        10/06/2010   PFA                6. 14585: CRT001 - A¿adir campo poliza compa¿ia
   6.0        01/10/2010   JRH                7. 0016106: CEM-Se a¿ade cfprest
   7.0        11/04/2011   APD                8. 0018225: AGM704 - Realizar la modificaci¿n de precisi¿n el cagente
   8.0        28/10/2011   ICV                9. 0019682: LCOL_T001: Adaptaci¿n Comisiones especiales por p¿liza
   9.0        21-10-2011   JGR               10. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
  10.0        03-01-2012   JMF               11. 0020761 LCOL_A001- Quotes targetes
  11.0        11/04/2012   ETM               12. 0021924: MDP - TEC - Nuevos campos en pantalla de Gesti¿n (Tipo de retribuci¿n, Domiciliar 1¿ recibo, Revalorizaci¿n franquicia)
  12.0        18/06/2012   MDS               13. 0021924: MDP - TEC - Nuevos campos en pantalla de Gesti¿n (Tipo de retribuci¿n, Domiciliar 1¿ recibo, Revalorizaci¿n franquicia)
  13.0        17/12/2012   APD               14. 0023940: LCOL_T010-LCOL - Certificado 0 renovable - Renovaci?n colectivos
  14.0        21/12/2013   MMS               15. 0025584: POS - Agragar campo NEDAMAR, para la Edad M¿x. de Renovaci¿n
  15.0        21/02/2013   MLR               15. 0026177: RSA - PER - Nombre largo
  16.0        02/06/2014   ELP               16. 0027500: RSA- Nueva operativa de mandatos
  17.0        16/10/2014   MMS               17. 0032676: COLM004-Fecha fin de vigencia de mandato. Campo no obligatorio a informar en la pantallas que se informa la fecha de firma
  18.0        17/03/2016   JAEG              18. 41143/229973: Desarrollo Dise¿o t¿cnico CONF_TEC-01_VIGENCIA_AMPARO
******************************************************************************/
(
   sseguro        NUMBER,   --C¿digo seguro identificador interno
   npoliza        NUMBER,   --N¿mero de p¿liza del seguro
   ncertif        NUMBER,   --N¿mero de certificado del seguro
   csituac        NUMBER,   --C¿digo de la situaci¿n de la p¿liza (VF 61)
   tsituac        VARCHAR2(100),   --Descripci¿n de la situaci¿n de la p¿liza
   creteni        NUMBER,   --C¿digo de la retenci¿n de la p¿liza
   treteni        VARCHAR2(100),   --Descripci¿n del c¿digo de retenci¿n de la p¿liza (708)
   tincide        VARCHAR2(100),   --Descripci¿n de la possible incidencia de la p¿liza (anulaci¿n programada al vencimineto, p¿liza reducida, etc).
   nmovimi        NUMBER,   --N¿mero movimiento
   cmodali        NUMBER(2),   --C¿digo de Modalidad del Producto
   ccolect        NUMBER(2),   --C¿digo de Colectividad del Producto
   cramo          NUMBER(8),   --C¿digo de Ramo del Producto
   ctipseg        NUMBER(2),   --C¿digo de Tipo de Seguro del Producto
   cactivi        NUMBER,   --C¿digo de Actividad
   sproduc        NUMBER(8),   --C¿digo del Producto
   tproduc        VARCHAR2(100),   --Descripci¿n del Producto
   csubpro        NUMBER(2),   --C¿digo de subtipo de producto
   cidioma        NUMBER,   --C¿digo del idioma, (1.- Catal¿  2.- Castellano)
   cforpag        NUMBER,   --C¿digo de forma de pago
   tforpag        VARCHAR2(100),   --Descripci¿n de la forma de pago
   ctipban        NUMBER,   --1: indica que se coge el campo cctiban en lugar del cbancar. 0:indica que se coge el campo cbancar para domicialiaciones
   ttipban        VARCHAR2(100),   -- Descripci¿n del tipo de cuenta bancaria. Se a¿ade el campo bug 10499 - 10/07/2009 - AMC
   cbancar        VARCHAR2(50),   --CCC seg¿n Consejo Superior Bancario y IBAN seg¿n el ctipban en db es sobre CCTIBAN
   ncuotar        NUMBER(3),   -- Numero cuotas tarjeta -- Bug 0020761 - 03-01-2012 - JMF
   tarjeta        NUMBER(1),   -- Bug 0020761 - 03-01-2012 - JMF: 0=No, 1=Si
   fefecto        DATE,   --Fecha de Efecto
   fvencim        DATE,   --Fecha de Vencimiento
   femisio        DATE,   --Fecha de emisi¿n
   fanulac        DATE,   --Fecha de anulaci¿n
   fcarant        DATE,   --Fecha de cartera anterior
   fcaranu        DATE,   --Fecha de renovaci¿n anual
   fcarpro        DATE,   --Fecha de pr¿xima cartera
   cduraci        NUMBER,   --C¿digo Tipo de Duraci¿n
   tduraci        VARCHAR2(100),   --Descripci¿n del Tipo de Duraci¿n (VF 20)
   ctipcom        NUMBER(2),   --C¿digo tipo de comisi¿n
   ttipcom        VARCHAR2(250),   --Descripci¿n del tipo de comisi¿n bug.: 19682
   ctipcob        NUMBER(3),   --Tipo de cobro p¿liza (VF 552) -- Bug 0020010 - 08/11/2011 - JMF
   ttipcob        VARCHAR2(100),   --Descripci¿n del tipo de cobro
   cagente        NUMBER,   --C¿digo de Agente-- Bug 18225 - APD - 11/04/2011 - la precisi¿n debe ser NUMBER
   csubage        NUMBER,   --C¿digo subagente
   cobjase        NUMBER(2),   --C¿digo de Objeto asegurado
   dtocom         NUMBER,   --Descuento comercial
   trotulo        VARCHAR2(15),   --r¿tulo del producto de la tabla TITULOPRO
   -- LPS 07/2008
   ndurper        NUMBER,   --duraci¿n del periodo de revisi¿n
   pcapfall       NUMBER(5, 2),   --% capital de fallecimiento (rentas)
   pdoscab        NUMBER(5, 2),   --% reversi¿n (rentas)
   cforpagren     NUMBER,   --forma pago de la renta (rentas)
   tforpagren     VARCHAR2(100),   --Descripci¿n de forma de pago de renta (rentas)
   frevisio       DATE,   --fecha revisi¿n
   -- SBG 04/2008
   polissa_ini    VARCHAR2(15),   --N¿m. de la p¿lissa antiga
   -- JMR 06/2008
   cempres        NUMBER,   -- c¿digo de la empresa
   tempres        VARCHAR2(100),   -- descripci¿n de la empresa
   spertom        NUMBER,   -- id del tomador
   -- MLR 21/02/2013 0026177
   tnomtom        VARCHAR2(400),   -- descripci¿n del tomador
   -- dra 23-12-2008: bug mantis 8121
   crevali        NUMBER,   --C¿digo de revalorizaci¿n (PRODUCTO)
   prevali        NUMBER,   --Porcetage de revalorizaci¿n  (PRODUCTO)
   trevali        VARCHAR2(100),   --Descripci¿n del tipo de revalorizaci¿n
   irevali        NUMBER,
   -- mantis 7919/7920.#6.
   ndurcob        NUMBER(2),   -- Duraci¿ pagament primes.
   crecfra        NUMBER(1),   -- S'aplica o no el rec¿rrec per fraccionament.
   nmesextra      ob_iax_nmesextra,   --Meses que tienen paga extra
   -- BUG12421:DRA:28/01/2010:Inici
   icapmaxpol     NUMBER,   --NUMBER(15, 2),   -- Importe capital m¿ximo por p¿liza. Tabla saldodeutorseg.icapmax
   -- BUG12421:DRA:28/01/2010:Fi
   -- BUG13483:FAL:03/03/2010:Inici
   ncontrato      VARCHAR2(50),
   -- BUG13483:FAL:03/03/2010:Fi
   -- Bug 14285 - 26/04/2010 - JRH - 0014285: CEM303 - Informar fecha de primer pago de renta en la contrataci¿n
   fppren         DATE,
   inttec         NUMBER,   --NUMBER(7, 2),
   -- Fi Bug 14285 - 26/04/2010 - JRH
   cpolcia        VARCHAR2(50),   -- BUG 14585 - PFA - Anadir campo poliza compania
   -- Bug 16106 - 01/10/2010 - JRH - Poner cfprest
   cfprest        NUMBER(2),   --JRH Forma prestaci¿n de la p¿liza
   tfprest        VARCHAR2(50),   --JRH Forma prestaci¿n de la p¿liza
   cpromotor      NUMBER(10),   -- Bug 19372/91763 - 07/09/2011 - AMC
   -- Fi Bug 16106 - 01/10/2010 - JRH
   -- INI Bug19393
   tcompani       VARCHAR2(200),
   tramo          VARCHAR2(200),
   tactivi        VARCHAR2(200),
   nnumidetom     VARCHAR2(20),
   reemplazos     t_iax_reemplazos,   --Colecci¿n de las p¿lizas de reemplazo bug 19276
   -- fi Bug19393
       -- BUG20589:XPL:20/12/2011:Ini
   cmonpol        NUMBER(3),   --Moneda de pago (c¿digo moneda tabla monedas)
   cmonpolint     VARCHAR2(3),   --Moneda de pago (c¿digo moneda tabla eco_monedas)
   tmonpol        VARCHAR2(1400),   --Descripci¿n moneda de pago
   -- BUG20589:XPL:20/12/2011:Fin
    -- Bug 21924 --11/04/2012--ETM -MDP - TEC - Nuevos campos en pantalla de Gesti¿n (Tipo de retribuci¿n, Domiciliar 1¿ recibo, Revalorizaci¿n franquicia)
   ctipretr       NUMBER(2),   -- Tipo de retribuci¿n
   cindrevfran    NUMBER(1),   --Revalorizaci¿n franquicia
   precarg        NUMBER,   --NUMBER(6, 2),   --recargo t¿cnico
   pdtotec        NUMBER,   --NUMBER(6, 2),   -- descuento t¿cnico
   preccom        NUMBER,   --NUMBER(6, 2),   --recargo comercial
   crggardif      NUMBER(1),   -- > Existen riesgos , garant¿as con dtos/rgos diferentes
   --FIN Bug 21924 --11/04/2012--ETM
   cdomper        NUMBER(1),   -- MDS : Domiciliar primer recibo
   ctipcoa        NUMBER,   --C¿digo tipo de coaseguro
   ttipcoa        VARCHAR2(100),   --Descripci¿n del tipo de coaseguro - Bug 0023183 - DCG - 14/08/2012
   ncuacoa        NUMBER,
   cbloqueocol    NUMBER(3),   -- Indica si un Colectivo est¿ bloqueado (v.f.1111) --Bug 23940
   tbloqueocol    VARCHAR2(100),
                                   -- Descripcion de si un Colectivo est¿ bloqueado (v.f.1111) --Bug 23940
   -- Bug 25584 - 21/01/2013 - MMS -- Agregamos el campo NEDAMAR
   nedamar        NUMBER(2),
   --MANDATOS RSA 01/04/2014
   cmandato       VARCHAR2(35),
   numfolio       NUMBER,
   fmandato       DATE,
   sucursal       VARCHAR2(50),
   haymandatprev  NUMBER,
   ffinvig        DATE,   -- Bug 32676 - 20141016 - MMS -- Agregammos ffinvin
   nanuali        NUMBER, --Bug 39659 - 20160128 -AAC
   fefeplazo      DATE,   -- BUG 41143/229973 - 17/03/2016 - JAEG
   fvencplazo     DATE,   -- BUG 41143/229973 - 17/03/2016 - JAEG
   sfbureau       NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_genpoliza
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GENPOLIZA" AS
/******************************************************************************
   NOMBRE:       OB_IAX_GENPOLIZA
   PROP¿SITO:  Contiene la informaci¿n general de consulta de la p¿liza

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/12/2007   JAS                1. Creaci¿n del objeto.
   2.0        26/04/2010   JRH                2. Se a¿ade interes y fppren
   3.0        01/10/2010   JRH                3. 0016106: CEM-Se a¿ade cfprest
   4.0        28/10/2011   ICV                4. 0019682: LCOL_T001: Adaptaci¿n Comisiones especiales por p¿liza
   5.0        03-01-2012   JMF                5. 0020761 LCOL_A001- Quotes targetes
   6.0        11/04/2012   ETM                6.0021924: MDP - TEC - Nuevos campos en pantalla de Gesti¿n (Tipo de retribuci¿n, Domiciliar 1¿ recibo, Revalorizaci¿n franquicia)
   7.0        18/06/2012   MDS                7.0021924: MDP - TEC - Nuevos campos en pantalla de Gesti¿n (Tipo de retribuci¿n, Domiciliar 1¿ recibo, Revalorizaci¿n franquicia)
  14.0        21/12/2013   MMS               15. 0025584: POS - Agragar campo NEDAMAR, para la Edad M¿x. de Renovaci¿n
  16.0        02/06/2014   ELP               16. 0027500: RSA- Nueva operativa de mandatos
  17.0        16/10/2014   MMS               17. 0032676: COLM004-Fecha fin de vigencia de mandato. Campo no obligatorio a informar en la pantallas que se informa la fecha de firma
  18.0        17/03/2016   JAEG              18. 41143/229973: Desarrollo Dise¿o t¿cnico CONF_TEC-01_VIGENCIA_AMPARO
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_genpoliza
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cidioma := 0;
      --SELF.cactivi  := 0;
      SELF.cforpag := 0;
      SELF.cbancar := NULL;
      SELF.ncuotar := NULL;   -- Bug 0020761 - 03-01-2012 - JMF
      SELF.tarjeta := NULL;   -- Bug 0020761 - 03-01-2012 - JMF
      SELF.fefecto := NULL;
      SELF.fvencim := NULL;
      SELF.femisio := NULL;
      SELF.fanulac := NULL;
      SELF.fcarant := NULL;
      SELF.fcaranu := NULL;
      SELF.fcarpro := NULL;
      SELF.ctipcom := 0;
      SELF.ttipcom := NULL;
      SELF.ndurcob := NULL;
      SELF.crecfra := 0;
      -- Bug 14285 - 26/04/2010 - JRH - 0014285: CEM303 - Informar fecha de primer pago de renta en la contrataci¿n
      SELF.fppren := NULL;
      SELF.inttec := NULL;
      -- Fi Bug 14285 - 26/04/2010 - JRH
       -- Bug 16106 - 01/10/2010 - JRH - Poner cfprest
      cfprest := NULL;   --JRH Forma prestaci¿n de la p¿liza
      tfprest := NULL;   --JRH Forma prestaci¿n de la p¿liza
      -- Fi Bug 16106 - 01/10/2010 - JRH
      -- INI Bug19393
      tcompani := NULL;
      tramo := NULL;
      tcompani := NULL;
      tactivi := NULL;
      nnumidetom := NULL;
      SELF.reemplazos := t_iax_reemplazos();
      -- Bug 21924 --11/04/2012--ETM -MDP - TEC - Nuevos campos en pantalla de Gesti¿n (Tipo de retribuci¿n, Domiciliar 1¿ recibo, Revalorizaci¿n franquicia)
      SELF.ctipretr := NULL;
      SELF.cindrevfran := NULL;
      SELF.precarg := NULL;
      SELF.pdtotec := NULL;
      SELF.preccom := NULL;
      SELF.crggardif := NULL;   --Existen riesgos , garant¿as con dtos/rgos diferentes
      --FIN Bug 21924 --11/04/2012--ETM
      -- fi Bug19393
      SELF.cdomper := NULL;   -- MDS : Domiciliar primer recibo
      SELF.cbloqueocol := NULL;   --Bug 23940
      SELF.tbloqueocol := NULL;   --Bug 23940
      SELF.nedamar := NULL;   --Bug 25584 - 21/01/2013 - MMS -- Agregamos el campo NEDAMAR
      SELF.cmandato := NULL;   --Bug 27500 - 02/06/2014 - RSA -- Se agrega para mandatos
      SELF.numfolio := 0;
      SELF.fmandato := NULL;
      SELF.sucursal := NULL;
      SELF.haymandatprev := NULL;
      SELF.ffinvig := NULL;   -- Bug 32676 - 20141016 - MMS -- Agregammos ffinvin
      SELF.nanuali := NULL;  --Bug 39659 - 20160128 -AAC
      SELF.fefeplazo  := NULL;   -- BUG 41143/229973 - 17/03/2016 - JAEG
      SELF.fvencplazo := NULL;   -- BUG 41143/229973 - 17/03/2016 - JAEG
	  SELF.sfbureau 	  :=0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GENPOLIZA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GENPOLIZA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GENPOLIZA" TO "PROGRAMADORESCSI";
