--------------------------------------------------------
--  DDL for Type OB_IAX_RECIBOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_RECIBOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_RECIBOS
   PROP¿SITO:  Contiene los datos de un recibo

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/06/2008   JMR                1. Re-Creaci¿n del objeto.
   1.1        18/02/2009   FAL                2. Afegir atribut icomisi (comisio del rebut)
   2.0        04/11/2010   ICV                3. 0016325: CRT101 - Modificaci¿n de recibos para corredur¿a
   3.0        21/05/2010   ICV                4. A¿adir campo recibo compa¿ia
   4.0        11/04/2011   APD                5. 0018225: AGM704 - Realizar la modificaci¿n de precisi¿n el cagente
   5.0        21/06/2011   ICV                6. 0018838: CRT901 - Pantalla para modificar estado de un recibo
   6.0        21-10-2011   JGR                7. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
   7.0        03-01-2012   JMF                8. 0020761 LCOL_A001- Quotes targetes
   8.0        14-06-2012   APD                9. 0022342: MDP_A001-Devoluciones
  10.0        08-10-2012   JLTS              10. 0020278: Adicionar el campo TDESCRIP
  11.0        01/07/2013   RCL                11. 0024697: LCOL_T031-Tama¿o del campo SSEGURO
  12.0         09/08/2013   CEC               12. 0027691/149541: Incorporaci¿n de desglose de Recibos en la moneda del producto
  13.0        04/10/2013   DEV                13. 0028462: LCOL_T001-Cambio dimensi?n iAxis
