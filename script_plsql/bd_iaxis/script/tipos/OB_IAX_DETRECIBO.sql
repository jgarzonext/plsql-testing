--------------------------------------------------------
--  DDL for Type OB_IAX_DETRECIBO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DETRECIBO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_DET_RECIBOS
   PROP¿SITO:  Contiene informaci¿n del detalle del Recibo cabecera

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        05/10/2007   ACC             1. Creaci¿n del objeto.
   2.0        21/05/2010   ICV             2. A¿adir campo recibo compa¿ia
   3.0        11/04/2011   APD             3. 0018225: AGM704 - Realizar la modificaci¿n de precisi¿n el cagente
   4.0        21-10-2011   JGR             4. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
   5.0        26/02/2013   LCF             5. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
   6.0        09/08/2013   CEC             6. 0027691/149541: Incorporaci¿n de desglose de Recibos en la moneda del producto
   7.0        21/01/2014   JDS             7. 0029603: POSRA300-Texto en la columna Pagador del Recibo para recibos de Colectivos
******************************************************************************/
(
   nrecibo        NUMBER,   --N¿mero de recibo
   femisio        DATE,   --Fecha de emisi¿n del recibo
   fefecto        DATE,   --Fecha de efecto del recibo
   fvencim        DATE,   --Fecha de vencimiento del recibo
   ctiprec        NUMBER(2),   --Tipo de recibo
   ttiprec        VARCHAR2(100),   --Descripci¿n tipo de recibo
   cdelega        NUMBER,   --Delegaci¿n asociada -- Bug 18225 - APD - 11/04/2011 - la precisi¿n debe ser NUMBER
   ccobban        NUMBER(3),   --C¿digo de cobrador bancario
   cestaux        NUMBER(2),   --C¿digo subestado recibo
   nanuali        NUMBER(2),   --N¿mero de anualidad
   nfracci        NUMBER(2),   --N¿mero de fracci¿n en la anualidad
   cestimp        NUMBER(2),   --Estado impresi¿n del recibo
   nriesgo        NUMBER(6),   --N¿mero de riesgo si s¿lo afecta a uno
   cforpag        NUMBER(2),   --Forma de pago
   cbancar        VARCHAR2(50),   --Codi bancari
   nmovanu        NUMBER(4),   --C¿digo movimiento anulaci¿n
   cretenc        NUMBER(2),
   pretenc        NUMBER(5, 2),
   ncuacoa        NUMBER(2),
   ctipcoa        NUMBER(1),
   cestsop        NUMBER(1),
   cmanual        NUMBER(1),
   nperven        NUMBER(6),
   ctransf        VARCHAR2(1),
   cgescob        NUMBER(1),   --Gestio de cobrament.Valor fixe 694 : (1 -Correduria, 2-Companyia)
   festimp        DATE,
   ctipban        NUMBER(3),   --Tipo de cuenta ( iban o cuenta bancaria). Valor fijo. 274
   importe        FLOAT,   --Importe total del recibo  /* Tipo de dato FLOAT ???*/
   importe_mon    FLOAT,   --Importe total del recibo  /* Tipo de dato FLOAT ???*/
   cestrec        NUMBER,   --Estado del recibo
   testrec        VARCHAR2(100),   --Descripci¿n del estado del recibo
   --cptrecibo   T_IAX_CPTRECIBO, --Concepto recibo
   movrecibo      t_iax_movrecibo,   --Movimientos del recibo
   cconcep        NUMBER(2),   --C¿digo del recargo (detval 27)
   iconcep        NUMBER,   --25803 Importe de la garant¿a
   iconcep_monpol NUMBER,   --0027691/149541
   tconcep        VARCHAR2(100),   --Descripcion del valor fijo 27
   creccia        VARCHAR2(50),   -- 14586 - 21/05/2010 - PFA - A¿adir campo recibo compa¿ia
   esccero        NUMBER(1),
   tdestiprec     VARCHAR2(500),   -- BUG23853:DRA:09/11/2012
   tdescpag       VARCHAR2(500),   -- bug 29603#c162740: JDS 08/01/2014
   -- jlb - 24926:
   csubtiprec     NUMBER(2),   --Tipo de recibo
   tsubtiprec     VARCHAR2(100),   --Descripci¿n tipo de recibo
   -- jlb - 24926:
   detrecibo_det  t_iax_detrecibo_det,   -- Detalle por importe
   --IGIL_INI-CONF_603
   detrecibo_det_fcambio  t_iax_detrecibo_det,   -- Detalle por importe a fcambio
   iconcep_fcambio        NUMBER,   --25803 Importe de la garant¿a
   tconcep_fcambio        VARCHAR2(100),   --Descripcion del valor fijo 27
   cconcep_fcambio        NUMBER(2),   --C¿digo del recargo (detval 27)
   iconcep_monpol_fcambio NUMBER,   --0027691/149541
   --IGIL_FI-CONF_603
   CONSTRUCTOR FUNCTION ob_iax_detrecibo
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DETRECIBO" AS
/******************************************************************************
   NOMBRE:       OB_DET_RECIBOS
   PROP¿SITO:  Contiene informaci¿n del detalle del Recibo cabecera

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        05/10/2007   ACC                1. Creaci¿n del objeto.
   1.1        21/05/2010   ICV                2. A¿adir campo recibo compa¿ia
   1.2        09/08/2013   CEC                3. 0027691/149541: Incorporaci¿n de desglose de Recibos en la moneda del producto
   1.3        21/01/2014   JDS                4. 0029603: POSRA300-Texto en la columna Pagador del Recibo para recibos de Colectivos
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_detrecibo
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.femisio := NULL;
      SELF.fefecto := NULL;
      SELF.fvencim := NULL;
      SELF.ctiprec := 0;
      SELF.cdelega := 0;
      SELF.ccobban := 0;
      SELF.cestaux := 0;
      SELF.nanuali := 0;
      SELF.nfracci := 0;
      SELF.cestimp := 0;
      SELF.nriesgo := 0;
      SELF.cforpag := 0;
      SELF.cbancar := NULL;
      SELF.nmovanu := 0;
      SELF.cretenc := 0;
      SELF.pretenc := 0;
      SELF.ncuacoa := 0;
      SELF.ctipcoa := 0;
      SELF.cestsop := 0;
      SELF.cmanual := 0;
      SELF.nperven := 0;
      SELF.ctransf := NULL;
      SELF.cgescob := 0;
      SELF.festimp := NULL;
      SELF.ctipban := 0;
      --SELF.cptrecibo := null;
      SELF.movrecibo := NULL;
      SELF.cconcep := NULL;
      SELF.iconcep := 0;
      SELF.iconcep_monpol := 0;   --0027691/149541
      SELF.tconcep := NULL;
      SELF.creccia := NULL;   -- 14586 - 21/05/2010 - PFA - A¿adir campo recibo compa¿ia
      SELF.esccero := NULL;
      SELF.tdestiprec := NULL;
      SELF.tdescpag := NULL;
        -- jlb - 24926:
      SELF.csubtiprec := NULL;  --Tipo de recibo
      SELF.tsubtiprec := NULL;   --Descripci¿n tipo de recibo
   -- jlb - 24926:
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DETRECIBO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETRECIBO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETRECIBO" TO "PROGRAMADORESCSI";
