--------------------------------------------------------
--  DDL for Type OB_IAX_PSU_RETENIDAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PSU_RETENIDAS" AS OBJECT(
   sseguro        NUMBER,   -- Identificativo Seguros
   nmovimi        NUMBER,   -- Movimiento de Movseguro
   fmovimi        DATE,   -- Fecha Movseguro
   cmotret        NUMBER,   -- 0: Autorizada, 1: Pendiente Continuar, 2: Pendiente Autorizar, 3: Bloqueada, 4: Rechazada, 5: No Aplica por Cambio
   tmotret        VARCHAR2(200),   -- Descripci¿n mot ret
   cnivelbpm      NUMBER,   -- Nivel del usuario a los cuales se les enviar¿ la incidencia PSU*/
   tnivelbpm      VARCHAR2(1000),   -- Descripci¿n
   cusuret        VARCHAR2(20),   -- Usuario grabadorYes
   tusuret        VARCHAR2(1000),   -- Nombre usuario
   ffecret        DATE,   -- Fecha retenci¿n
   cusuaut        VARCHAR2(20),   -- Usuario autoriza/rechaza
   tusuaut        VARCHAR2(1000),   -- Nombre usuario
   ffecaut        DATE,   -- Fecha autorizaci¿n/rechazo
   observ         VARCHAR2(2000),   -- Observaciones
   cestpol        NUMBER,   -- Estado p¿liza
   testpol        VARCHAR2(200),   -- Descripci¿n estado
   nocontinua     NUMBER,   -- No deja emitir
   ccritico       NUMBER,
   postpper       VARCHAR2(100),
   perpost        NUMBER,
   perpost_desc   VARCHAR2(124),
   cdetmotrec     NUMBER(6),
   cdetmotrec_desc VARCHAR2(124),
   nversion       NUMBER (4),
   csubestado     NUMBER (4),
   tsubestado     VARCHAR2(500),
   tpsu           t_iax_psu,
   enfermedades   t_iax_enfermedades_base,
   CONSTRUCTOR FUNCTION ob_iax_psu_retenidas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PSU_RETENIDAS" AS
   CONSTRUCTOR FUNCTION ob_iax_psu_retenidas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PSU_RETENIDAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PSU_RETENIDAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PSU_RETENIDAS" TO "PROGRAMADORESCSI";