******************************************************************************/
(
   nrecibo        NUMBER,   --N¿mero de recibo  -- Bug 28462 - 04/10/2013 - DEV - la precisi¿n debe ser NUMBER
   cempres        NUMBER(2),   --C¿digo de empresa
   femisio        DATE,   --Fecha de emisi¿n del recibo
   fefecto        DATE,   --Fecha de efecto del recibo
   fvencim        DATE,   --Fecha de vencimiento del recibo
   ctiprec        NUMBER(2),   --Tipo de recibo
   ttiprec        VARCHAR2(100),   --Descripci¿n tipo de recibo
   cdelega        NUMBER,
--Delegaci¿n asociada -- Bug 18225 - APD - 11/04/2011 - la precisi¿n de cdelega debe ser NUMBER
   ccobban        NUMBER(3),   --C¿digo de cobrador bancario
   tdescrip       VARCHAR2(50),   -- Descripci¿n COMBANCARIO.DESCRIPCION
   tcobban        VARCHAR2(100),   --Descripci¿n de cobrador bancario
   cestaux        NUMBER(2),   --C¿digo subestado recibo
   nanuali        NUMBER(2),   --N¿mero de anualidad
   nfracci        NUMBER(2),   --N¿mero de fracci¿n en la anualidad
   cestimp        NUMBER(2),   --Estado impresi¿n del recibo
   nriesgo        NUMBER(6),   --N¿mero de riesgo si s¿lo afecta a uno
   cforpag        NUMBER(2),   --Forma de pago
   cbancar        VARCHAR2(50),   --Codi bancari
   ncuotar        NUMBER(3),
   -- Numero cuotas tarjeta -- Bug 0020761 - 03-01-2012 - JMF
   nmovanu        NUMBER(4),   --C¿digo movimiento anulaci¿n
   cretenc        NUMBER(2),
   pretenc        NUMBER(5, 2),
   ncuacoa        NUMBER(2),
   ctipcoa        NUMBER(1),
   cestsop        NUMBER(1),
   cmanual        NUMBER(1),
   nperven        NUMBER(6),
   ctransf        VARCHAR2(1),
   cgescob        NUMBER(1),
   --Gestio de cobrament.Valor fixe 694 : (1 -Correduria, 2-Companyia)
   festimp        DATE,
   ctipban        NUMBER(3),
   --Tipo de cuenta ( iban o cuenta bancaria). Valor fijo. 274
   importe        FLOAT,   --Importe total del recibo
   cestrec        NUMBER(1),   --Estado del recibo
   testrec        VARCHAR2(100),   --Descripci¿n del estado del recibo
   sseguro        NUMBER,   -- Identificador ¿nico de la p¿liza
   nmovimi        NUMBER(4),
   -- N¿mero de movimiento en el que se gener¿ el recibo
   cagente        NUMBER,
-- C¿digo del agente -- Bug 18225 - APD - 11/04/2011 - la precisi¿n de cdelega debe ser NUMBER
   tagente        VARCHAR2(100),   -- Descripci¿n del agente
   tdelega        VARCHAR2(100),   -- Descripci¿n de la delegaci¿n
   tgestor        VARCHAR2(100),   -- Gestor del recibo
   tgescob        VARCHAR2(100),   -- Descripci¿n de la gesti¿n de cobro
   ttipcoa        VARCHAR2(100),
   -- Descripci¿n del tipo de coaseguro. Valor fijo 59
   ttipban        VARCHAR2(100),
   -- Descripci¿n del tipo de cuenta. Valor fijo 274
   tforpag        VARCHAR2(100),   -- Descripci¿n de la forma de pago.
   testimp        VARCHAR2(100),   -- Estado impresi¿n del recibo.
   tmanual        VARCHAR2(100),   -- Literal 101327
   tempres        VARCHAR2(100),   -- f_desempresa(cempres,null, tempres)
   icomisi        FLOAT,
-- Importe comisi¿n del recibo         -- 7657 - 18/02/2009 - FAL - Afegir atribut icomisi
   cvalidado      NUMBER,   --Indica si el recibo esta validado
   creccia        VARCHAR2(50),
   -- 14586 - 21/05/2010 - PFA - A¿adir campo recibo compa¿ia
   cmodifi        NUMBER(2),
   -- 18838 - 21/06/2011 - ICV - Campo que indica si se ha modificado el recibo
   ctipcob        NUMBER(3),   -- Bug 0020010 - JMF - 15/11/2011
   ttipcob        VARCHAR2(250),   --BUG24687 - JTS - 26/11/2012
   csucursal      NUMBER,   --BUG20501 - JTS - 28/12/2011
   tsucursal      VARCHAR2(100),   --BUG20501 - JTS - 28/12/2011
   fvencim_ccc    DATE,
   --22080 - ICV - Fvencimiento de la cuenta del pagador del recibo
   tpagador       VARCHAR2(400),   -- 22080 - ICV - Pagador del recibo
   sperson        NUMBER(10),   --22080 - ICV - Pagador
   -- Bug 22342 - APD - 14/06/2012
   caccpre        NUMBER,   -- C¿digo de Acci¿n Preconocida (Vf. 800086) (tabla RECIBOS_COMP)
   taccpre        VARCHAR2(100),
   caccret        NUMBER,   -- C¿digo de Acci¿n Retenida (Vf. 800089) (tabla RECIBOS_COMP)
   taccret        VARCHAR2(100),
   tobserv        VARCHAR2(4000),   -- Texto de Observaciones (tabla RECIBOS_COMP)
   -- fin Bug 22342 - APD - 14/06/2012
   importe_monpol FLOAT,   -- 12.
   icomisi_monpol FLOAT,   -- 12.
   movrecibo      t_iax_movrecibo,   --Movimientos del recibo
   detrecibo      t_iax_detrecibo,   -- detrecibo
   vdetrecibo     t_iax_vdetrecibo,   -- vdetrecibo
   vdetrecibo_monpol t_iax_vdetrecibo,   -- 12.
   -- jlb - 24926:
   csubtiprec     NUMBER(2),   --Tipo de recibo
   tsubtiprec     VARCHAR2(100),   --Descripci¿n tipo de recibo
   -- jlb - 24926:
   --AAC_INI-CONF_OUTSOURCING-20160906
    cgescar     NUMBER(2),
   --AAC_FI-CONF_OUTSOURCING-20160906
   CONSTRUCTOR FUNCTION ob_iax_recibos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_RECIBOS" AS
/******************************************************************************
   NOMBRE:       OB_IAX_RECIBOS
   PROP¿SITO:  Contiene los datos de un recibo

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/06/2008   JMR                1. Re-Creaci¿n del objeto.
   1.1        18/02/2009   FAL                2. Afegir atribut icomisi (comisio del rebut)
   2.0        04/11/2010   ICV                3. 0016325: CRT101 - Modificaci¿n de recibos para corredur¿a
   4.0        21/05/2010   ICV                4. A¿adir campo recibo compa¿ia
   5.0        21/06/2011   ICV                6. 0018838: CRT901 - Pantalla para modificar estado de un recibo
   6.0        03-01-2012   JMF                7. 0020761 LCOL_A001- Quotes targetes
   7.0        16/10/2012   JLTS               8. 0020278: Adicionar el campo TDESCRIP
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_recibos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := 0;
      SELF.nmovimi := 0;
      SELF.cempres := 0;
      SELF.cagente := 0;
      SELF.detrecibo := NULL;
      SELF.nrecibo := NULL;
      SELF.cvalidado := 0;
      SELF.creccia := NULL;
      SELF.cmodifi := 0;
      SELF.ncuotar := NULL;   -- Bug 0020761 - 03-01-2012 - JMF
      -- Bug 22342 - APD - 14/06/2012
      SELF.caccpre := NULL;
      SELF.taccpre := NULL;
      SELF.caccret := NULL;
      SELF.taccret := NULL;
      SELF.tobserv := NULL;
      SELF.tdescrip := NULL;
      -- fin Bug 22342 - APD - 14/06/2012
       -- jlb - 24926:
      self.csubtiprec := null;
      self.tsubtiprec := null;
       -- jlb F- - 24926:
	   --AAC_INI-CONF_OUTSOURCING-20160906
		self.cgescar := null;
	   --AAC_FI-CONF_OUTSOURCING-20160906
   RETURN;
   END ob_iax_recibos;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_RECIBOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_RECIBOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_RECIBOS" TO "PROGRAMADORESCSI";
