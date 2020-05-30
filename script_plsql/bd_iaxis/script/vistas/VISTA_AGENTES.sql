--------------------------------------------------------
--  DDL for View VISTA_AGENTES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VISTA_AGENTES" ("CAGENTE", "CRETENC", "CTIPIVA", "SPERSON", "CCOMISI", "CTIPAGE", "CACTIVO", "CDOMICI", "CBANCAR", "NCOLEGI", "FBAJAGE", "CSOPREC", "CMEDIOP", "CCUACOA") AS 
  SELECT "CAGENTE","CRETENC","CTIPIVA","SPERSON","CCOMISI","CTIPAGE","CACTIVO","CDOMICI",
"CBANCAR","NCOLEGI","FBAJAGE","CSOPREC","CMEDIOP","CCUACOA" FROM AGENTES WHERE CAGENTE IN
 (SELECT unique cagente FROM redcomercial
   WHERE cempres in (select distinct cempres
	      from codiram cr, usu_prod up
	     where cusuari = F_USER and cr.cramo = up.cramo)
     AND cpadre is not null
  CONNECT BY cpadre  = prior cagente
         AND cempres = prior cempres
  START WITH cagente = (select cdelega from usuarios where cusuari=F_USER)
         AND cempres in (select distinct cempres
	      from codiram cr, usu_prod up
	     where cusuari = F_USER and cr.cramo = up.cramo))
 
 
;
  GRANT UPDATE ON "AXIS"."VISTA_AGENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_AGENTES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VISTA_AGENTES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VISTA_AGENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_AGENTES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VISTA_AGENTES" TO "PROGRAMADORESCSI";
