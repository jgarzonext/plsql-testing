--------------------------------------------------------
--  DDL for Type T_IAX_CUACESFAC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_IAX_CUACESFAC" AS TABLE OF ob_iax_cuacesfac;
/******************************************************************************
   NOMBRE:    t_iax_cuacesfac
   PROPÓSITO:      coleccion del objeto ob_iax_cuacesfac

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/06/2009   ETM                1. Creación del objeto
                                              --BUG 10487 - 18/06/2009 - ETM - IAX : REA: Desarrollo PL del mantenimiento de Facultativo
   2.0        21/08/2012   AVT                2. 22374: LCOL_A004-Mantenimiento de facultativo - Fase 2
   3.0        26/01/2020   INFORCOL           3. Se recrea nuevamente el Type por actualizacion en object ob_iax_cuacesfac
******************************************************************************/

/

  GRANT EXECUTE ON "AXIS"."T_IAX_CUACESFAC" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_IAX_CUACESFAC" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_IAX_CUACESFAC" TO "PROGRAMADORESCSI";
