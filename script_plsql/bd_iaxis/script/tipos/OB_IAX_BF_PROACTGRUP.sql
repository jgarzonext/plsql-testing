--------------------------------------------------------
--  DDL for Type OB_IAX_BF_PROACTGRUP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BF_PROACTGRUP" AS OBJECT
/******************************************************************************
   NOMBRE:               OB_IAX_BF_PROACTGRUP
   PROP�SITO:  Contiene la informaci�n de los grupos por producto

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creaci�n del objeto.
******************************************************************************/
(
   cempres        NUMBER,   --    C�digo de Empresa
   sproduc        NUMBER,   --    C�digo del Producto
   cactivi        NUMBER,   --    C�digo de Actividad
   ffecini        DATE,   --Fecha inicio registro
   cgrup          NUMBER,   --    C�digo de Grupo de Bonus/Franqu�cias
   cobliga        VARCHAR2(1),   --    Indica si es obligatorio un nivel para la p�liza
   cformulasub    NUMBER,   --    Clave SGT_FORMULAS para determinar el Subgrupo
   csubgrupunic   NUMBER,   --    C�digo de Subgrupo cuando es �nico y no hay CFORMULA
   norden         NUMBER,   --        Orden visualizaci�n
   teccontra      VARCHAR2(1),   --        T = Bloque T�cnico; C = Contratable
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
