
update cfg_wizard set cidcfg=806201 where sproduc = 8062 and cmodo='ALTA_POLIZA';

update cfg_wizard set cidcfg=806301 where sproduc = 8063 and cmodo='ALTA_POLIZA';

delete CFG_WIZARD_FORMS where CFORM_ACT = 'AXISCTR192' and CIDCFG = 806201;	

commit;