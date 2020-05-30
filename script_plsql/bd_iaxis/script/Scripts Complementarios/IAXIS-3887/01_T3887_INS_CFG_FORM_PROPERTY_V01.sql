--
delete cfg_form_property
where CEMPRES = 24
  and CIDCFG = 1
	and CITEM in ('CESTIMP', 'LSNEGOCIO')
	and CFORM = 'AXISADM001';
--
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISADM001', 'CESTIMP', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISADM001', 'LSNEGOCIO',1, 0);

UPDATE cfg_form_property c
   set c.cvalue = 0
where c.cempres = 24
  and c.cidcfg = 1
	and c.cform = 'AXISADM001'
	and c.citem = 'CTIPAGE01'
	and c.cprpty = 1
	and c.cvalue = 1;
	
UPDATE cfg_form_property c
   set c.cvalue = 0
where c.cempres = 24
  and c.cidcfg = 1
	and c.cform = 'AXISADM001'
	and c.citem = 'PAGADOR'
	and c.cprpty = 1
	and c.cvalue = 1;
COMMIT
/
