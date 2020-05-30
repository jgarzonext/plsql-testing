-- se elimina la dependencia que afecta la visualizacion de los acuerdos de pago
select * from  cfg_form_property cf where cform = 'AXISAGD002' AND CIDCFG = 789 and citem = 'CESTOBS' AND CPRPTY = '4';
delete cfg_form_property cf where cform = 'AXISAGD002' AND CIDCFG = 789 and citem = 'CESTOBS' AND CPRPTY = '4';
COMMIT;
/

select * from  cfg_form_dep where ccfgdep = 789;
delete cfg_form_dep where ccfgdep = 789; 
COMMIT;
/
