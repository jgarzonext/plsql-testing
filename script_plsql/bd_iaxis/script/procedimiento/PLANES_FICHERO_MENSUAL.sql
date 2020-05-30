--------------------------------------------------------
--  DDL for Procedure PLANES_FICHERO_MENSUAL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."PLANES_FICHERO_MENSUAL" ( grupo1 IN NUMBER , grupo2 IN NUMBER, fecha IN DATE ) is
begin
pk_planesmes.agrupacion1 := grupo1;
pk_planesmes.agrupacion2 := grupo2;
pk_planesmes.agrupafecha := fecha;
taut(2001,1,'PLANESMES',1);
end planes_fichero_mensual;

 
 

/

  GRANT EXECUTE ON "AXIS"."PLANES_FICHERO_MENSUAL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PLANES_FICHERO_MENSUAL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PLANES_FICHERO_MENSUAL" TO "PROGRAMADORESCSI";
