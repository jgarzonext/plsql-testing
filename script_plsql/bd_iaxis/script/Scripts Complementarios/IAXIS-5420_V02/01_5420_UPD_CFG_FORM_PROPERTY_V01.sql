UPDATE cfg_form_property c
   SET c.cvalue = 1
 WHERE c.cempres = 24
   AND c.cidcfg = 230001
   AND c.cform = 'AXISCTR003'
   AND c.citem = 'BT_DEL_ASEG';
commit
/
