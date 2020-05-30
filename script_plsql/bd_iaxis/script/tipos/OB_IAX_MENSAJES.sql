--------------------------------------------------------
--  DDL for Type OB_IAX_MENSAJES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_MENSAJES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_MENSAJES
   PROPÓSITO:  Contiene la información de los mensajes de error

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC                1. Creación del objeto.
******************************************************************************/
(
    tiperror NUMBER,        -- Tipo error (1 error / 2 info)
    cerror NUMBER(8),       -- Código error
    terror varchar2(4000),   -- Descripción
    --Establece el mensaje error
    MEMBER PROCEDURE Set_Mensaje( tiperror NUMBER, cerror NUMBER, terror varchar2),
    CONSTRUCTOR FUNCTION OB_IAX_MENSAJES RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_MENSAJES" AS

    CONSTRUCTOR FUNCTION OB_IAX_MENSAJES RETURN SELF AS RESULT IS
    BEGIN
        SELF.tiperror:=0;
        SELF.cerror:=0;
        SELF.terror:=0;
        RETURN;
    END;

    -- Establece el mensaje de error
    MEMBER PROCEDURE Set_Mensaje( tiperror NUMBER, cerror NUMBER, terror varchar2) IS
    BEGIN
        SELF.tiperror:=tiperror;
        SELF.cerror:=cerror;
        SELF.terror:=terror;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_MENSAJES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MENSAJES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MENSAJES" TO "PROGRAMADORESCSI";
