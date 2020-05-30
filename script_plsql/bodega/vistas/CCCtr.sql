--------------------------------------------------------
--  DDL for View CCCtr
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CONF_DWH"."CCCtr" ("CAUSA") AS 
  select pac_siniestros.ff_descausa(436,3) causa
  from dual
;
