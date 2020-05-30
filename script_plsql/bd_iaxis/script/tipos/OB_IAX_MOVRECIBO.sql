--------------------------------------------------------
--  DDL for Type OB_IAX_MOVRECIBO
--------------------------------------------------------

  EXEC PAC_SKIP_ORA.p_comprovadrop('OB_IAX_MOVRECIBO','TYPE');
  
  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_MOVRECIBO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_DET_OB_IAX_MOVRECIBO
   PROP¿SITO:  Contiene los movimientos del Recibo

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        05/10/2007   ACC                1. Creaci¿n del objeto.
   2.0        11/04/2011   APD                2. 0018225: AGM704 - Realizar la modificaci¿n de precisi¿n el cagente
   3.0        04/10/2013   DEV                3. 0028462: LCOL_T001-Cambio dimensi?n iAxis
   4.0        01/08/2019   Shakti             4. IAXIS-4944 TAREAS CAMPOS LISTENER
******************************************************************************/
(
   smovrec NUMBER, --Secuencial del movimiento -- Bug 28462 - 04/10/2013 - DEV - la precisi¿n debe ser NUMBER
   cusuari VARCHAR2(20), --C¿digo de usuario
   smovagr NUMBER(8), --Secuencial de agrupaci¿n de recibos (liquidaci¿n)
   cestrec NUMBER(1), --Estado del recibo
   cestant NUMBER(1), --Estado anterior del rebibo
   fmovini DATE, --Fecha inicial movimiento
   fmovfin DATE, --Fecha final  movimiento
   fcontab DATE, --Fecha contable
   fmovdia DATE,
   cmotmov NUMBER(3),
   ccobban NUMBER(3),
   cdelega NUMBER, -- Bug 18225 - APD - 11/04/2011 - la precisi¿n debe ser NUMBER
   ctipcob NUMBER(3), --Tipo de cobro: 0.- por caja, 1.- por HOST, NULL.- por domiciliaci¿n
   ttipcob VARCHAR2(100), -- Descripci¿n de ctipcob (vf 552) -- bug 19791-97335
   cmotivo NUMBER(3), -- C¿digo de motivo impago (vf 73) -- bug 19791-97335
   tmotivo VARCHAR2(100), -- Descripci¿n de motivo impago (vf 73) -- bug 19791-97335
   fefeadm DATE,
   testrec VARCHAR2(100), -- Descripci¿n de la situaci¿n del movimiento.
   nreccaj VARCHAR2(100), -- N¿ Recibo de Caja /* Cambios de IAXIS-4753 */
   tmreca  VARCHAR2(100), -- Medio de Recaudo VF. 8001181
   CINDICAF VARCHAR2(10 BYTE),  -----Changes for 4944
   CSUCURSAL VARCHAR2(1000 BYTE),-----Changes for 4944
   CONSTRUCTOR FUNCTION ob_iax_movrecibo RETURN SELF AS RESULT
)
;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_MOVRECIBO" AS
   CONSTRUCTOR FUNCTION ob_iax_movrecibo RETURN SELF AS RESULT IS
   BEGIN
      self.smovrec := 0;
      self.cusuari := NULL;
      self.smovagr := 0;
      self.cestrec := 0;
      self.cestant := 0;
      self.fmovini := NULL;
      self.fmovfin := NULL;
      self.fcontab := NULL;
      self.fmovdia := NULL;
      self.cmotmov := 0;
      self.ccobban := 0;
      self.cdelega := 0;
      self.ctipcob := 0;
      self.fefeadm := NULL;
      self.nreccaj := NULL; /* Cambios de IAXIS-4753 */
      self.tmreca  := NULL;
      self.CINDICAF:= NULL; -----Changes for 4944
      self.CSUCURSAL := NULL;-----Changes for 4944
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_MOVRECIBO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MOVRECIBO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MOVRECIBO" TO "PROGRAMADORESCSI";
