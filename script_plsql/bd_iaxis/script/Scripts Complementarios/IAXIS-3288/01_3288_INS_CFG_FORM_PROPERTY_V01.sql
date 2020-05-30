-- Se borran inicialmente
-- Para Alta
delete cfg_form_property c
 where c.CEMPRES = 24
   and c.CIDCFG = 1
   and c.CITEM in ('CACTIVI', 'CGRUPO')
   and c.CPRPTY = 3
   and c.CFORM = 'AXISADM206';
-- Para MODIFICACION
delete cfg_form_property c
 where c.CEMPRES = 24
   and c.CIDCFG = 2
   and c.CITEM in ('CACTIVI', 'FINIVIG','NINICIAL')
   and c.cprpty = 2
   and c.CFORM = 'AXISADM206';
-- Para CONSULTA
delete cfg_form_property c
 where c.CEMPRES = 24
   and c.CIDCFG = 3
   and c.cprpty = 2
   and c.CITEM in ('CRAMO')
   and c.CFORM = 'AXISADM206';
-- Para ALTA
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISADM206', 'CACTIVI', 3, 1);
--
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISADM206', 'CGRUPO', 3, 1);
-- Para MODIFICACION
UPDATE cfg_form_property c
   SET c.cvalue = 0
 WHERE c.cempres = 24
   AND c.cform = 'AXISADM206'
   AND c.cidcfg = 2
   AND c.citem = 'CRAMO'
   AND c.cprpty = 2
   AND c.cvalue = 1;
--
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 2, 'AXISADM206', 'CACTIVI', 2, 0);
--
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 2, 'AXISADM206', 'FINIVIG', 2, 0);
--
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 2, 'AXISADM206', 'NINICIAL', 2, 0);
-- Para CONSULTA
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 3, 'AXISADM206', 'CRAMO', 2, 0);
COMMIT
/
