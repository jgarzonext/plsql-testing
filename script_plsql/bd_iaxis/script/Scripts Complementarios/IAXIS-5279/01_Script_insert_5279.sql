DELETE FROM cfg_form_property WHERE cform = 'AXISSIN006' AND citem IN ('BT_NEW_AMPARO','BT_SIN_NUEVO_TRAM_CIT');
--
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 110, 'AXISSIN006', 'BT_NEW_AMPARO', 1, 0);
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 112, 'AXISSIN006', 'BT_NEW_AMPARO', 1, 0);
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 780, 'AXISSIN006', 'BT_NEW_AMPARO', 1, 0);
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 110, 'AXISSIN006', 'BT_SIN_NUEVO_TRAM_CIT', 1, 0);
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 112, 'AXISSIN006', 'BT_SIN_NUEVO_TRAM_CIT', 1, 0);
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 800, 'AXISSIN006', 'BT_SIN_NUEVO_TRAM_CIT', 1, 0);
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 780, 'AXISSIN006', 'BT_SIN_NUEVO_TRAM_CIT', 1, 0);
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 777, 'AXISSIN006', 'BT_SIN_NUEVO_TRAM_CIT', 1, 0);
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 783, 'AXISSIN006', 'BT_SIN_NUEVO_TRAM_CIT', 1, 0);
--
COMMIT;
--
/