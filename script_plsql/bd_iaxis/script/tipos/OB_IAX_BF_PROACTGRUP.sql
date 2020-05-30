--------------------------------------------------------
--  DDL for Type OB_IAX_BF_PROACTGRUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_PROACTGRUP" AS OBJECT
/******************************************************************************
   NOMBRE:               OB_IAX_BF_PROACTGRUP
   PROPÓSITO:  Contiene la información de los grupos por producto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creación del objeto.
******************************************************************************/
(
   cempres        NUMBER,   --    Código de Empresa
   sproduc        NUMBER,   --    Código del Producto
   cactivi        NUMBER,   --    Código de Actividad
   ffecini        DATE,   --Fecha inicio registro
   cgrup          NUMBER,   --    Código de Grupo de Bonus/Franquícias
   cobliga        VARCHAR2(1),   --    Indica si es obligatorio un nivel para la póliza
   cformulasub    NUMBER,   --    Clave SGT_FORMULAS para determinar el Subgrupo
   csubgrupunic   NUMBER,   --    Código de Subgrupo cuando es único y no hay CFORMULA
   norden         NUMBER,   --        Orden visualización
   teccontra      VARCHAR2(1),   --        T = Bloque Técnico; C = Contratable
   ffecfin        DATE,   --    Fecha fin registro
   formuladefecto NUMBER,   --formula que nos dice el nivel por defecto  a mostrar
   garantias      t_iax_bf_progarangrup,
   grupo          ob_iax_bf_codgrup,
   lniveles       t_iax_bf_detnivel,   --combo valores
   franqcontratada ob_iax_bonfranseg,
   CONSTRUCTOR FUNCTION ob_iax_bf_proactgrup
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BF_PROACTGRUP" AS
   CONSTRUCTOR FUNCTION ob_iax_bf_proactgrup
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_PROACTGRUP" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_PROACTGRUP" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BF_PROACTGRUP" TO "PROGRAMADORESCSI";
