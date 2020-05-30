--------------------------------------------------------
--  DDL for Type OB_IAX_REEMBOLSOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_REEMBOLSOS" AS OBJECT
/******************************************************************************
   NOM:      PAC_IAX_REEMBOLSOS
   PROPÓSIT: Capa IAX

   REVISIONS:
   Ver        Data        Autor  Descripció
   ---------  ----------  -----  ------------------------------------
   1.0        14/08/2008  XVILA  Creación del package.
   2.0        05/05/2009  SBG    Nous params. a f_set_consultareemb i f_calcacto (Bug 8309)
   3.0        03/07/2009  DRA    3. 0010631: CRE - Modificaciónes modulo de reembolsos
   4.0        01/07/2009  NMM    4. 10682: CRE - Modificaciones para módulo de reembolsos ( ncertif)
   5.0        11/03/2010  DRA    5. 0012676: CRE201 - Consulta de reembolsos - Ocultar descripción de Acto y otras mejoras
   6.0        31/01/2010  DRA    6. 0016576: AGA602 - Parametrització de reemborsaments per veterinaris
   7.0        24/02/2011  DRA    7. 0017732: CRE998 - Modificacions mòdul reemborsaments
   8.0        21-10-2011  JGR    8. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
   9.0        01/07/2013  RCL  9. 0024697: LCOL_T031-Tamaño del campo SSEGURO
   10.0       04/10/2013  DEV    10. 0028462: LCOL_T001-Cambio dimensi?n iAxis
******************************************************************************/
(
   nreemb         NUMBER(8),   --Número reembolso
   sseguro        NUMBER,   --Id. del seguro
   nriesgo        NUMBER(6),   --Número de riesgo
   cgarant        NUMBER(6),   --Código garantía
   agr_salud      VARCHAR2(20),   --Agrupación de producto
   desagr_salud   VARCHAR2(100),   --Descripción de Agrupación de producto
   sperson        NUMBER(10),   --Id. persona
   cestado        NUMBER(2),   --Valor fijo "Estado del reembolso"
   festado        DATE,   --Fecha estado
   tobserv        VARCHAR2(2000),   --Observaciones
   cbancar        VARCHAR2(50),   --Cuenta de abono del reembolso
   ctipban        NUMBER,   --Tipo de cuenta bancaria
   falta          DATE,   --Fecha alta
   cusualta       VARCHAR2(20),   --Usuario de alta
   corigen        NUMBER(2),   --Valor Fijo "Origen"
   torigen        VARCHAR2(100),   --Descripción del origen
   testado        VARCHAR2(100),   --Descripción del estado
   tproducto      VARCHAR2(1000),   --Descripción de la combinación producto+garantía -- BUG12676:DRA:11/03/2010
   ncass          VARCHAR2(20),   --Nº de CASS del titular (prenedor)
   ncass_ase      VARCHAR2(20),   --Nº de CASS del malalt (risc)
   nombre_aseg    VARCHAR2(100),   --Nombre Asegurado
   nombre_tom     VARCHAR2(100),   --Nombre Tomador
   coficina       NUMBER,   --Oficina
   npoliza        NUMBER,   --Número de póliza
   facturas       t_iax_reembfact,   --Facturas de un reembolso
   ncertif        NUMBER,   -- Numero de certificat -- Bug 28462 - 04/10/2013 - DEV - la precisión debe ser NUMBER
   sproduc        NUMBER(6),   -- BUG16576:DRA:31/01/2011
   cbanhosp       NUMBER(1),   -- UTILIZA LA CCC DEL PAREMPRESA.CBANCAR_HOSP -- BUG17732:DRA:24/02/2011
   CONSTRUCTOR FUNCTION ob_iax_reembolsos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_REEMBOLSOS" AS
   /******************************************************************************
      NOMBRE:     OB_IAX_REEMBOLSOS
      PROPÓSITO:  Contiene la información correspondiente a la cabecera de un reembolso.

      REVISIONES:
      Ver        Fecha       Autor            Descripción
      ---------  ----------  ---------------  ------------------------------------
      1.0        14/08/2008  XVILA            1. Creación del objeto.
      2.0        02/12/2008  SBOU             2. S'inclou NCASS_MALALT.
      3.0        01/07/2009  NMM              3. S'afegeix numero certificat.
      4.0        31/01/2010  DRA              4. 0016576: AGA602 - Parametrització de reemborsaments per veterinaris
      5.0        24/02/2011  DRA              5. 0017732: CRE998 - Modificacions mòdul reemborsaments
   ******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_reembolsos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nreemb := NULL;
      SELF.sseguro := NULL;
      SELF.nriesgo := NULL;
      SELF.cgarant := NULL;
      SELF.agr_salud := NULL;
      SELF.desagr_salud := NULL;
      SELF.sperson := NULL;
      SELF.cestado := NULL;
      SELF.festado := NULL;
      SELF.tobserv := NULL;
      SELF.cbancar := NULL;
      SELF.ctipban := NULL;
      SELF.falta := NULL;
      SELF.cusualta := NULL;
      SELF.corigen := NULL;
      SELF.torigen := NULL;
      SELF.testado := NULL;
      SELF.tproducto := NULL;
      SELF.ncass := NULL;
      SELF.ncass_ase := NULL;
      SELF.nombre_aseg := NULL;
      SELF.nombre_tom := NULL;
      SELF.coficina := NULL;
      SELF.npoliza := NULL;
      SELF.facturas := NULL;
      SELF.ncertif := NULL;
      SELF.sproduc := NULL;   -- BUG16576:DRA:31/01/2011
      SELF.cbanhosp := NULL;   -- BUG17732:DRA:24/02/2011
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_REEMBOLSOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REEMBOLSOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REEMBOLSOS" TO "PROGRAMADORESCSI";
