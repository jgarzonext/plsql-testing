--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_DESTINATARIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_DESTINATARIO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_DESTINATARIO
   PROP�SITO:  Contiene la informaci�n del siniestro

   REVISIONES:
   Ver        Fecha       Autor             Descripci�n
   ---------  ----------  --------------  ------------------------------------
   1.0        17/02/2009  XPL             1. Creaci�n del objeto.
   2.0        15/06/2010  JRH             2. 0014185 ENSA101 - Proceso de carga del fichero (beneficio definido)
   3.0        30/10/2010  JRH             3. BUG 15669 : Campos nuevos
   4.0        21-10-2011  JGR             4. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --N�mero Siniestro
   ntramit        NUMBER(3),   --N�mero Tramitaci�n Siniestro
--   sperson        NUMBER(6),   --NUm. identificativo destinatario
--   nnumide        VARCHAR2(14),   --N�mero documento
--   tdestinatario  VARCHAR2(200),   --Nombre Destinatario
   ctipdes        NUMBER(2),   --C�digo Tipo Destinatario
   ttipdes        VARCHAR2(100),   --des tipo destinatario
   cpagdes        NUMBER(1),   --Indicador aceptaci�n pagos
   cactpro        NUMBER(4),   --C�digo Actividad Profesional
   ctipban        NUMBER(3),   --C�digo Tipo Cuenta Bancaria para pagos autom�ticos
   cbancar        VARCHAR2(50),   --C�digo Cuenta Bancaria para pagos autom�ticos
   tactpro        VARCHAR2(100),   --Des Actividad Profesional
   pasigna        NUMBER(5, 2),   --asignaci�n
   cpaisre        NUMBER(3),   --c�digo pa�s residencia
   tpaisre        VARCHAR2(100),   --descripci�n pa�s
   cusualt        VARCHAR2(20),   --C�digo Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --C�digo Usuario Modificaci�n
   fmodifi        DATE,   --Fecha Modificaci�n
   persona        ob_iax_personas,   --persona destinataria
   -- Bug 0014185 - JRH - 15/06/2010 - Alta Siniestro
   ctipcap        NUMBER(1),   --tipo prestacion
   -- Fi Bug 0014185 - JRH - 15/06/2010

   -- Bug 0015669 - JRH - 30/09/2010 - Alta prestaciones
   ttipcap        VARCHAR2(50),   --  Descripci�n forma pago prestaci�n
   crelase        NUMBER(1),   --   Relaci�n con asegurado
   trelase        VARCHAR2(50),   --   Descripci�n relaci�n con asegurado
   t_prestaren    t_iax_sin_prestaren,   --Prestaci�n
   -- Fi Bug 0015669 - JRH - 30/09/2010
   sprofes        NUMBER,   --Bug 24637/147756:NSS:26/02/2014
   cprovin        NUMBER(3),   -- SHA -- Bug 38224/216445 --11/11/2015
   tprovin        VARCHAR2(100),   -- SHA -- Bug 38224/216445 --11/11/2015
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_destinatario
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_DESTINATARIO" AS
/******************************************************************************
   NOMBRE:      OB_IAX_SIN_TRAMI_DESTINATARIO
   PROP�SITO: Funciones para la gesti�n de la carga de procesos

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/05/2010   ???              1. Creaci�n del package.
   2.0        15/06/2010   JRH              2. 0014185 ENSA101 - Proceso de carga del fichero (beneficio definido)
   3.0        30/10/2010   JRH               3. BUG 15669 : Campos nuevos
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_destinatario
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      -- Bug 0014185 - JRH - 15/06/2010 - Nuevo campo (tipo prestaci�n)
      SELF.ctipcap := NULL;
      -- Fi Bug 0014185 - JRH - 15/06/2010

      -- Bug 0015669 - JRH - 30/09/2010 - Alta prestaciones
      SELF.crelase := NULL;
      SELF.ttipcap := NULL;   --  Descripci�n forma pago prestaci�n
      SELF.crelase := NULL;   --   Relaci�n con asegurado
      SELF.trelase := NULL;   --  Descripci�n relaci�n con asegurado
      t_prestaren := NULL;   --Prestaci�nes
      -- Fi Bug 0015669 - JRH - 30/09/2010
      SELF.persona := ob_iax_personas();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DESTINATARIO" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DESTINATARIO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DESTINATARIO" TO "R_AXIS";
