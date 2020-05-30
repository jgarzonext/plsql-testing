BEGIN
DELETE  DETVALORES WHERE CVALOR = 800031;
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (800031,1,1,'Tasca');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (800031,1,2,'Observacions');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (800031,2,1,'Tarea');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (800031,2,2,'Observaciones');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (800031,8,1,'Tarea');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (800031,8,2,'Observaciones');
----------------------
DELETE cfg_form_property WHERE CIDCFG IN (2,3) AND CFORM = 'AXISAGD004' AND CITEM = 'ICON_TGRUPO_PER' AND CPRPTY = 1;
Insert into cfg_form_property (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,3,'AXISAGD004','ICON_TGRUPO_PER',1,0);
Insert into cfg_form_property (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,2,'AXISAGD004','ICON_TGRUPO_PER',1,0);
-----------------------------
DELETE AXIS_LITERALES WHERE SLITERA = 89906230;
DELETE AXIS_CODLITERALES where SLITERA = 89906230;
INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) values (89906230,3);
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (8,89906230,'Observaciones de Agenda');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (1,89906230,'Observaciones de Agenda');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (2,89906230,'Observaciones de Agenda');
--------------------------
COMMIT;
EXCEPTION
      WHEN OTHERS THEN
NULL;
END;
/
BEGIN
update cfg_form_property set cvalue = 1  where cform = 'AXISAGD004' and citem = 'CCONAPU' and cidcfg = 2 and cprpty = 2;
update cfg_form_property set cvalue = 1  where cform = 'AXISAGD004' and citem = 'FESTAPU' and cidcfg = 2 and cprpty = 2;
update cfg_form_property set cvalue = 1  where cform = 'AXISAGD004' and citem = 'TAPUNTE' and cidcfg = 2 and cprpty = 2;
update cfg_form_property set cvalue = 1  where cform = 'AXISAGD004' and citem = 'TTITAPU' and cidcfg = 2 and cprpty = 2;
update cfg_form_property set cvalue = 1  where cform = 'AXISAGD004' and citem = 'CUSUARI' and cidcfg = 2 and cprpty = 2;
COMMIT;
EXCEPTION
      WHEN OTHERS THEN
NULL;
END;
/