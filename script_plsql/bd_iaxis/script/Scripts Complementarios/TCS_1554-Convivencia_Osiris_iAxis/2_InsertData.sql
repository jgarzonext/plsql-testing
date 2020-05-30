REM INSERTING into CON_HOMOLOGA_OSIAX
SET DEFINE OFF;
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('13','S03502','Autoriza tratamiento datos personales','00000051','VARCHAR','2','DATSARLATF','CAUTTRADAT','CAUTTRADAT','VARCHAR','1',null,null,'SELECT CAUTTRADAT FROM DATSARLATF WHERE SPERSON = :PSPERSON AND SSARLAFT=(SELECT MAX(SSARLAFT) FROM DATSARLATF WHERE SPERSON = :PSPERSON)',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('14','S03502','Experiencia','00000060','VARCHAR','2','FIN_GENERAL','TEXPERI','TEXPERI','VARCHAR','1',null,null,'SELECT TEXPERI FROM FIN_GENERAL WHERE SFINANCI = (SELECT MAX(SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON) AND SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('15','S03502','Sucursal','00000080','VARCHAR','2','DATSARLATF','TSUCURSAL','TSUCURSAL','VARCHAR','1',null,null,'SELECT TSUCURSAL FROM DATSARLATF WHERE SPERSON = :PSPERSON AND SSARLAFT=(SELECT MAX(SSARLAFT) FROM DATSARLATF WHERE SPERSON = :PSPERSON)',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('16','S03502','Ciudad Sucursal','00000090','VARCHAR','2','DATSARLATF','TCIUDADSUC','TCIUDADSUC','VARCHAR','1',null,null,'SELECT TCIUDADSUC FROM DATSARLATF WHERE SPERSON = :PSPERSON AND SSARLAFT=(SELECT MAX(SSARLAFT) FROM DATSARLATF WHERE SPERSON = :PSPERSON)',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('17','S03502','N�mero de Cuenta Bancaria','00000120','VARCHAR','2','PER_CCC','CBANCAR','CBANCAR','VARCHAR','1',null,null,'SELECT CBANCAR FROM PER_CCC WHERE SPERSON = :PSPERSON AND CNORDBAN = 1',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('18','S03502','Tipo de Cuenta','00000121','VARCHAR','2','PER_CCC','CTIPBAN','CTIPBAN','VARCHAR','1',null,null,'SELECT DECODE(CTIPCC, ''3'', ''02'', NULL, NULL, ''01'' ) FROM TIPOS_CUENTA WHERE CTIPBAN = (SELECT CTIPBAN FROM PER_CCC WHERE SPERSON = :PSPERSON AND CNORDBAN = 1)',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('19','S03502','Exenta Circular Conocimiento de cliente','00002061','VARCHAR','2','PER_PARPERSONAS','EXEN_CIRCULAR','EXEN_CIRCULAR','VARCHAR','2',null,null,'SELECT DECODE(NVALPAR, 1, ''01'', NULL) FROM PER_PARPERSONAS WHERE CPARAM = ''EXEN_CIRCULAR'' AND SPERSON = :PSPERSON','CPARAM - NVALPAR');
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('20','S03502','Exento Contragarant�a','00002063','VARCHAR','2','PER_PARPERSONAS','PER_EXCENTO_CONTGAR','PER_EXCENTO_CONTGAR','VARCHAR','2',null,null,'SELECT DECODE(NVALPAR, 1, ''01'',2,''02'', NULL) FROM PER_PARPERSONAS WHERE CPARAM = ''PER_EXCENTO_CONTGAR'' AND SPERSON = :PSPERSON','CPARAM - NVALPAR');
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('21','S03502','Responsable cupo','00002064','VARCHAR','2','FIN_INDICADORES','TCUPOR','TCUPOR','VARCHAR','1',null,null,'SELECT TCUPOR FROM FIN_INDICADORES WHERE SFINANCI = (SELECT MAX(SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON) AND NMOVIMI = (SELECT MAX(NMOVIMI) FROM FIN_INDICADORES WHERE SFINANCI = (SELECT MAX(SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON)',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('22','S03502','Fecha cupo','00002068','VARCHAR','2','FIN_INDICADORES','FCUPO','FCUPO','VARCHAR','1',null,null,'SELECT FCUPO FROM FIN_INDICADORES WHERE SFINANCI = (SELECT MAX(SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON) AND NMOVIMI = (SELECT MAX(NMOVIMI) FROM FIN_INDICADORES WHERE SFINANCI = (SELECT MAX(SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON)',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('23','S03502','CUPO DEL GARANTIZADO','00002090','VARCHAR','2','FIN_INDICADORES','ICUPOG','ICUPOG','VARCHAR','1',null,null,'SELECT ICUPOG FROM FIN_INDICADORES WHERE SFINANCI = (SELECT MAX(SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON) AND NMOVIMI = (SELECT MAX(NMOVIMI) FROM FIN_INDICADORES WHERE SFINANCI = (SELECT MAX(SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON)',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('24','S03502','CUPO SUGERIDO','00002092','VARCHAR','2','FIN_INDICADORES','ICUPOS','ICUPOS','VARCHAR','1',null,null,'SELECT ICUPOS FROM FIN_INDICADORES WHERE SFINANCI = (SELECT MAX(SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON) AND NMOVIMI = (SELECT MAX(NMOVIMI) FROM FIN_INDICADORES WHERE SFINANCI = (SELECT MAX(SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON)',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('25','S03502','Detalle cuota 2 para marca automatica','00002349','VARCHAR','2','PER_PARPERSONAS','PER_APLICA_Q3','PER_APLICA_Q3','VARCHAR','2',null,null,'SELECT DECODE(NVALPAR, 1, ''SI'',2,''NO'', NULL) FROM PER_PARPERSONAS WHERE CPARAM = ''PER_APLICA_Q3'' AND SPERSON = :PSPERSON','CPARAM - NVALPAR');
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('26','S03502','Vigencia de la Sociedad','00002354','VARCHAR','2','FIN_GENERAL','TVIGENCIA','TVIGENC','VARCHAR','1',null,null,'SELECT TVIGENC FROM FIN_GENERAL WHERE SFINANCI = (SELECT MAX(SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON) AND SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('27','S03502','C�digo deudor','00002378','VARCHAR','2','PER_PERSONAS','SPERSON_DEUD','SPERSON_DEUD','VARCHAR','1',null,null,'SELECT SPERSON_DEUD FROM PER_PERSONAS WHERE SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('28','S03502','C�digo acreedor','00002379','VARCHAR','2','PER_PERSONAS','SPERSON_ACRE','SPERSON_ACRE','VARCHAR','1',null,null,'SELECT SPERSON_ACRE FROM PER_PERSONAS WHERE SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('29','S03502','Obligaciones Tributarias en otro pais?','00002403','VARCHAR','2','DATSARLATF','CSUJETOOBLIFACION','CSUJETOOBLIFACION','VARCHAR','1',null,null,'SELECT CSUJETOOBLIFACION FROM DATSARLATF WHERE SPERSON = :PSPERSON AND SSARLAFT=(SELECT MAX(SSARLAFT) FROM DATSARLATF WHERE SPERSON = :PSPERSON)',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('30','S03502','Persona P�blica Expuesta(Para PJ:Admins/RL/Junta)','00002420','VARCHAR','2','DATSARLATF','CVINPERPUB','CVINPERPUB','VARCHAR','1',null,null,'SELECT CVINPERPUB FROM DATSARLATF WHERE SPERSON = :PSPERSON AND SSARLAFT=(SELECT MAX(SSARLAFT) FROM DATSARLATF WHERE SPERSON = :PSPERSON)',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('31','S03502','Administra Recursos P�b(Para PJ:Admins/RL/Junta)','00002421','VARCHAR','2','DATSARLATF','CMANRECPUB','CMANRECPUB','VARCHAR','1',null,null,'SELECT CMANRECPUB FROM DATSARLATF WHERE SPERSON = :PSPERSON AND SSARLAFT=(SELECT MAX(SSARLAFT) FROM DATSARLATF WHERE SPERSON = :PSPERSON)',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('32','S03502','Goza Reconocimiento P�b(En Empres: Rep Leg/Socios)','00002422','VARCHAR','2','DATSARLATF','CRECPUB','CRECPUB','VARCHAR','1',null,null,'SELECT CRECPUB FROM DATSARLATF WHERE SPERSON = :PSPERSON AND SSARLAFT=(SELECT MAX(SSARLAFT) FROM DATSARLATF WHERE SPERSON = :PSPERSON)',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('33','S03502','TIPO DE SOCIEDAD','02152','VARCHAR','2','FIN_GENERAL','CTIPSOCI','CTIPSOCI','VARCHAR','1',null,null,'SELECT CTIPSOCI FROM FIN_GENERAL WHERE SFINANCI = (SELECT MAX(SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON) AND SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('34','S03502','Municipio','10101046','VARCHAR','2','FIN_GENERAL','CPOBLAC','CPOBLAC','VARCHAR','1',null,null,'SELECT CPOBLAC FROM FIN_GENERAL WHERE SFINANCI = (SELECT MAX(SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON) AND SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('3','S03500','NOMBRE','NOMBRE','VARCHAR','1','PER_DETPER',null,null,null,null,null,'UPDATE','SELECT ''''''''||SUBSTR(f_nombre(:psperson, 4, ''''),1,250)||'''''', '' FROM DUAL',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('2','S03500','SIGLA','SIGLA','VARCHAR','1','PER_DETPER',null,null,null,null,null,'UPDATE','SELECT ''''''''||SUBSTR(f_nombre(:psperson, 4, ''''),1,20)||'''''', '' FROM DUAL',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('4','S03500','SUCMOD','SUCMOD','VARCHAR','1','PER_PERSONAS',null,null,null,null,null,'UPDATE','SELECT ''''''''||CUSUARI||'''''', '' FROM PER_PERSONAS WHERE SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('5','S03500','FECMOD','FECMOD','VARCHAR','1','PER_PERSONAS',null,null,null,null,null,'UPDATE','SELECT ''''''''||FMOVIMI||'''''''' FROM PER_PERSONAS WHERE SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('1','S03500','INSERT','VARCHAR',null,null,'PER_PERSONAS',null,null,null,null,'select a.sperson||PAC_CONVIVENCIA.f_convivencia_osiris(a.sperson, 2)  || '''''','''''' || SUBSTR(f_nombre(a.sperson, 4, ''''),1,20)
||'''''','''''' || SUBSTR(f_nombre(a.sperson, 4, ''''),1,250)
||'''''','''''' || a.nnumide
||'''''','' || PAC_CONVIVENCIA.f_convivencia_osiris(a.sperson, 1)
||'','''''' ||a.cusualt
||'''''','''''' ||a.cusuari
||'''''','''''' ||a.falta
||'''''','''''' ||a.fmovimi
||'''''','''''' ||''''
||'''''','''''' ||''''
||'''''','''''' ||''''
||'''''','''''' ||a.fnacimi
||'''''','''''' ||a.csexper
||'''''','' ||1
||'','''''' ||a.tdigitoide
||'''''','''''' ||b.tapelli1
||'''''','''''' ||b.tapelli2
||'''''','''''' ||b.tnombre1
||'''''','''''' ||b.tnombre1
||'''''','''''' ||''''
||'''''','''''' ||''''
||'''''','''''' ||''''
||'''''','''''' ||''''||''''''''
FROM per_personas a, per_detper b
where a.sperson = b.sperson
and a.sperson  = :PSPERSON','INSERT',null,null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('6','S03500','PRIMERAPELLIDO','PRIMERAPELLIDO','VARCHAR','CAMPO','PER_DETPER',null,null,null,null,null,'UPDATE','SELECT ''''''''||TAPELLI1||'''''', '' FROM PER_DETPER WHERE SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('7','S03500','SEGUNDOAPELLIDO','SEGUNDOAPELLIDO','VARCHAR','CAMPO','PER_DETPER',null,null,null,null,null,'UPDATE','SELECT ''''''''||TAPELLI2||'''''', '' FROM PER_DETPER WHERE SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('8','S03500','PRIMERNOMBRE','PRIMERNOMBRE','VARCHAR','CAMPO','PER_DETPER',null,null,null,null,null,'UPDATE','SELECT ''''''''||TNOMBRE1||'''''', '' FROM PER_DETPER WHERE SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('37','S03502','Ciudad / Municipio UBICACION ACTUAL','00000095','VARCHAR','2','PER_DIRECCIONES','Ciudad / Municipio UBICACION ACTUAL','CPOBLAC','NUMBER','1',null,null,'SELECT CPROVIN||lpad(CPOBLAC,3,''0'') FROM PER_DIRECCIONES WHERE SPERSON = :PSPERSON AND CDOMICI = 1',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('36','S03502','DEPARTAMENTO  UBICACION ACTUAL','00000111','VARCHAR','2','PER_DIRECCIONES','DEPARTAMENTO  UBICACION ACTUAL','CPROVIN','NUMBER','1',null,null,'SELECT CPROVIN FROM PER_DIRECCIONES WHERE SPERSON = :PSPERSON AND CDOMICI = 1',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('9','S03500','SEGUNDONOMBRE','SEGUNDONOMBRE','VARCHAR','CAMPO','PER_DETPER',null,null,null,null,null,'UPDATE','SELECT ''''''''||TNOMBRE2||'''''''' FROM PER_DETPER WHERE SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('1','S03501','INSERT','VARCHAR',null,null,'PER_PERSONAS',null,null,null,null,'select a.sperson||PAC_CONVIVENCIA.f_convivencia_osiris(a.sperson, 2)  ||'''''',''||1||'',''||0||'','''''' ||a.falta||'''''','''''' ||a.cusualt||'''''', NULL, NULL''FROM per_personas a where  a.sperson = :PSPERSON','INSERT',null,null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('2','S03501','INSERT','VARCHAR',null,null,'PER_PERSONAS',null,null,null,null,'select a.sperson||PAC_CONVIVENCIA.f_convivencia_osiris(a.sperson, 2)  ||'''''',''||5||'',''||0||'','''''' ||a.falta||'''''','''''' ||a.cusualt||'''''', NULL, NULL'' FROM per_personas a where  a.sperson = :psperson','INSERT',null,null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('3','S03501','INSERT','VARCHAR',null,null,'PER_PERSONAS',null,null,null,null,'select a.sperson||PAC_CONVIVENCIA.f_convivencia_osiris(a.sperson, 2)  ||'''''',''||60||'',''||0||'','''''' ||a.falta||'''''','''''' ||a.cusualt||'''''', NULL, NULL'' FROM per_personas a where  a.sperson = :psperson','INSERT',null,null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('13','S03501','SELECT','NUMBER','NUMBER','CAMPO',null,null,null,null,null,null,'SELECT','select count(*) from s03501@PREPRODUCCION where codigo = :PSPERSON and codvin = :x_vinculo','COUNT');
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('14','S03501','INSERT501','VARCHAR',null,null,'PER_AGR_MARCAS',null,null,null,null,'select a.sperson||PAC_CONVIVENCIA.f_convivencia_osiris(a.sperson, 2)||'''''',''|| :x_vinculo||'',''||to_number(a.cmarca)||'',''''''||a.falta||'''''',''''''||a.cuser||'''''',''||''NULL, NULL''
from per_agr_marcas a where a.sperson = :psperson and a.nmovimi = (select max(b.nmovimi) from per_agr_marcas b where b.sperson = :psperson)','INSERT501',null,'PER_AGR_MARCAS');
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('15','S03501B','INSERT','VARCHAR',null,null,'PER_AGR_MARCAS',null,null,null,null,'select a.sperson||pac_convivencia.f_convivencia_osiris(a.sperson, 2)||'''''',''|| :x_vinculo||'',''||to_number(a.cmarca)||'','''''' ||a.falta||'''''','''''' ||a.cuser||'''''',null, null'' 
from  per_agr_marcas a where a.sperson = :psperson and a.nmovimi = (select max(b.nmovimi) from per_agr_marcas b where b.sperson = :psperson)','INSERT',null,'PER_AGR_MARCAS');
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('1','S03512','SUCUR','SUCUR','VARCHAR','1','DATSARLATF','CSUCURSAL','CSUCURSAL','NUMBER','1',null,null,'SELECT SUBSTR(CSUCURSAL,3) FROM DATSARLATF WHERE SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('1','S03512','FECHADOCUMENTO','FECHADOCUMENTO','DATE','1','DATSARLATF','FDILIGENCIA','FDILIGENCIA','DATE','1',null,null,'SELECT TO_CHAR(FDILIGENCIA,''DD/MM/YYYY'') FDILIGENCIA FROM DATSARLATF WHERE SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('1','S03512','FECHARADICADA','FECHARADICADA','DATE','1','DATSARLATF','FRADICA','FRADICA','DATE','1',null,null,'SELECT TO_CHAR(FRADICA,''DD/MM/YYYY'') FRADICA FROM DATSARLATF WHERE SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('1','S03512','INSERT','VARCHAR','VARCHAR','1','DATSARLATF',null,null,null,null,'SELECT SPERSON||PAC_CONVIVENCIA.f_convivencia_osiris(sperson, 2)||'''''',5,''
||''TO_DATE(''''''||TO_CHAR(FDILIGENCIA,''DD/MM/YYYY'')||'''''',''''DD/MM/YYYY''''),''''''||SUBSTR(CSUCURSAL,3)||'''''',NULL,NULL,''
||''TO_DATE(''''''||TO_CHAR(FRADICA,''DD/MM/YYYY'')||'''''',''''DD/MM/YYYY''''),NULL,''||SSARLAFT||'',NULL,NULL,NULL,NULL,NULL,''''''||CUSER||'''''',''''''||CUSER||'''''', ''
||''TO_DATE(''''''||TO_CHAR(FALTA,''DD/MM/YYYY'')||'''''',''''DD/MM/YYYY''''),''
||''TO_DATE(''''''||TO_CHAR(FALTA,''DD/MM/YYYY'')||'''''',''''DD/MM/YYYY'''')'' FROM DATSARLATF WHERE sperson = :PSPERSON','INSERT',null,null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('35','S03501','SELECT','NUMBER','NUMBER','CAMPO',null,null,null,null,null,null,'SELECT','select estado from s03501@PREPRODUCCION where codigo = :PSPERSON and codvin = :x_vinculo','ESTADO');
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('1','S03502','DIRECCION OFICINA','00000010','VARCHAR','2','PER_DIRECCIONES','DIRECCION','TDOMICI','VARCHAR','1',null,null,'SELECT TDOMICI FROM PER_DIRECCIONES WHERE SPERSON = :PSPERSON AND CDOMICI = 1',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('2','S03502','PAIS UBICACION ACTUAL','00000013','VARCHAR','2','PER_DETPER','PAIS','CPAIS','NUMBER','1',null,null,'SELECT CPAIS FROM PER_DETPER WHERE SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('3','S03502','Direcci�n Residencia','00000011','VARCHAR','2','PER_DIRECCIONES','Direcci�n Residencia','TDOMICI','VARCHAR','1',null,null,'SELECT TDOMICI FROM PER_DIRECCIONES WHERE SPERSON = :PSPERSON AND CDOMICI = 2',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('5','S03502','E-Mail','00000020','VARCHAR','2','PER_CONTACTOS','EMAIL','TVALCON','VARCHAR','1',null,null,'SELECT TVALCON FROM PER_CONTACTOS WHERE CTIPCON = 3 AND ROWNUM = 1 AND SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('6','S03502','Tel�fono C�lular','00000030','VARCHAR','2','PER_CONTACTOS','CELULAR','TVALCON','VARCHAR','1',null,null,'SELECT TVALCON FROM PER_CONTACTOS WHERE CTIPCON = 6 AND CDOMICI = 1 AND SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('7','S03502','Tel�fono Oficina 1','00000040','VARCHAR','2','PER_CONTACTOS','TELEFONO','TVALCON','VARCHAR','1',null,null,'SELECT TVALCON FROM PER_CONTACTOS WHERE CTIPCON = 1 AND CDOMICI = 1 AND SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('8','S03502','Tel�fono Oficina 2','00000041','VARCHAR','2','PER_CONTACTOS','TELEFONO','TVALCON','VARCHAR','1',null,null,'SELECT TVALCON FROM PER_CONTACTOS WHERE CTIPCON = 1 AND CDOMICI = 2 AND SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('9','S03502','Tel�fono Oficina 3','00000042','VARCHAR','2','PER_CONTACTOS','TELEFONO','TVALCON','VARCHAR','1',null,null,'SELECT TVALCON FROM PER_CONTACTOS WHERE CTIPCON = 1 AND CDOMICI = 3 AND SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('10','S03502','Tel�fono Residencia','00000043','VARCHAR','2','PER_CONTACTOS','TELEFONO','TVALCON','VARCHAR','1',null,null,'SELECT TVALCON FROM PER_CONTACTOS WHERE CTIPCON = 1 AND CDOMICI = 1 AND SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('11','S03502','Numero de Fax','00000050','VARCHAR','2','PER_CONTACTOS','TELEFONO','TVALCON','VARCHAR','1',null,null,'SELECT TVALCON FROM PER_CONTACTOS WHERE CTIPCON =2 AND CDOMICI = 1 AND SPERSON = :PSPERSON',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('12','S03502','CIIU','00000055','VARCHAR','2','FIN_GENERAL','TELEFONO','CCIIU','NUMBER','1',null,null,'SELECT CCIIU FROM FIN_GENERAL WHERE SPERSON = :PSPERSON AND SFINANCI = (SELECT MAX(SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON)',null);
Insert into CON_HOMOLOGA_OSIAX (NORDEN,TOSIRIS,LABEL_CAMPO_OSI,CAMPO_OSI,TIPVALOR_OSI,TIPCAMPO_OSI,TIAXIS,LABEL_CAMPO_IAX,CAMPO_IAX,TIPVALOR_IAX,TIPCAMPO_IAX,QUERY_INSERT,CAMPO_EXTRA,QUERY_SELECT,CAMPO_EXTRA1) values ('4','S03502','Ciudad Garantizado','00000012','VARCHAR','2','PER_DIRECCIONES','Ciudad Garantizado','CPOBLAC','NUMBER','1',null,null,'SELECT PAC_ISQLFOR.F_POBLACION(SPERSON, 1) FROM PER_DIRECCIONES WHERE SPERSON = :PSPERSON AND CDOMICI = 1',null);