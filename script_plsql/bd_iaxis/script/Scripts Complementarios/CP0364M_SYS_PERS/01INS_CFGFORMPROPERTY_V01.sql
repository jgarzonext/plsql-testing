-- CP0364M_SYS_PERS_val
PROMPT BORRANDO cfg_form_property
delete cfg_form_property c
 where c.cempres = 24
   and c.cidcfg = 2
   and c.cform = 'AXISFIC002'
   and c.citem in ('BT_CONS_PERREL',
                   'BT_DELPERREL',
                   'BT_NVPERREL');
									 
PROMPT INSERTANDO cfg_form_property
insert into cfg_form_property
  (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values
  (24, 2, 'AXISFIC002', 'BT_CONS_PERREL', 1, 0);

insert into cfg_form_property
  (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values
  (24, 2, 'AXISFIC002', 'BT_DELPERREL', 1, 0);

insert into cfg_form_property
  (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values
  (24, 2, 'AXISFIC002', 'BT_NVPERREL', 1, 0);
