--------------------------------------------------------
--  DDL for View VISTA_MOVSEGURO
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VISTA_MOVSEGURO" ("SSEGURO", "NMOVIMI", "CMOTMOV", "FMOVIMI", "CMOVSEG", "FEFECTO", "FCONTAB", "CIMPRES", "CANUEXT", "NSUPLEM", "NMESVEN", "NANYVEN", "NCUACOA", "FEMISIO", "CUSUMOV", "CUSUEMI", "CDOMPER") AS 
  SELECT "SSEGURO","NMOVIMI","CMOTMOV","FMOVIMI","CMOVSEG","FEFECTO","FCONTAB","CIMPRES","CANUEXT","NSUPLEM","NMESVEN","NANYVEN","NCUACOA","FEMISIO","CUSUMOV","CUSUEMI","CDOMPER" FROM movseguro where sseguro in
( SELECT sseguro FROM segurosredcom sr, usuarios u
  WHERE u.cusuari = F_USER AND sr.cagente = u.cdelega )
 
 
;
  GRANT UPDATE ON "AXIS"."VISTA_MOVSEGURO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_MOVSEGURO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VISTA_MOVSEGURO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VISTA_MOVSEGURO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_MOVSEGURO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VISTA_MOVSEGURO" TO "PROGRAMADORESCSI";