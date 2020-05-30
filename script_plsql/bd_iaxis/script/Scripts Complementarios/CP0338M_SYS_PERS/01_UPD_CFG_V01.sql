UPDATE cfg_form_property cp
   set cp.cvalue = 1
 where cp.cempres = 24
   and cp.cidcfg = 4
   and cp.cform = 'AXISPER009'
   and cp.citem = 'BT_EDITDIR'
	 and cp.cprpty = 1;
