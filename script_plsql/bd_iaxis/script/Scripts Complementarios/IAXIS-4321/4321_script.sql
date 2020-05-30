/* Formatted on 05/07/2019 04:06 AM IST */
/***************************** 05/07/2019 04:06 AM IST ****************************************************************
Versión         Descripción
02              - Errores Ramo Cumplimiento
					Se evidenció que cuando se realizan suplementos y se llega a la pantalla de no existe el boton "Anterior" este botón es
					necesario para cuando los terceros tienen marcas y el usuario solicita la desmarcacion que este se pueda devolver 
					mientras desmarcan el cliente. Validar si el impacto es muy alto en la operación o si se puede cubrir mediante 
					procedimiento.
IAXIS-4321        05/07/2019 Pranay Khobragade
**********************************************************************************************************************/

SET SERVEROUTPUT on;
BEGIN

-- For insertion
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,611001,'AXISCTR026','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,240239,'AXISCTR207','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,803809,'AXISCTR040','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,240209,'AXISCTR040','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,806201,'AXISCTR041','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,808601,'AXISCTR041','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,240244,'AXISCTR041','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,803801,'AXISCTR041','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,806301,'AXISCTR041','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,808801,'AXISCTR041','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,808901,'AXISCTR041','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,806401,'AXISCTR041','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,808701,'AXISCTR041','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,808501,'AXISCTR041','BT_ANT',1,1);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,806501,'AXISCTR041','BT_ANT',1,1);

-- For updation
update CFG_FORM_PROPERTY set CVALUE=1 where cidcfg=240612 and cform='AXISCTR026' and citem='BT_ANT';
update cfg_wizard_forms wf set wf.CFORM_ANT='AXISCTR040' WHERE wf.cidcfg = 240696 and wf.cform_act = 'AXISCTR112' and wf.cempres = 24;

COMMIT;

EXCEPTION
   WHEN OTHERS THEN
	dbms_output.put_line('ERROR OCCURED--> ' || SQLERRM);
    dbms_output.put_line('ERROR OCCURED--> ' || DBMS_UTILITY.format_error_backtrace);
    rollback;
END;
/
