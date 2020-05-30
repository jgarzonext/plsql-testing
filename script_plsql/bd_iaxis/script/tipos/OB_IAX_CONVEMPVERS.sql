--------------------------------------------------------
--  DDL for Type OB_IAX_CONVEMPVERS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CONVEMPVERS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_CONVEMPVERS
   PROP�SITO:  Contiene la informaci�n de una versi�n de convenio

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/02/2015   JRH                1. Creaci�n del objeto.
   2.0        15/10/2015   AFM                2. Ampliar descripci�n a 400
******************************************************************************/
(
   idversion      NUMBER,   --   Identificador  de Convenio  Versi�n actual de la p�liza (tabla CNV_CONV_EMP_VERS)
   idconv         NUMBER,   --   Identificador  de Convenio (Tabla CNV_CONV_EMP)
   tcodconv       VARCHAR2(20),   --   C�digo de Convenio (Tabla CNV_CONV_EMP)
   cestado        NUMBER,   -- Estado de convenio (Tabla CNV_CONV_EMP)
   cperfil        NUMBER,   -- Perfil de convenio (Tabla CNV_CONV_EMP)
   tdescri        VARCHAR2(400),   --   Descripci�n de Convenio (Tabla CNV_CONV_EMP)
   corganismo     NUMBER,   --  Organismo del Convenio (Tabla CNV_CONV_EMP)
   cvida          NUMBER,   --  Organismo del Convenio (Tabla CNV_CONV_EMP)
   nversion       NUMBER,   --  N�mero de Versi�n (Tabla CNV_CONV_EMP_VERS)
   cestadovers    NUMBER,   --  Estado de dicha Versi�n (Tabla CNV_CONV_EMP_VERS)
   nversion_ant   NUMBER,   -- N�mero de Versi�n Movimiento Anterior( para mostrar en suplementos Tabla CNV_CONV_EMP_VERS)
   testado        VARCHAR2(100),   --  Detvalores por idioma usuario de CESTADO del convenio.
   tperfil        VARCHAR2(100),   --  Detvalores por idioma usuario de CPERFIL.
   torganismo     VARCHAR2(100),   --   Detvalores por idioma usuario de CORGANISMO.
   testadovers    VARCHAR2(100),   --   Detvalores por idioma usuario de CESTADOVERS de la versi�n.
   tvida          VARCHAR2(100),   --Detvalores por idioma usuario de CVIDA de la versi�n.
   tobserv        VARCHAR2(2000),   -- Observaciones de la versi�n
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
   PROP�SITO:  Contiene la informaci�n de una versi�n de convenio

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/02/2015   JRH                1. Creaci�n del objeto.
   2.0        13/07/2015   AQM                2. Adicionar columna
******************************************************************************/
   BEGIN
      idversion := NULL;   --   Identificador  de Convenio / Versi�n actual de la p�liza (tabla CNV_CONV_EMP_VERS)
      idconv := NULL;   --   Identificador  de Convenio (Tabla CNV_CONV_EMP)
      tcodconv := NULL;   --   C�digo de Convenio (Tabla CNV_CONV_EMP)
      cestado := NULL;   -- Estado de convenio (Tabla CNV_CONV_EMP)
      cperfil := NULL;   -- Perfil de convenio (Tabla CNV_CONV_EMP)
      tdescri := NULL;   --   Descripci�n de Convenio (Tabla CNV_CONV_EMP)
      corganismo := NULL;   --  Organismo del Convenio (Tabla CNV_CONV_EMP)
      cvida := NULL;   --  Organismo del Convenio (Tabla CNV_CONV_EMP)
      nversion := NULL;   --  N�mero de Versi�n (Tabla CNV_CONV_EMP_VERS)
      cestadovers := NULL;   --  Estado de dicha Versi�n (Tabla CNV_CONV_EMP_VERS)
      nversion_ant := NULL;   -- N�mero de Versi�n Movimiento Anterior( para mostrar en suplementos Tabla CNV_CONV_EMP_VERS)
      testado := NULL;   --  Detvalores por idioma usuario de CESTADO del convenio.
      tperfil := NULL;   --  Detvalores por idioma usuario de CPERFIL.
      torganismo := NULL;   --   Detvalores por idioma usuario de CORGANISMO.
      testadovers := NULL;   --    Detvalores por idioma usuario de CESTADOVERS de la versi�n.
      tvida := NULL;   --Detvalores por idioma usuario de CVIDA de la versi�n.
      tobserv := NULL;   -- Observaciones de la versi�n
      cpoliza := NULL;   -- Total de polizas
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CONVEMPVERS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONVEMPVERS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONVEMPVERS" TO "PROGRAMADORESCSI";
