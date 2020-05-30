/* Formatted on 05/09/2019 17:30*/
/* **************************** 05/09/2019 17:30 **********************************************************************
Versi�n           Descripci�n
01.               - Se parametrizan los valores por defecto de la lista desplegable "R�gimen fiscal" seg�n el valor de
                    la lista desplegable "Tipo de vinculaci�n" de la pantalla AXISPER010
IAXIS-4832        05/09/2019 Daniel Rodr�guez
***********************************************************************************************************************/
BEGIN
--
DELETE FROM cfg_form_dep c
 WHERE c.cempres = 24
   AND c.ccfgdep = 99840299
   AND c.citorig = 'CCODVIN'
   AND c.tvalorig IN (0, 1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 12, 13)
   AND c.citdest = 'CREGIMENFISCAL'
   AND c.cprpty = 7;
--
DELETE FROM cfg_form_property c
 WHERE c.cempres = 24
   AND c.cidcfg IN (91, 51, 50, 1007, 52, 80, 90, 70, 92, 60)
   AND c.cprpty = 4
   AND c.citem = 'CCODVIN'
   AND c.cform = 'AXISPER010';
--
INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 52, 'AXISPER010', 'CCODVIN', 4, 99840299);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 51, 'AXISPER010', 'CCODVIN', 4, 99840299);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 50, 'AXISPER010', 'CCODVIN', 4, 99840299);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 1007, 'AXISPER010', 'CCODVIN', 4, 99840299);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 91, 'AXISPER010', 'CCODVIN', 4, 99840299);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 80, 'AXISPER010', 'CCODVIN', 4, 99840299);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 90, 'AXISPER010', 'CCODVIN', 4, 99840299);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 70, 'AXISPER010', 'CCODVIN', 4, 99840299);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 92, 'AXISPER010', 'CCODVIN', 4, 99840299);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 60, 'AXISPER010', 'CCODVIN', 4, 99840299);
--
INSERT INTO cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840299, 'CCODVIN', '0', 'CREGIMENFISCAL', 7, 8);

INSERT INTO cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840299, 'CCODVIN', '1', 'CREGIMENFISCAL', 7, 8);

INSERT INTO cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840299, 'CCODVIN', '2', 'CREGIMENFISCAL', 7, -2147483648);

INSERT INTO cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840299, 'CCODVIN', '3', 'CREGIMENFISCAL', 7, -2147483648);

INSERT INTO cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840299, 'CCODVIN', '4', 'CREGIMENFISCAL', 7, -2147483648);

INSERT INTO cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840299, 'CCODVIN', '6', 'CREGIMENFISCAL', 7, 8);

INSERT INTO cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840299, 'CCODVIN', '7', 'CREGIMENFISCAL', 7, -2147483648);

INSERT INTO cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840299, 'CCODVIN', '8', 'CREGIMENFISCAL', 7, 8);

INSERT INTO cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840299, 'CCODVIN', '9', 'CREGIMENFISCAL', 7, 8);

INSERT INTO cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840299, 'CCODVIN', '10', 'CREGIMENFISCAL', 7, 8);

INSERT INTO cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840299, 'CCODVIN', '11', 'CREGIMENFISCAL', 7, 8);

INSERT INTO cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840299, 'CCODVIN', '12', 'CREGIMENFISCAL', 7, 8);

INSERT INTO cfg_form_dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840299, 'CCODVIN', '13', 'CREGIMENFISCAL', 7, 8);
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