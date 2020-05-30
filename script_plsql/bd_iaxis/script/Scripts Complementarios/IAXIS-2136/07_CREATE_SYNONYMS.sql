/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script crea sinonimos y grants para las nuevas tablas         
********************************************************************************************************************** */

create or replace synonym AXIS00.TEXTO_JSPR for AXIS.TEXTO_JSPR;
/
  
grant select,update,delete, insert on TEXTO_JSPR to R_AXIS;
/

create or replace synonym AXIS00.PRODUCTO_TEXTO_JSPR for AXIS.PRODUCTO_TEXTO_JSPR;
/
  
grant select,update,delete, insert on PRODUCTO_TEXTO_JSPR to R_AXIS;
/

create or replace synonym AXIS00.FORMATO_PLANILLA for AXIS.FORMATO_PLANILLA;
/
  
grant select,update,delete, insert on FORMATO_PLANILLA to R_AXIS;
/
