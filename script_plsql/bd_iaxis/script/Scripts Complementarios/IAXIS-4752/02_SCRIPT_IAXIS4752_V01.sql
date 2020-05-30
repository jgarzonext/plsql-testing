/* Formatted on 19/07/2019 12:00*/
/* **************************** 19/07/2019 12:00 **********************************************************************
Versión           Descripción
01.               -Este script actualiza las listas de valores de acuerdo a la recomendación del PO.
IAXIS-4752         19/07/2019 Daniel Rodríguez
***********************************************************************************************************************/
-- Vinculo/Relación SARLAFT (Persona Natural)
DELETE FROM detvalores d WHERE d.cvalor = 790000 AND d.cidioma IN (1,2,8) AND d.catribu IN (1,2,3,10,11,12);
DELETE FROM valores v WHERE v.cvalor = 790000 AND v.cidioma IN (1,2,8);
--
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (790000, 1, 'Vincle/Relació SARLAFT (PN)');
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (790000, 2, 'Vinculo/Relación SARLAFT (PN)');
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (790000, 8, 'Vinculo/Relación SARLAFT (PN)');
--
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (790000, 1, 1, 'Hasta segundo grado de consanguinidad');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (790000, 1, 2, 'Hasta segundo grado de afinidad');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (790000, 1, 3, 'Primero Civil');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (790000, 2, 1, 'Hasta segundo grado de consanguinidad');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (790000, 2, 2, 'Hasta segundo grado de afinidad');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (790000, 2, 3, 'Primero Civil');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (790000, 8, 1, 'Hasta segundo grado de consanguinidad');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (790000, 8, 2, 'Hasta segundo grado de afinidad');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (790000, 8, 3, 'Primero Civil');
-- Vinculo/Relación SARLAFT (Persona Jurídica)
DELETE FROM detvalores d WHERE d.cvalor = 8002025 AND d.cidioma IN (1,2,8) AND d.catribu IN (10,11,12);
DELETE FROM valores v WHERE v.cvalor = 8002025 AND v.cidioma IN (1,2,8);
--
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (8002025, 1, 'Vincle/Relació SARLAFT (PJ)');
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (8002025, 2, 'Vinculo/Relación SARLAFT (PJ)');
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (8002025, 8, 'Vinculo/Relación SARLAFT (PJ)');
--
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (8002025, 1, 10, 'Representantes Legales');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (8002025, 1, 11, 'Miembros de junta');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (8002025, 1, 12, 'Accionistas');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (8002025, 2, 10, 'Representantes Legales');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (8002025, 2, 11, 'Miembros de junta');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (8002025, 2, 12, 'Accionistas');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (8002025, 8, 10, 'Representantes Legales');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (8002025, 8, 11, 'Miembros de junta');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (8002025, 8, 12, 'Accionistas');
--
COMMIT;
--
/





