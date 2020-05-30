--------------------------------------------------------
--  DDL for Type OB_IAX_POLIZA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_POLIZA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_POLIZA
   PROPÓSITO:  Contiene la información de la póliza

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/08/2007   ACC                1. Creación del objeto.
   2.0        02/08/2007   ACC                2. Añadir procedimientos limpieza
******************************************************************************/
(
  det_poliza   OB_IAX_DETPOLIZA,    --Detalle de la póliza
  mensajes     T_IAX_MENSAJES,      --Colección mensajes error

  -- Establece un nuevo mensaje
  MEMBER PROCEDURE Set_Mensaje(mensaje OB_IAX_MENSAJES),

  -- Establece en la collección de mensajes los nuevos
  MEMBER PROCEDURE Add_Mensajes(mensajes T_IAX_MENSAJES),

  -- Limpia colección mensajes
  MEMBER PROCEDURE ClearMensajes,

  -- Limpia detalle póliza
  MEMBER PROCEDURE ClearDetPoliza,

  CONSTRUCTOR FUNCTION OB_IAX_POLIZA RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_POLIZA" AS

    CONSTRUCTOR FUNCTION OB_IAX_POLIZA RETURN SELF AS RESULT IS
    BEGIN
        SELF.det_poliza:=null;
        SELF.mensajes:=null;
        RETURN ;
    END;

    -- Establece un nuevo mensaje
    MEMBER PROCEDURE Set_Mensaje(mensaje OB_IAX_MENSAJES) IS
    BEGIN
        IF SELF.mensajes is null THEN
            SELF.mensajes:= T_IAX_MENSAJES();
        END IF;

        SELF.mensajes.extend;
        SELF.mensajes(self.mensajes.last):= mensaje;
    END;

    -- Establece en la collección de mensajes los nuevos
    MEMBER PROCEDURE Add_Mensajes(mensajes T_IAX_MENSAJES) IS
    BEGIN
        IF mensajes is not null THEN
            IF mensajes.count>0 THEN
                FOR i IN mensajes.first..mensajes.last LOOP
                    Set_Mensaje(mensajes(i));
                END LOOP;
            END IF;
        END IF;
    END;

    -- Limpia colección mensajes
    MEMBER PROCEDURE ClearMensajes IS
    BEGIN

        SELF.mensajes:=null;
    END;

    -- Limpia detalle póliza
    MEMBER PROCEDURE ClearDetPoliza IS
    BEGIN

        SELF.DET_POLIZA:=NULL;
    END;


END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_POLIZA" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_POLIZA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_POLIZA" TO "R_AXIS";
