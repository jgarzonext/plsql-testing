--------------------------------------------------------
--  DDL for Type T_IAX_CUAFACUL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_IAX_CUAFACUL" AS TABLE OF ob_iax_cuafacul;
/******************************************************************************
   NOMBRE:    t_iax_cuacesfac
   PROPÓSITO:      coleccion del objeto ob_iax_cuacesfacul

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/06/2009   ETM                1. Creación del objeto.
                                                --BUG 10487 - 18/06/2009 - ETM - IAX : REA: Desarrollo PL del mantenimiento de Facultativo
   2.0        21/08/2012   AVT                2. 22374: LCOL_A004-Mantenimiento de facultativo - Fase 2
******************************************************************************/

/

  GRANT EXECUTE ON "AXIS"."T_IAX_CUAFACUL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_IAX_CUAFACUL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_IAX_CUAFACUL" TO "PROGRAMADORESCSI";
