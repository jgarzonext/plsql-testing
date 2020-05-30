--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_DESTINATARIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_DESTINATARIO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_DESTINATARIO
   PROPÓSITO:  Contiene la información del siniestro

   REVISIONES:
   Ver        Fecha       Autor             Descripción
   ---------  ----------  --------------  ------------------------------------
   1.0        17/02/2009  XPL             1. Creación del objeto.
   2.0        15/06/2010  JRH             2. 0014185 ENSA101 - Proceso de carga del fichero (beneficio definido)
   3.0        30/10/2010  JRH             3. BUG 15669 : Campos nuevos
   4.0        21-10-2011  JGR             4. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --Número Siniestro
   ntramit        NUMBER(3),   --Número Tramitación Siniestro
--   sperson        NUMBER(6),   --NUm. identificativo destinatario
--   nnumide        VARCHAR2(14),   --Número documento
--   tdestinatario  VARCHAR2(200),   --Nombre Destinatario
   ctipdes        NUMBER(2),   --Código Tipo Destinatario
   ttipdes        VARCHAR2(100),   --des tipo destinatario
   cpagdes        NUMBER(1),   --Indicador aceptación pagos
   cactpro        NUMBER(4),   --Código Actividad Profesional
   ctipban        NUMBER(3),   --Código Tipo Cuenta Bancaria para pagos automáticos
   cbancar        VARCHAR2(50),   --Código Cuenta Bancaria para pagos automáticos
   tactpro        VARCHAR2(100),   --Des Actividad Profesional
   pasigna        NUMBER(5, 2),   --asignación
   cpaisre        NUMBER(3),   --código país residencia
   tpaisre        VARCHAR2(100),   --descripción país
   cusualt        VARCHAR2(20),   --Código Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --Código Usuario Modificación
   fmodifi        DATE,   --Fecha Modificación
   persona        ob_iax_personas,   --persona destinataria
   -- Bug 0014185 - JRH - 15/06/2010 - Alta Siniestro
   ctipcap        NUMBER(1),   --tipo prestacion
   -- Fi Bug 0014185 - JRH - 15/06/2010

   -- Bug 0015669 - JRH - 30/09/2010 - Alta prestaciones
   ttipcap        VARCHAR2(50),   --  Descripción forma pago prestación
   crelase        NUMBER(1),   --   Relación con asegurado
   trelase        VARCHAR2(50),   --   Descripción relación con asegurado
   t_prestaren    t_iax_sin_prestaren,   --Prestación
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
   PROPÓSITO: Funciones para la gestión de la carga de procesos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/05/2010   ???              1. Creación del package.
   2.0        15/06/2010   JRH              2. 0014185 ENSA101 - Proceso de carga del fichero (beneficio definido)
   3.0        30/10/2010   JRH               3. BUG 15669 : Campos nuevos
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_destinatario
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      -- Bug 0014185 - JRH - 15/06/2010 - Nuevo campo (tipo prestación)
      SELF.ctipcap := NULL;
      -- Fi Bug 0014185 - JRH - 15/06/2010

      -- Bug 0015669 - JRH - 30/09/2010 - Alta prestaciones
      SELF.crelase := NULL;
      SELF.ttipcap := NULL;   --  Descripción forma pago prestación
      SELF.crelase := NULL;   --   Relación con asegurado
      SELF.trelase := NULL;   --  Descripción relación con asegurado
      t_prestaren := NULL;   --Prestaciónes
      -- Fi Bug 0015669 - JRH - 30/09/2010
      SELF.persona := ob_iax_personas();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DESTINATARIO" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DESTINATARIO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DESTINATARIO" TO "R_AXIS";
