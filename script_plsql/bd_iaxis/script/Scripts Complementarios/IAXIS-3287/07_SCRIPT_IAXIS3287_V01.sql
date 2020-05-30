/* Formatted on 10/06/2019 10:28*/
/* **************************** 17/06/2019 05:30 **********************************************************************
Versión           Descripción
01.               -Este script actualiza los campos obligatorios del FCC jurídica y natural.
IAXIS-3287         17/06/2019 Daniel Rodríguez
***********************************************************************************************************************/
-- Actualización de campos obligatorios Persona Jurídica.
DELETE FROM cfg_form_property c
 WHERE c.cempres = 24
   AND c.cidcfg IN (0, 1)
   AND c.citem IN ( 'IINGRESOS',
                    'IEGRESOS',
                    'IACTIVOS',
                    'IPASIVOS',
                    'IPATRIMONIO',
                    'IOTROINGRESO',
                    'TCONCOTRING',
                    'CORIGENFON')
   AND c.cprpty = 3
   AND c.cform = 'AXISPER047';
--
DELETE FROM cfg_form_property c
 WHERE c.cempres = 24
   AND c.cidcfg IN (0, 1)
   AND c.citem IN ( 'PER_TIPDOCUMENT','FEXPEDICDOC')
   AND c.cprpty = 2
   AND c.cform = 'AXISPER047';
--
insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'IINGRESOS', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'IINGRESOS', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'IEGRESOS', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'IEGRESOS', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'IACTIVOS', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'IACTIVOS', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'IPASIVOS', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'IPASIVOS', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'IPATRIMONIO', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'IPATRIMONIO', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'IOTROINGRESO', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'IOTROINGRESO', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'TCONCOTRING', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'TCONCOTRING', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 0, 'AXISPER047', 'CORIGENFON', 3, 1);

insert into cfG_form_property (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
values (24, 1, 'AXISPER047', 'CORIGENFON', 3, 1);

--
COMMIT;
/




