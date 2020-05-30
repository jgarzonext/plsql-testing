--------------------------------------------------------
--  DDL for Procedure PLANES_FICHERO_CONTAB
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."PLANES_FICHERO_CONTAB" ( grupo1 IN NUMBER , grupo2 IN NUMBER, desde IN DATE, hasta IN DATE ) is
begin
pk_planespens.agrupacion1 := grupo1;
pk_planespens.agrupacion2 := grupo2;
pk_planespens.fecha_desde := DESDE;
pk_planespens.fecha_hasta := HASTA;
taut(2001,1,'PLANESPENS',1);
end planes_fichero_contab;

 
 

/

  GRANT EXECUTE ON "AXIS"."PLANES_FICHERO_CONTAB" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PLANES_FICHERO_CONTAB" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PLANES_FICHERO_CONTAB" TO "PROGRAMADORESCSI";
