--------------------------------------------------------
--  DDL for Type OB_IAX_REEMBACTFACT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_REEMBACTFACT" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_REEMBACTFACT
   PROPÓSITO:  Contiene la información correspondiente a los actos de un reembolso.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/08/2008   XVM              1. Creación del objeto.
   2.0        14/07/2009   DRA              2. 0010704: CRE - Traspaso de facturas para reembolso con mismo Nº Hoja CASS
   3.0        02/10/2009   XVM              3. 0011285: CRE - Transferencias de reembolsos
******************************************************************************/
(
   nreemb         NUMBER(8),   --Número reembolso
   nfact          NUMBER(8),   --Número de factura interno
   nlinea         NUMBER(4),   --Número de línea
   cacto          VARCHAR2(10),   --Código de acto médico
   nacto          NUMBER(4),   --Número de actos
   facto          DATE,   --Fecha acto
   itarcass       NUMBER,   --NUMBER(13, 2),   --Tarifa CASS
   preemb         NUMBER(13, 2),   --Porcentaje reembolso
   icass          NUMBER,   --NUMBER(13, 2),   --Importe pago
   itot           NUMBER,   --NUMBER(13, 2),   --Importe total
   iextra         NUMBER,   --NUMBER(13, 2),   --Importe regalo obtenido de actos_producto.impregalo
   ipago          NUMBER,   --NUMBER(13, 2),   --Importe a pagar (aceptado).
   --En el caso de ficheros CASS
   --el importe propuesto = (itarcass-impcass) + impregalo.
   iahorro        NUMBER,   --NUMBER(13, 2),   --Importe ahorrado
   cerror         NUMBER(4),   --Codigo error. Tabla controlsan
   fbaja          DATE,   --Fecha baja
   falta          DATE,   --Fecha alta
   ftrans         DATE,   --Fecha generación de transferencia
   cusualta       VARCHAR2(20),   --Usuario de alta
   corigen        NUMBER(2),   --Valor Fijo "Origen"
   torigen        VARCHAR2(100),   --Descripcion "origen" VF-893
   tdesacto       VARCHAR2(100),   --Descripción del acto
   nremesa        NUMBER(10),   --Código de la remesa en que se transfiere
   terror         VARCHAR2(150),   --Error.
   -- BUG10704:DRA:14/07/2009:Inici
   ctipo          NUMBER(1),   -- 0 -> Convencionado , 1 -> No Convencionado
   ttipo          VARCHAR2(100),   -- Descripción del ctipo
   ipagocomp      NUMBER,   --NUMBER(15, 2),   -- Importe complementario
   ftranscomp     DATE,   -- Fecha generación de transferencia del importe complementario
   nremesacomp    NUMBER(10),
                                -- Remesa de la transferencia del pago complementario
   -- BUG10704:DRA:14/07/2009:Fi
   CONSTRUCTOR FUNCTION ob_iax_reembactfact
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_REEMBACTFACT" AS
   CONSTRUCTOR FUNCTION ob_iax_reembactfact
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nreemb := NULL;
      SELF.nfact := NULL;
      SELF.nlinea := NULL;
      SELF.cacto := NULL;
      SELF.nacto := NULL;
      SELF.facto := NULL;
      SELF.itarcass := NULL;
      SELF.preemb := NULL;
      SELF.icass := NULL;
      SELF.itot := NULL;
      SELF.iextra := NULL;
      SELF.ipago := NULL;
      SELF.iahorro := NULL;
      SELF.cerror := NULL;
      SELF.fbaja := NULL;
      SELF.falta := NULL;
      SELF.ftrans := NULL;
      SELF.cusualta := NULL;
      SELF.corigen := NULL;
      SELF.torigen := NULL;
      SELF.tdesacto := NULL;
      SELF.nremesa := NULL;   --BUG11285-XVM-02102009
      SELF.terror := NULL;
      -- BUG10704:DRA:14/07/2009:Inici
      SELF.ctipo := NULL;
      SELF.ttipo := NULL;
      SELF.ipagocomp := NULL;
      SELF.ftranscomp := NULL;
      SELF.nremesacomp := NULL;   --BUG11285-XVM-02102009
      -- BUG10704:DRA:14/07/2009:Fi
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_REEMBACTFACT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REEMBACTFACT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REEMBACTFACT" TO "PROGRAMADORESCSI";
