--------------------------------------------------------
--  DDL for Type T_CONMUTADOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."T_CONMUTADOR" AS TABLE OF ob_conmutador;
/******************************************************************************
   NOMBRE:    T_CONMUTADOR
   PROPÓSITO:     Tabla de  Objetos para contener los datos de los conmutadores

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/05/2009   JRH                1. Creación del objeto.
******************************************************************************/
-- BUG 9889 - 04/2009 - JRH  - Cuadre de los datos del cierre de ABRIL

/

  GRANT EXECUTE ON "AXIS"."T_CONMUTADOR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."T_CONMUTADOR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."T_CONMUTADOR" TO "PROGRAMADORESCSI";
