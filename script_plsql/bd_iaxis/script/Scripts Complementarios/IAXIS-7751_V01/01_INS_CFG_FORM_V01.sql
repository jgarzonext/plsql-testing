/*
  IAXIS-7751 - JLTS - 25/02/2020. Campo fecha de expedición de la cédula - 
*/
---> DELETE
-- CFG_FORM_DEP
DELETE cfg_form_dep c
 WHERE c.cempres = 24
   AND c.ccfgdep = 8001
   AND c.citorig = 'CFOTOCED'
   AND c.tvalorig IN (0, 1)
   AND c.citdest = 'FEXPICED'
   AND c.cprpty IN (1, 3);
-- CFG_FORM_PROPERTY
DELETE cfg_form_property c
 WHERE c.cempres = 24
   AND c.cidcfg IN (1, 2)
   AND c.cprpty = 4
   AND c.citem = 'CFOTOCED'
   AND c.cform = 'AXISFIC002';

---> INSERT
-- CFG_FORM_PROPERTY
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISFIC002', 'CFOTOCED', 4, 8001);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 2, 'AXISFIC002', 'CFOTOCED', 4, 8001);
-- CFG_FORM_DEP
insert into cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
values (24, 8001, 'CFOTOCED', '1', 'FEXPICED', 3, 1);

insert into cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
values (24, 8001, 'CFOTOCED', '1', 'FEXPICED', 1, 1);

insert into cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
values (24, 8001, 'CFOTOCED', '0', 'FEXPICED', 3, 0);

insert into cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
values (24, 8001, 'CFOTOCED', '0', 'FEXPICED', 1, 1);

commit
/
