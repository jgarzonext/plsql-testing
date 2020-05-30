--
DELETE cfg_form_property p
 WHERE p.cempres = 24
   AND p.cidcfg = 16
   AND p.cform = 'AXISPER009';

DELETE cfg_form c
 WHERE c.cempres = 24
   AND c.cform = 'AXISPER009'
   AND c.cmodo = 'CONSULTA_RECIB_PER'
   AND c.cidcfg = 16;
	 
DELETE cfg_cod_modo c WHERE c.cmodo = 'CONSULTA_RECIB_PER';
--
insert into cfg_cod_modo (CMODO, TMODO, CDEFECTO)
values ('CONSULTA_RECIB_PER', 'Consulta de personas desde consulta de recibos', 0);
--
insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_ADG_ADM', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:19', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_ANA_SIN', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:29', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_AUX_AGE', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:14', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_AUX_CAR', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:31', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_AUX_REC', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:14', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_CON_COM', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:34', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_COO_COM_ARL', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_COO_COM_V', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:35', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_COO_SIN', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:35', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_COO_TEC', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:38', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_ESP_AFI', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:15', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_ESP_AGE', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:16', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_ESP_CAR', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:40', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_ESP_CAR_ARL', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:16', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_ESP_CAR_SP', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:16', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_ESP_REC', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:45', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_FO', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:32', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_GEN_CAR', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:40', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_GER_SIN', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:42', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_GER_TEC', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:45', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_GES_CAR', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:47', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_LIDER_TEC_COL', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:48', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_LIDER_TEC_P', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:05', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_LIDER_TEC_VI', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:03', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_LID_ARL', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:45', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_LID_VIDA', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:54', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_PROF_CM_P', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:55', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_PROF_COM', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:24', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_PROF_EXP', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:54', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_PRO_AFI', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:16', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_PRO_AGE', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:52', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_PRO_CAR', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:49', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_PRO_CAR_ARL', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:45', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_PRO_CAR_SP', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:18', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_PRO_REC', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:46', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_REA_CUM', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('05-04-2017 17:45:50', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_TEC_AGE', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:19', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_TEC_CAN', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:19', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_TEC_CAR', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:24', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_TEC_CM_P', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_TEC_EXP', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:44', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_TEC_REC_ARL', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:19', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_TEC_REC_SP', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:52', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_VIC_CAR', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:51', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_VIC_SIN', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:20', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_VIC_TEC', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:12:25', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:35:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into cfg_form (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (24, 'AXISPER009', 'CONSULTA_RECIB_PER', 'CFG_CENTRAL', 0, 16, 'AXIS_CONF', to_date('01-05-2019 11:29:36', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS_CONF', to_date('10-02-2015 10:36:19', 'dd-mm-yyyy hh24:mi:ss'));
--
insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'ACCESO', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BANCO_CCC', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BANCO_TARJ', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_ACEPTAR', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_DELCONTACTO', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_DELCUENTA', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_DELDIR', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_DELIDENT', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_DELIRPF', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_DELNACIO', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_DELTARJETA', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_EDIDATOSPER', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_EDIDATOSPER2', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_EDITCONTACTO', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_EDITCUENTA', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_EDITDIR', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_EDITIDENT', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_EDITIRPF', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_EDITNACIO', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_EDITPROPI', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_EDITTARJETA', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_IMPRIMIR', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NUEVO_AGENDA', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NUEVO_DETSARLAFT', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NVCONTACTO', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NVCUENTA', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NVDIR', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NVFIC', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NVIDENT', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NVIMPUESTO', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NVIRPF', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NVNACIO', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NVPERREL', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NVREGFISC', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NVRIESGO', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_NVTARJETA', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_RECBUSPOL', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_TOMBUSPOL', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'CBOTCUMCUP', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'CCIUDADEXP', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'CDEPARTEXP', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'CDOMICI', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'CESTPERLOPD', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'CIDIOMA', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'COCUPACION', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'CPAGSIN', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'CPAISEXP', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'CPREAVISO', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'CVALIDA', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'DSP_CONTACTOS_AUT', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'DSP_DIRECCIONES_AUT', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'DSP_DOCUMENTOS', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'DSP_GESTLOPD', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'DSP_IRPF', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'DSP_LOPD', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'DSP_PER_REL', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'DSP_REGFISC', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'DSP_SARLAFT', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'DSP_TARJETAS', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'FECHADEXP', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'ISLIDER', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'PAVALIST', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'PGESCOBRO', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'PINQUIL', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'PPARTICIPACION', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'RECTIFICACION', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'SNIP', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'SWRUT_COLM', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'TCOMCON', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'TDIGITOIDE_COLM', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'TESTADO', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'TIPOSOC', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'TNOMBRE', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'TNOMBRE1', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'TNOMBRE2', 1, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'TSEGURI', 1, 0);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BT_DETALLE', 4, 99840291);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'CTIPIDE', 4, 852);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'CTIPPER', 4, 333);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'TALIAS', 4, 99840282);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'LIT17', 8, 9902611);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'LIT18', 8, 9902610);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'PGESCOBRO', 8, 9903157);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'BANCO_CCC', 11, 1);

insert into cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 16, 'AXISPER009', 'CBANCAR', 11, 1);
--
UPDATE cfg_form_property p
   SET p.cvalue = 1
 WHERE p.cempres = 24
   AND p.cidcfg = 2002
   AND p.cform = 'AXISADM003'
   AND p.citem = 'PORC_COMIS'
   AND p.cprpty = 1
   AND p.cvalue = 0;
COMMIT
/
