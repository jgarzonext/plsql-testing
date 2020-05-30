--------------------------------------------------------
--  DDL for Type OB_IAX_MNTTABLAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_MNTTABLAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_MNTTABLAS
   PROPÓSITO:    Contiene la información de la tabla que se debe guardar en
                 la base de datos, a su vez contenddrá una colección con los
                 registros de la tabla
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/03/2008   JCA                1. Creación del objeto.

******************************************************************************/
(
    ctabla        number(8),            --Identificador de la tabla
    ttabla        varchar2(50),         --Nombre de la tabla
    tabdetalle    varchar2(50),         --Nombre de la tabla detalle
    relacion      varchar2(500),        --Lista de campos relación tabla principal con la de detalle separados por ;
    registros     T_IAX_MNTREGISTROS,    -- colección de registros a modificar

    CONSTRUCTOR FUNCTION OB_IAX_MNTTABLAS RETURN SELF AS RESULT);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_MNTTABLAS" AS

    CONSTRUCTOR FUNCTION OB_IAX_MNTTABLAS RETURN SELF AS RESULT IS
    BEGIN
        SELF.ctabla        := NULL;
        SELF.ttabla        := NULL;
        SELF.tabdetalle    := NULL;
        SELF.relacion      := NULL;
        SELF.registros     := NULL;

        RETURN;
    END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_MNTTABLAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MNTTABLAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MNTTABLAS" TO "PROGRAMADORESCSI";
