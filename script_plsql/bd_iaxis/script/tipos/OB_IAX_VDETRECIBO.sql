--------------------------------------------------------
--  DDL for Type OB_IAX_VDETRECIBO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_VDETRECIBO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_VDETRECIBO
   PROPÓSITO:  Contiene los conceptos de un recibo y su importe total

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/06/2008   JMR                1. Creación del objeto.
   2.0        27/10/2011   JMF                2. Afegir prima bruta
   3.0        27/03/2012   JGR                3. 0020546: LCOL_A001 - UAT-ADM - Errors cobrant/descobrant rebuts - 104206
******************************************************************************/
(
   iprinet        NUMBER,   --NUMBER(15, 2),   -- Prima Neta
   irecext        NUMBER,   --NUMBER(15, 2),   -- Recergo Externo
   iconsor        NUMBER,   --NUMBER(15, 2),   -- Consorcio
   ireccon        NUMBER,   --NUMBER(15, 2),   -- Recargo Consorcio
   tiips          VARCHAR2(100),   -- Literal asociado al campo iips
   iips           NUMBER,   --NUMBER(15, 2),   -- Impuesto IPS
   tidgs          VARCHAR2(100),   -- Literal asociado al campo IDGS
   idgs           NUMBER,   --NUMBER(15, 2),   -- Impuesto CLEA/DGS
   tiarbitr       VARCHAR2(100),   -- Literal asociado al campo IARBITR
   iarbitr        NUMBER,   --NUMBER(15, 2),   -- Arbitrios (bomberos, ...)
   tifng          VARCHAR2(100),   -- Literal asociado al campo IFNG
   ifng           NUMBER,   --NUMBER(15, 2),   -- Impuesto FNG
   irecfra        NUMBER,   --NUMBER(15, 2),   -- Recargo Fraccionamiento
   idtotec        NUMBER,   --NUMBER(15, 2),   -- Dto. Técnico
   idtocom        NUMBER,   --NUMBER(15, 2),   -- Dto. Comercial
   icombru        NUMBER,   --NUMBER(15, 2),   -- Comisión bruta
   icomret        NUMBER,   --NUMBER(15, 2),   -- Retención s/Comisión
   idtoom         NUMBER,   --NUMBER(15, 2),   -- Dto. Orden Ministerial
   ipridev        NUMBER,   --NUMBER(15, 2),   -- Prima Devengada
   itotpri        NUMBER,   --NUMBER(15, 2),   -- Total Prima Neta
   itotdto        NUMBER,   --NUMBER(15, 2),   -- Total Descuentos
   itotcon        NUMBER,   --NUMBER(15, 2),   -- Total Consorcio
   itotimp        NUMBER,   --NUMBER(15, 2),   -- Total Impuestos y Arbitrios
   itotalr        NUMBER,   --NUMBER(15, 2),   -- TOTAL RECIBO
   iderreg        NUMBER,   --NUMBER(15, 2),
   itotrec        NUMBER,   --NUMBER(15, 2),
   icomdev        NUMBER,   --NUMBER(15, 2),
   iretdev        NUMBER,   --NUMBER(15, 2),
   icednet        NUMBER,   --NUMBER(15, 2),
   icedrex        NUMBER,   --NUMBER(15, 2),
   icedcon        NUMBER,   --NUMBER(15, 2),
   icedrco        NUMBER,   --NUMBER(15, 2),
   icedips        NUMBER,   --NUMBER(15, 2),
   iceddgs        NUMBER,   --NUMBER(15, 2),
   icedarb        NUMBER,   --NUMBER(15, 2),
   icedfng        NUMBER,   --NUMBER(15, 2),
   icedrfr        NUMBER,   --NUMBER(15, 2),
   iceddte        NUMBER,   --NUMBER(15, 2),
   iceddco        NUMBER,   --NUMBER(15, 2),
   icedcbr        NUMBER,   --NUMBER(15, 2),
   icedcrt        NUMBER,   --NUMBER(15, 2),
   iceddom        NUMBER,   --NUMBER(15, 2),
   icedpdv        NUMBER,   --NUMBER(15, 2),
   icedreg        NUMBER,   --NUMBER(15, 2),
   icedcdv        NUMBER,   --NUMBER(15, 2),
   icedrdv        NUMBER,   --NUMBER(15, 2),
   it1pri         NUMBER,   --NUMBER(15, 2),   -- Total primas
   it1dto         NUMBER,   --NUMBER(15, 2),   -- Total Descuentos
   it1con         NUMBER,   --NUMBER(15, 2),   -- Total Consorcio
   it1imp         NUMBER,   --NUMBER(15, 2),   -- Total Impuestos
   it1rec         NUMBER,   --NUMBER(15, 2),   -- Total Recargos
   it1totr        NUMBER,   --NUMBER(15, 2),
   it2pri         NUMBER,   --NUMBER(15, 2),
   it2dto         NUMBER,   --NUMBER(15, 2),
   it2con         NUMBER,   --NUMBER(15, 2),
   it2imp         NUMBER,   --NUMBER(15, 2),
   it2rec         NUMBER,   --NUMBER(15, 2),
   it2totr        NUMBER,   --NUMBER(15, 2),
   icomcia        NUMBER,   --NUMBER(15, 2),   -- Importe de la comisión de la compañía
   icombrui       NUMBER,   --NUMBER(15, 2),
   icomreti       NUMBER,   --NUMBER(15, 2),
   icomdevi       NUMBER,   --NUMBER(15, 2),
   icomdrti       NUMBER,   --NUMBER(15, 2),
   icombruc       NUMBER,   --NUMBER(15, 2),
   icomretc       NUMBER,   --NUMBER(15, 2),
   icomdevc       NUMBER,   --NUMBER(15, 2),
   icomdrtc       NUMBER,   --NUMBER(15, 2),
   iocorec        NUMBER,   --NUMBER(15, 2),   -- Importe otros conceptos recargo
   ipbruta        NUMBER,   --NUMBER(15, 2),   -- Importe prima bruta
   iimp_1         NUMBER,   --NUMBER(15, 2),   -- Concepto 32 - IVA sobre comisión -- 3. 0020546/104206 - desde
   iimp_2         NUMBER,   --NUMBER(15, 2),   -- Concepto 40 - ICA
   iimp_3         NUMBER,   --NUMBER(15, 2),   -- Concepto 41 - ReteICA
   iimp_4         NUMBER,   --NUMBER(15, 2),   -- Concepto 42 - Avisos y tableros -- 3. 0020546/104206 - hasta
   --Detrecibo_det    T_iax_detrecibo_det,
   CONSTRUCTOR FUNCTION ob_iax_vdetrecibo
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_VDETRECIBO" AS
   CONSTRUCTOR FUNCTION ob_iax_vdetrecibo
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.iprinet := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_VDETRECIBO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_VDETRECIBO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_VDETRECIBO" TO "PROGRAMADORESCSI";
