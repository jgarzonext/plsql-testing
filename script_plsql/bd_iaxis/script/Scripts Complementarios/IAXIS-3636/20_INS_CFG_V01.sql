--
DELETE cfg_form_property
 WHERE cempres = 24
   AND cidcfg = 1
   AND cprpty = 3
   AND citem = 'CRAMO'
   AND cform = 'AXISADM206';

DELETE cfg_form_property
 WHERE cempres = 24
   AND cidcfg = 2
   AND cprpty = 2
   AND citem = 'CRAMO'
   AND cform = 'AXISADM206';

DELETE cfg_form_property
 WHERE cempres = 24
   AND cidcfg = 3
   AND cprpty = 1
   AND citem = 'BUT_SALIR'
   AND cform = 'AXISADM206';
--
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISADM206', 'CRAMO', 3, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 2, 'AXISADM206', 'CRAMO', 2, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 3, 'AXISADM206', 'BUT_SALIR', 1, 0);
COMMIT;
/
