delete CFG_WIZARD_FORMS where CFORM_ACT = 'AXISCTR192' and CIDCFG = 806301;	

update cfg_wizard_forms set cform_sig='AXISCTR175' where cidcfg in(806201,806301) and cform_act='AXISCTR207';

update cfg_wizard_forms set cform_ant='AXISCTR207' where cidcfg in(806201,806301) and cform_act='AXISCTR175';

commit;