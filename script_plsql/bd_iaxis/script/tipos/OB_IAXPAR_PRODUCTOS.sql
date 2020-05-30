--------------------------------------------------------
--  DDL for Type OB_IAXPAR_PRODUCTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAXPAR_PRODUCTOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAXPAR_PRODUCTOS
   PROPÓSITO:  Contiene la información del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2007   ACC                1. Creación del objeto.
******************************************************************************/
(

    sproduc NUMBER,                   --Secuencia del producto
    cramo   NUMBER,                   --Código ramo
    cmodali NUMBER,                   --Código modalidad
    ctipseg NUMBER,                   --Código tipo de seguro
    ccolect NUMBER,                   --Código de colectividad
    ctiprie NUMBER,                   --Codigo tipo de riesgo
    csubpro NUMBER,                   --Código de subtipo de producto
    cobjase NUMBER,                   --Código de objeto asegurado
    crevali NUMBER,                   --Código de revalorización
    cdivisa NUMBER,                   --Código de Divisa
    descripcion VARCHAR2(50),         --Descripción producto

    actividades t_iaxpar_actividades, --Lista actividades
    preguntas t_iaxpar_preguntas,     --Preguntas riesgos
    clausulas t_iaxpar_clausulas,     --Clausulas

    CONSTRUCTOR FUNCTION OB_IAXPAR_PRODUCTOS RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAXPAR_PRODUCTOS" AS

    CONSTRUCTOR FUNCTION OB_IAXPAR_PRODUCTOS RETURN SELF AS RESULT IS
    BEGIN
        SELF.sproduc     := 0;
        SELF.cramo       := 0;
        SELF.cmodali     := 0;
        SELF.ctipseg     := 0;
        SELF.ccolect     := 0;
        SELF.ctiprie     := 0;
        SELF.csubpro     := 0;
        SELF.cobjase     := 0;
        SELF.crevali     := 0;
        SELF.cdivisa     := 0;
        SELF.descripcion := 0;
        SELF.actividades := null;
        SELF.preguntas   := null;
        SELF.clausulas   := null;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_PRODUCTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_PRODUCTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAXPAR_PRODUCTOS" TO "PROGRAMADORESCSI";
