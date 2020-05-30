/* Formatted on 10/01/2020 17:30*/
/* **************************** 10/01/2020 17:30 **********************************************************************
Versión           Descripción
01.               - Para la pantalla AXISPER010: Datos Persona, al seleccionar una persona con tipo de documento "Código persona extranjera" los campos:
                    * Código DANE
                    * País
                    * Departamento
                    * Ciudad
                    Pasarán a ser opcionales (No obligatorios) de acuerdo a lo sugerido en la descripción del defecto.
IAXIS-7810          10/01/2020 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
DELETE FROM cfg_form_dep c
 WHERE c.cempres = 24
   AND c.ccfgdep = 99840306
   AND c.citorig = 'CTIPIDE'
   AND c.citdest IN ('CPOSTAL',
                     'CPAIS_DIRECCION',
                     'CPROVIN',
                     'CPOBLAC')
   AND c.cprpty = 3;
--
DELETE FROM cfg_form_property c
 WHERE c.cempres = 24
   AND c.cidcfg IN (1,30,31,32,33,50,51,52,60,70,80,90,91,92,1007,100000)
   AND c.cprpty = 4
   AND c.citem = 'CTIPIDE'
   AND c.cform = 'AXISPER010';
--
INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 1, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 30, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 31, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 32, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 33, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 50, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 51, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 52, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 60, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 70, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 80, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 90, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 91, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 92, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 1007, 'AXISPER010', 'CTIPIDE', 4, 99840306);

INSERT INTO cfg_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
VALUES (24, 100000, 'AXISPER010', 'CTIPIDE', 4, 99840306);
--
INSERT INTO Cfg_Form_Dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840306, 'CTIPIDE', '96', 'CPAIS_DIRECCION', 3, 0);

INSERT INTO Cfg_Form_Dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840306, 'CTIPIDE', '96', 'CPROVIN', 3, 0);

INSERT INTO Cfg_Form_Dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840306, 'CTIPIDE', '96', 'CPOBLAC', 3, 0);

INSERT INTO Cfg_Form_Dep (CEMPRES, CCFGDEP, CITORIG, TVALORIG, CITDEST, CPRPTY, TVALUE)
VALUES (24, 99840306, 'CTIPIDE', '96', 'CPOSTAL', 3, 0);
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
