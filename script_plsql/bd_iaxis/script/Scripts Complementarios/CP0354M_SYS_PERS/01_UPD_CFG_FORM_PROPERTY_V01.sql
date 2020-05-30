-- CP0354M_SYS_PERS_val - JLTS - 21/12/2018
-- Acualización de la configración de la patalla axisper009 en modo MODIFICACION para que no oculte los botones 
-- de nuevo an cada apartado
UPDATE cfg_form_property c
   SET c.cvalue = 1
 WHERE c.cempres = 24
   AND c.cform = 'AXISPER009'
   AND c.cidcfg = 4
   ANd c.citem like 'BT_N%';
