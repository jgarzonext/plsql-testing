/* Formatted on 01/04/2019 14:00*/
/* **************************** 01/04/2019 14:00 **********************************************************************
Versin           Descripcin
01.               -Este script fija las propiedades de visibilidad y no editabilidad a los campos del FCC en modo consulta.
IAXIS-3179        01/04/2019 Daniel Rodrguez.
***********************************************************************************************************************/

DELETE FROM cfg_form_property c
 WHERE c.cempres = 24
   and c.cidcfg = 0
   and c.cprpty = 2
   and c.citem IN ('TTELREPL',
                   'TCELUREPL',
                   'TMAILJURID',
                   'PER_CSECTOR',
                   'CCIIU',
                   'TMAILREPL',
                   'CORIGENFON',
                   'THORAENTREV',
                   'TAGENENTREV',
                   'TASESENTREV',
                   'TOBSEENTREV',
                   'CRESTENTREV',
                   'THORACONFIR',
                   'TEMPLCONFIR',
                   'TOBSECONFIR',
                   'CCLAUSULA1',
                   'CCLAUSULA2',
                   'FENTREVISTA',
                   'CACTIPPAL',
                   'CACTISEC',
                   'PER_SECTORPPAL',
                   'CSUJETOOBLIFACION',
                   'TVINCULACION',
                   'TREPRESENTANLE',
                   'TSEGAPE',
                   'TNOMBRES',
                   'NTIPDOC',
                   'TNUMDOC',
                   'FEXPEDICDOC',
                   'FNACIMIENTO',
                   'EMP_TMAILREPL',
                   'EMP_TDIRSREPL')
   and c.cform = 'AXISPER047';   
--
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TTELREPL', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TCELUREPL', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TMAILJURID', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'PER_CSECTOR', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'CCIIU', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TMAILREPL', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'CORIGENFON', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'THORAENTREV', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TAGENENTREV', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TASESENTREV', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TOBSEENTREV', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'CRESTENTREV', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'THORACONFIR', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TEMPLCONFIR', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TOBSECONFIR', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'CCLAUSULA1', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'CCLAUSULA2', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'FENTREVISTA', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'CACTIPPAL', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'CACTISEC', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'PER_SECTORPPAL', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'CSUJETOOBLIFACION', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TVINCULACION', 2, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'FEXPEDICDOC', 2, 0);
--
DELETE FROM cfg_form_property c
 WHERE c.cempres = 24
   and c.cidcfg = 0
   and c.cprpty = 1
   and c.citem IN ('DSP_FIND',
                   'PER_CCIUSOL_FIND',
                   'TPAISUC_FIND',
                   'TDEPATAMENTOSUC_FIND',
                   'TCIUDADSUC_FIND',
                   'EMP_PAISEXPEDICION_FIND',
                   'EMP_DEPEXPEDICION_FIND',
                   'EMP_LUGEXPEDICION_FIND',
                   'EMP_PAISLUGNACIMI_FIND',
                   'EMP_DEPLUGNACIMI_FIND',
                   'EMP_LUGNACIMI_FIND',
                   'TNACIONALI1_FIND',
                   'TNACIONALI2_FIND',
                   'EMP_CPAIRREPL_FIND',
                   'EMP_CDEPRREPL_FIND',
                   'EMP_CCIURREPL_FIND',
                   'CDEPTOENTREV_FIND',
                   'CCIUENTREV_FIND',
                   'DSP_ICONS')
   and c.cform = 'AXISPER047';
--
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'DSP_FIND', 1, 0);    

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'PER_CCIUSOL_FIND', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TPAISUC_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TDEPATAMENTOSUC_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TCIUDADSUC_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'EMP_PAISEXPEDICION_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'EMP_DEPEXPEDICION_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'EMP_LUGEXPEDICION_FIND', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'EMP_PAISLUGNACIMI_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'EMP_DEPLUGNACIMI_FIND', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'EMP_LUGNACIMI_FIND', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TNACIONALI1_FIND', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TNACIONALI2_FIND', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'EMP_CPAIRREPL_FIND', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'EMP_CDEPRREPL_FIND', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'EMP_CCIURREPL_FIND', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'CDEPTOENTREV_FIND', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'CCIUENTREV_FIND', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'DSP_ICONS', 1, 0);   
--
DELETE FROM cfg_form_property c
 WHERE c.cempres = 24
   and c.cidcfg = 1
   and c.cprpty = 1
   and c.citem IN ('TPAISUC_FIND',
                   'TDEPATAMENTOSUC_FIND',
                   'TCIUDADSUC_FIND',
                   'EMP_PAISEXPEDICION_FIND',
                   'EMP_DEPEXPEDICION_FIND',
                   'EMP_LUGEXPEDICION_FIND',
                   'TNACIONALI1_FIND',
                   'TNACIONALI2_FIND',
                   'EMP_CPAIRREPL_FIND',
                   'EMP_CDEPRREPL_FIND',
                   'EMP_CCIURREPL_FIND',
                   'EMP_LUGNACIMI_FIND',
                   'EMP_DEPLUGNACIMI_FIND',
                   'EMP_PAISLUGNACIMI_FIND'
                   )
   and c.cform = 'AXISPER047';            
----------------------------------------------------------------------------
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'EMP_PAISEXPEDICION_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'EMP_DEPEXPEDICION_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'EMP_LUGEXPEDICION_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'TNACIONALI1_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'TNACIONALI2_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'EMP_CPAIRREPL_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'EMP_CDEPRREPL_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'EMP_CCIURREPL_FIND', 1, 0); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'EMP_DEPLUGNACIMI_FIND', 1, 1); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'EMP_PAISLUGNACIMI_FIND', 1, 1); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'EMP_LUGNACIMI_FIND', 1, 1); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'TPAISUC_FIND', 1, 1); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'TDEPATAMENTOSUC_FIND', 1, 1); 

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'TCIUDADSUC_FIND', 1, 1); 
--
COMMIT;
/

