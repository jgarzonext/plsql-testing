--------------------------------------------------------
--  DDL for Type OB_IAX_GESTION
--------------------------------------------------------

  CREATE OR REPLACE TYPE "OB_IAX_GESTION" AS OBJECT(
/******************************************************************************
  NOMBRE:       OB_DET_GESTION
  PROP�SITO:  Contiene la informaci�n de gesti�n de la p�liza

  REVISIONES:
  Ver        Fecha        Autor             Descripci�n
  ---------  ----------  ---------------  ------------------------------------
  1.0        01/08/2007   ACC                1. Creaci�n del objeto.
  2.0        01/12/2008   AMC                2. Se a�ade CPCTREV
  3.0        26/04/2010   JRH                2. Se a�ade interes y fppren
  4.0        21-10-2011   JGR                4. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
  5.0        03-01-2012   JMF                5. 0020761 LCOL_A001- Quotes targetes
  6.0        11/04/2012   ETM                6. 0021924: MDP - TEC - Nuevos campos en pantalla de Gesti�n (Tipo de retribuci�n, Domiciliar 1� recibo, Revalorizaci�n franquicia)
  7.0        18/06/2012   MDS                7. 0021924: MDP - TEC - Nuevos campos en pantalla de Gesti�n (Tipo de retribuci�n, Domiciliar 1� recibo, Revalorizaci�n franquicia)
  8.0        17/12/2012   APD                8. 0023940: LCOL_T010-LCOL - Certificado 0 renovable - Renovaci?n colectivos
  9.0        21/12/2013   MMS                9. 0025584: POS - Agragar campo NEDAMAR, para la Edad M�x. de Renovaci�n
 10.0        05/03/2013   AEG               10. 0024685: (POSDE600)-Desarrollo-GAPS Tecnico-Id 5 -- N?mero de p?liza manual
 11.0        17/10/2013   FAL               11. 0027735: RSAG998 - Pago por cuotas
 12.0        08/10/2013   HRE               12. Bug 0028462: HRE - Cambio dimension campo NPOLIZA
 13.0        02/06/2014   ELP               13. Bug 0027500: RSA - Nueva operativa de mandatos
 14.0        16/10/2014   MMS               14. 0032676: COLM004-Fecha fin de vigencia de mandato. Campo no obligatorio a informar en la pantallas que se informa la fecha de firma
 15.0        17/03/2016   JAEG              15. 41143/229973: Desarrollo Dise�o t�cnico CONF_TEC-01_VIGENCIA_AMPARO
******************************************************************************/
   cidioma        NUMBER,   --C�digo del idioma, (1.- Catal�  2.- Castellano)
   cactivi        NUMBER,   --C�digo actividad del seguro
   tactivi        VARCHAR2(250),   --Actividad del seguro
   cforpag        NUMBER,   --C�digo de forma de pago
   ctipban        NUMBER,   --1: indica que se coge el campo cctiban en lugar del cbancar. 0:indica que se coge el campo cbancar para domicialiaciones
   cbancar        VARCHAR2(50),   --CCC seg�n Consejo Superior Bancario y IBAN seg�n el ctipban en db es sobre CCTIBAN
   ncuotar        NUMBER(3),   -- Bug 0020761 - 03-01-2012 - JMF
   tarjeta        NUMBER(1),   -- Bug 0020761 - 03-01-2012 - JMF: 0=No, 1=Si
   fefecto        DATE,   --Fecha de Efecto
   fvencim        DATE,   --Fecha de Vencimiento
   femisio        DATE,   --Fecha de emisi�n
   fanulac        DATE,   --Fecha de anulaci�n
   cduraci        NUMBER,   --C�digo Tipo de Duraci�n
   duracion       NUMBER,   --Duraci�n
   ctipcom        NUMBER(2),   --C�digo tipo de comisi�n
   ttipcom        VARCHAR2(100),   --Tipo de comisi�n (texto)
   ctipcob        NUMBER(3),   --Tipo de cobro p�liza (VF 522) -- Bug 0020010 - 08/11/2011 - JMF
   csubage        NUMBER,   --C�digo subagente
   dtocom         NUMBER,   --Descuento comercial
   fcarant        DATE,   --Fecha cartera anterior
   fcaranu        DATE,   --Fecha cartera anualidad
   fcarpro        DATE,   --Fecha cartera pr�xima
   ccobban        NUMBER,   --C�digo de cobrador bancario
   --JRH 03/2008 A�ado datos de producto financieros
   ndurper        NUMBER,   --duraci�n del periodo de revisi�n
   pcapfall       NUMBER(5, 2),   --% capital de fallecimiento (rentas)
   pdoscab        NUMBER(5, 2),   --% reversi�n (rentas)
   cforpagren     NUMBER,   --forma pago de la renta (rentas)
   frevisio       DATE,   --fecha revisi�n
   --JRH 03/2008

   -- SBG 04/2008
   polissa_ini    VARCHAR2(15),   --N�m. de la p�lissa antiga
   -- AMC-8286-23/03/2009
   cpctrev        NUMBER,
   npctrev        NUMBER,
   -- Mantis 7919.#6. 12/2008
   ndurcob        NUMBER(2)   -- Duraci� pagament primes.
                           ,
   ndurcob_prod   NUMBER(2)
                           -- Anys a restar de la duraci� de pagaments de primes.
   ,
   crecfra        NUMBER(1),
   -- Bug 14285 - 26/04/2010 - JRH - 0014285: CEM303 - Informar fecha de primer pago de renta en la contrataci�n
   inttec         NUMBER(7, 2),
   fppren         DATE,
   -- Fi Bug 14285 - 26/04/2010 - JRH
   -- Bug 16106 - 01/10/2010 - JRH - Poner cfprest
   cfprest        NUMBER(2),
                               --JRH Forma prestaci�n de la p�liza
   -- Fi Bug 16106 - 01/10/2010 - JRH
   -- BUG20589:XPL:20/12/2011:Ini
   cmonpol        NUMBER(3),   --Moneda de pago (c??o moneda tabla monedas)
   cmonpolint     VARCHAR2(3),   --Moneda de pago (c??o moneda tabla eco_monedas)
   tmonpol        VARCHAR2(1400),   --Descripci??oneda de pago
   -- BUG20589:XPL:20/12/2011:Fin
   -- Bug 21924 --11/04/2012--ETM -MDP - TEC - Nuevos campos en pantalla de Gesti�n (Tipo de retribuci�n, Domiciliar 1� recibo, Revalorizaci�n franquicia)
   ctipretr       NUMBER(2),   -- Tipo de retribuci�n
   cindrevfran    NUMBER(1),   --Revalorizaci�n franquicia
   precarg        NUMBER(6, 2),   --recargo t�cnico
   pdtotec        NUMBER(6, 2),   -- descuento t�cnico
   preccom        NUMBER(6, 2),   --recargo comercial
   crggardif      NUMBER(1),   -- > Existen riesgos , garant�as con dtos/rgos diferentes
   --FIN Bug 21924 --11/04/2012--ETM
   cdomper        NUMBER(1),   -- MDS : Domiciliar primer recibo
   frenova        DATE,   -- BUG 0023117 - FAL - 26/07/2012
   cbloqueocol    NUMBER(3),   -- Indica si un Colectivo est� bloqueado (v.f.1111) --Bug 23940
   tbloqueocol    VARCHAR2(100),   -- Descripcion de si un Colectivo est� bloqueado (v.f.1111) --Bug 23940
   -- Bug 25584 - 21/01/2013 - MMS -- Agregamos el campo NEDAMAR
   nedamar        NUMBER(2),
   -- BUG 24685 AEG 2013-03-05
   ctipoasignum   NUMBER(1),
   npolizamanual  NUMBER,   -- Bug 28462 - 08/10/2013 - HRE - Cambio de dimension NPOLIZA
   npreimpreso    NUMBER(8),
   -- fin BUG 24685 AEG 2013-03-05
   nmescob        NUMBER(2),
                              -- BUG 0027735 - FAL - 25/09/2013
   --MANDATOS RSA 02/06/2014
   cmandato       VARCHAR2(35),
   numfolio       NUMBER,
   fmandato       DATE,
   sucursal       VARCHAR2(50),
   haymandatprev  NUMBER,
   ffinvig        DATE,   -- Bug 32676 - 20141016 - MMS -- Agregammos ffinvin
   fefeplazo      DATE,   -- BUG 41143/229973 - 17/03/2016 - JAEG
   fvencplazo     DATE,   -- BUG 41143/229973 - 17/03/2016 - JAEG
   CONSTRUCTOR FUNCTION ob_iax_gestion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE TYPE BODY "OB_IAX_GESTION" AS
/******************************************************************************
   NOMBRE:       OB_DET_GESTION
   PROP�SITO:  Contiene la informaci�n de gesti�n de la p�liza

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC                1. Creaci�n del objeto.
   2.0        26/04/2010   JRH                2. Se a�ade interes y fppren
   3.0        03-01-2012   JMF                3. 0020761 LCOL_A001- Quotes targetes
   4.0        11/04/2012   ETM                4.0021924: MDP - TEC - Nuevos campos en pantalla de Gesti�n (Tipo de retribuci�n, Domiciliar 1� recibo, Revalorizaci�n franquicia)
   5.0        18/06/2012   MDS                5.0021924: MDP - TEC - Nuevos campos en pantalla de Gesti�n (Tipo de retribuci�n, Domiciliar 1� recibo, Revalorizaci�n franquicia)
   6.0        05/03/2013   AEG                6. 0024685: (POSDE600)-Desarrollo-GAPS Tecnico-Id 5 -- N?mero de p?liza manual
   7.0        17/10/2013   FAL               11. 0027735: RSAG998 - Pago por cuotas
   8.0        02/06/2014   ELP                8. 0027500: RSA- Nueva operativa de mandatos
   9.0        16/10/2014   MMS                9. 0032676: COLM004-Fecha fin de vigencia de mandato. Campo no obligatorio a informar en la pantallas que se informa la fecha de firma
   10.0       17/03/2016   JAEG              10. 41143/229973: Desarrollo Dise�o t�cnico CONF_TEC-01_VIGENCIA_AMPARO
   11.0       20/08/2019   CJMR              11. IAXIS-4203:  Ajuste de campo cactivi
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_gestion
      RETURN SELF AS RESULT IS
   BEGIN
      -- Per defecte s'agafa l'idioma de la empresa.#6.
      SELF.cidioma := pac_parametros.f_parempresa_n(pac_md_common.f_get_cxtempresa,
                                                    'EMPRESA_DEF');
      SELF.cactivi := NULL;   -- IAXIS-4203 CJMR 20/08/2019
      SELF.tactivi := 0;
      SELF.cforpag := 0;
      SELF.cbancar := NULL;
      SELF.ncuotar := NULL;   -- Bug 0020761 - 03-01-2012 - JMF
      SELF.tarjeta := NULL;   -- Bug 0020761 - 03-01-2012 - JMF
      SELF.fefecto := NULL;
      SELF.fvencim := NULL;
      SELF.femisio := NULL;
      SELF.fanulac := NULL;
      SELF.duracion := NULL;
      SELF.ctipcom := 0;
      SELF.ttipcom := NULL;
      --JRH 03/2008 A�ado datos de producto financieros
      SELF.ndurper := NULL;
      SELF.pcapfall := NULL;
      SELF.pdoscab := NULL;
      SELF.cforpagren := NULL;
      --JRH 03/2008

      -- SBG 04/2008
      SELF.polissa_ini := NULL;
      -- Mantis 7919.#6. 12/2008
      SELF.ndurcob := NULL;
      SELF.ndurcob_prod := NULL;
      SELF.crecfra := NULL;
      -- Bug 14285 - 26/04/2010 - JRH - 0014285: CEM303 - Informar fecha de primer pago de renta en la contrataci�n
      SELF.inttec := NULL;
      SELF.fppren := NULL;
      -- Fi Bug 14285 - 26/04/2010 - JRH
      SELF.cfprest := NULL;
      -- Bug 21924 --11/04/2012--ETM -MDP - TEC - Nuevos campos en pantalla de Gesti�n (Tipo de retribuci�n, Domiciliar 1� recibo, Revalorizaci�n franquicia)
      SELF.ctipretr := NULL;
      SELF.cindrevfran := NULL;
      SELF.precarg := NULL;
      SELF.pdtotec := NULL;
      SELF.preccom := NULL;
      SELF.crggardif := NULL;   --Existen riesgos , garant�as con dtos/rgos diferentes
      --FIN Bug 21924 --11/04/2012--ETM
      SELF.cdomper := NULL;   -- MDS : Domiciliar primer recibo
      SELF.frenova := NULL;   -- BUG 0023117 - FAL - 26/07/2012
      SELF.cbloqueocol := NULL;   --Bug 23940
      SELF.tbloqueocol := NULL;   --Bug 23940
      SELF.nedamar := NULL;   --Bug 25584 - 21/01/2013 - MMS -- Agregamos el campo NEDAMAR
      -- BUG 24685 AEG 2013-03-05
      SELF.ctipoasignum := NULL;
      SELF.npolizamanual := NULL;
      SELF.npreimpreso := NULL;
      -- fin BUG 24685 AEG 2013-03-05
      SELF.nmescob := NULL;   -- BUG 0027735 - FAL - 25/09/2013
      --MANDATOS RSA 02/06/2014
      SELF.cmandato := NULL;
      SELF.numfolio := 0;
      SELF.fmandato := NULL;
      SELF.sucursal := NULL;
      SELF.haymandatprev := NULL;
      SELF.ffinvig := NULL;   -- Bug 32676 - 20141016 - MMS -- Agregammos ffinvin
      SELF.fefeplazo  := NULL;   -- BUG 41143/229973 - 17/03/2016 - JAEG
      SELF.fvencplazo := NULL;   -- BUG 41143/229973 - 17/03/2016 - JAEG
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GESTION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GESTION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GESTION" TO "PROGRAMADORESCSI";
