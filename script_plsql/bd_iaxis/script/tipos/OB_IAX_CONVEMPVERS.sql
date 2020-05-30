--------------------------------------------------------
--  DDL for Type OB_IAX_CONVEMPVERS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CONVEMPVERS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_CONVEMPVERS
   PROPÓSITO:  Contiene la información de una versión de convenio

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/02/2015   JRH                1. Creación del objeto.
   2.0        15/10/2015   AFM                2. Ampliar descripción a 400
******************************************************************************/
(
   idversion      NUMBER,   --   Identificador  de Convenio  Versión actual de la póliza (tabla CNV_CONV_EMP_VERS)
   idconv         NUMBER,   --   Identificador  de Convenio (Tabla CNV_CONV_EMP)
   tcodconv       VARCHAR2(20),   --   Código de Convenio (Tabla CNV_CONV_EMP)
   cestado        NUMBER,   -- Estado de convenio (Tabla CNV_CONV_EMP)
   cperfil        NUMBER,   -- Perfil de convenio (Tabla CNV_CONV_EMP)
   tdescri        VARCHAR2(400),   --   Descripción de Convenio (Tabla CNV_CONV_EMP)
   corganismo     NUMBER,   --  Organismo del Convenio (Tabla CNV_CONV_EMP)
   cvida          NUMBER,   --  Organismo del Convenio (Tabla CNV_CONV_EMP)
   nversion       NUMBER,   --  Número de Versión (Tabla CNV_CONV_EMP_VERS)
   cestadovers    NUMBER,   --  Estado de dicha Versión (Tabla CNV_CONV_EMP_VERS)
   nversion_ant   NUMBER,   -- Número de Versión Movimiento Anterior( para mostrar en suplementos Tabla CNV_CONV_EMP_VERS)
   testado        VARCHAR2(100),   --  Detvalores por idioma usuario de CESTADO del convenio.
   tperfil        VARCHAR2(100),   --  Detvalores por idioma usuario de CPERFIL.
   torganismo     VARCHAR2(100),   --   Detvalores por idioma usuario de CORGANISMO.
   testadovers    VARCHAR2(100),   --   Detvalores por idioma usuario de CESTADOVERS de la versión.
   tvida          VARCHAR2(100),   --Detvalores por idioma usuario de CVIDA de la versión.
   tobserv        VARCHAR2(2000),   -- Observaciones de la versión
   cpoliza        NUMBER,   -- Total de polizas
   CONSTRUCTOR FUNCTION ob_iax_convempvers
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CONVEMPVERS" AS
   CONSTRUCTOR FUNCTION ob_iax_convempvers
      RETURN SELF AS RESULT IS
/******************************************************************************
   NOMBRE:       OB_IAX_CONVEMPVERS
   PROPÓSITO:  Contiene la información de una versión de convenio

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/02/2015   JRH                1. Creación del objeto.
   2.0        13/07/2015   AQM                2. Adicionar columna
******************************************************************************/
   BEGIN
      idversion := NULL;   --   Identificador  de Convenio / Versión actual de la póliza (tabla CNV_CONV_EMP_VERS)
      idconv := NULL;   --   Identificador  de Convenio (Tabla CNV_CONV_EMP)
      tcodconv := NULL;   --   Código de Convenio (Tabla CNV_CONV_EMP)
      cestado := NULL;   -- Estado de convenio (Tabla CNV_CONV_EMP)
      cperfil := NULL;   -- Perfil de convenio (Tabla CNV_CONV_EMP)
      tdescri := NULL;   --   Descripción de Convenio (Tabla CNV_CONV_EMP)
      corganismo := NULL;   --  Organismo del Convenio (Tabla CNV_CONV_EMP)
      cvida := NULL;   --  Organismo del Convenio (Tabla CNV_CONV_EMP)
      nversion := NULL;   --  Número de Versión (Tabla CNV_CONV_EMP_VERS)
      cestadovers := NULL;   --  Estado de dicha Versión (Tabla CNV_CONV_EMP_VERS)
      nversion_ant := NULL;   -- Número de Versión Movimiento Anterior( para mostrar en suplementos Tabla CNV_CONV_EMP_VERS)
      testado := NULL;   --  Detvalores por idioma usuario de CESTADO del convenio.
      tperfil := NULL;   --  Detvalores por idioma usuario de CPERFIL.
      torganismo := NULL;   --   Detvalores por idioma usuario de CORGANISMO.
      testadovers := NULL;   --    Detvalores por idioma usuario de CESTADOVERS de la versión.
      tvida := NULL;   --Detvalores por idioma usuario de CVIDA de la versión.
      tobserv := NULL;   -- Observaciones de la versión
      cpoliza := NULL;   -- Total de polizas
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CONVEMPVERS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONVEMPVERS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONVEMPVERS" TO "PROGRAMADORESCSI";
