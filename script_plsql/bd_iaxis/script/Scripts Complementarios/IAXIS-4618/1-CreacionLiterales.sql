--Listado Mensual Reserva de Primas
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89907046;

DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89907046;

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89907046,2);

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89907046, 'Llistat Mensual Reserva de Primes');

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89907046, 'Listado Mensual Reserva de Primas');

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89907046, 'Listado Mensual Reserva de Primas'); 


COMMIT;