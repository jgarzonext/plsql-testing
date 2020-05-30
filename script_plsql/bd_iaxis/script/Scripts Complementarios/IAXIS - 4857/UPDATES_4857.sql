
update CFG_form_property
set cvalue = 1
where cform = 'AXISPER009'
and citem = 'BT_NVTARJETA'
and cidcfg = 4;

update CFG_form_property
set cvalue = 1
where cform = 'AXISPER009'
and citem = 'BT_NVCUENTA'
and cidcfg = 4;

delete Menu_Opcionrol
where Crolmen = '0004-01'
and copcion = 999703;  

Insert into MENU_OPCIONROL (CROLMEN,COPCION,CUSUALT,FALTA,CUSUMOD,FMODIFI) values ('0004-01',999704,'AXIS_RECAUDOS',to_date('18-OCT-19','DD-MON-RR'),null,null);

delete  Menu_Opcionrol
where copcion = 999704
and crolmen in ('0006-01' , '0006-02');

commit;
