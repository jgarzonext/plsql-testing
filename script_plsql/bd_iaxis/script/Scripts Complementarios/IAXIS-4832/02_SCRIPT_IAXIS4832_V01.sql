/* Formatted on 04/09/2019 17:30*/
/* **************************** 04/09/2019 17:30 **********************************************************************
Versión           Descripción
01.               - Se quita obligatoriedad del campo "Teléfono fijo" en la pantalla AXISPER010
IAXIS-4832        04/09/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
DELETE FROM cfg_form_property c
 WHERE c.cempres = 24
   AND c.cidcfg IN (91, 50, 1007, 51, 52, 80, 90, 70, 92, 60)
   AND c.cprpty = 3
   AND c.citem = 'TLFFIJO'
   AND c.cform = 'AXISPER010';
--
INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 91, 'AXISPER010', 'TLFFIJO', 3, 0);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 50, 'AXISPER010', 'TLFFIJO', 3, 0);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 1007, 'AXISPER010', 'TLFFIJO', 3, 0);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 51, 'AXISPER010', 'TLFFIJO', 3, 0);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 52, 'AXISPER010', 'TLFFIJO', 3, 0);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 80, 'AXISPER010', 'TLFFIJO', 3, 0);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 90, 'AXISPER010', 'TLFFIJO', 3, 0);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 70, 'AXISPER010', 'TLFFIJO', 3, 0);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 92, 'AXISPER010', 'TLFFIJO', 3, 0);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 60, 'AXISPER010', 'TLFFIJO', 3, 0);
--
COMMIT;
--
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     ROLLBACK;
End;
/
