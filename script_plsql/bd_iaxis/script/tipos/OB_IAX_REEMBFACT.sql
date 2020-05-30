--------------------------------------------------------
--  DDL for Type OB_IAX_REEMBFACT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_REEMBFACT" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_REEMBFACT
   PROP�SITO:  Contiene la informaci�n correspondiente a las facturas de un reembolso.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/08/2008   XVILA            1. Creaci�n del objeto.
   2.0        03/07/2009   DRA              2. 0010631: CRE - Modificaci�nes modulo de reembolsos
   3.0        14/07/2009   DRA              3. 0010704: CRE - Traspaso de facturas para reembolso con mismo N� Hoja CASS
   4.0        24/02/2011   DRA              4. 0017732: CRE998 - Modificacions m�dul reemborsaments
******************************************************************************/
(
   nreemb         NUMBER(8),   --N�mero reembolso
   nfact          NUMBER(8),   --N�mero de factura interno
   nfact_cli      VARCHAR2(20),   --N�mero de factura proveedor
   ncass_ase      VARCHAR2(20),   --N�mero CASS del asegurado
   ncass          VARCHAR2(20),   --N�mero de CASS del riesgo-asegurado
   facuse         DATE,   --Fecha recepci�n factura
   ffactura       DATE,   --Fecha factura
   fbaja          DATE,   --Fecha de baja de la factura
   cusualta       VARCHAR2(20),   --Usuario de alta
   impfact        NUMBER,   --NUMBER(13, 2),   --Importe factura
   falta          DATE,   --Fecha alta
   corigen        NUMBER(2),   --Valor Fijo "Origen"
   torigen        VARCHAR2(100),   --Descripcion "origen" VF-893
   nfactext       VARCHAR2(25),   -- N�mero de Factura externa   -- BUG10631:DRA:03/07/2009
   -- BUG10704:DRA:14/07/2009:Inici
   ctipofac       NUMBER(1),   -- 0 -> Complementaria , 1 -> Ordinaria
   ttipofac       VARCHAR2(100),   -- Descripci�n ctipofac
   cimpresion     VARCHAR2(1),   -- S -> Si , N -> No
   ctractat       NUMBER(1),   --> 0 No, 1 S�   -- BUG17732:DRA:24/02/2011
   -- BUG10704:DRA:14/07/2009:Fi
   actos          t_iax_reembactfact,   --Actos asociados a una factura
   CONSTRUCTOR FUNCTION ob_iax_reembfact
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_REEMBFACT" AS
/******************************************************************************
   NOMBRE:     OB_IAX_REEMBFACT
   PROP�SITO:  Contiene la informaci�n correspondiente a las facturas de un reembolso.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/08/2008   XVILA            1. Creaci�n del objeto.
   2.0        03/07/2009   DRA              2. 0010631: CRE - Modificaci�nes modulo de reembolsos
   3.0        14/07/2009   DRA              3. 0010704: CRE - Traspaso de facturas para reembolso con mismo N� Hoja CASS
   4.0        24/02/2011   DRA              4. 0017732: CRE998 - Modificacions m�dul reemborsaments
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_reembfact
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nreemb := NULL;
      SELF.nfact := NULL;
      SELF.nfact_cli := NULL;
      SELF.ncass_ase := NULL;
      SELF.ncass := NULL;
      SELF.facuse := NULL;
      SELF.ffactura := NULL;
      SELF.fbaja := NULL;
      SELF.cusualta := NULL;
      SELF.impfact := NULL;
      SELF.falta := NULL;
      SELF.corigen := NULL;
      SELF.torigen := NULL;
      SELF.nfactext := NULL;   -- BUG10631:DRA:03/07/2009
      SELF.actos := NULL;
      -- BUG10704:DRA:14/07/2009:Inici
      SELF.ctipofac := NULL;
      SELF.ttipofac := NULL;
      SELF.cimpresion := NULL;
      -- BUG10704:DRA:14/07/2009:Fi
      SELF.ctractat := NULL;   -- BUG17732:DRA:24/02/2011
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_REEMBFACT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REEMBFACT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REEMBFACT" TO "PROGRAMADORESCSI";
