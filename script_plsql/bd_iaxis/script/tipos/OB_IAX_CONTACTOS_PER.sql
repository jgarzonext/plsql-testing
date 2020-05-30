--------------------------------------------------------
--  DDL for Type OB_IAX_CONTACTOS_PER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CONTACTOS_PER" FORCE as object
(
/******************************************************************************
   NOMBRE:     OB_IAX_CONTACTOS_PER
   PROPÓSITO:  Contiene la información de la autorizacion de contactos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        03/01/2019   Swap                1. Creación del objeto.
******************************************************************************/
  telefo_Fijo              VARCHAR2(20),
  prefijo_Telefonico_Fijo  VARCHAR2(20),
  telefo_Movil             VARCHAR2(20),
  prefijo_Telefonico_Movil VARCHAR2(20),
  correo_Electranico       varchar2(200),
  fax                      VARCHAR2(200),
  prefijo_Telefonico_Fax   VARCHAR2(20),

  CONSTRUCTOR FUNCTION OB_IAX_CONTACTOS_PER RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CONTACTOS_PER" AS
/******************************************************************************
   NOMBRE:     OB_IAX_CONTACTOS_PER
   PROPÓSITO:  Contiene la información de la autorizacion de contactos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        03/01/2019   Swap                1. Creación del objeto.
******************************************************************************/
  -- MEMBER PROCEDURES AND FUNCTIONS
  CONSTRUCTOR FUNCTION OB_IAX_CONTACTOS_PER RETURN SELF AS RESULT IS
  BEGIN
    RETURN;
  END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTACTOS_PER" TO "AXIS00";
