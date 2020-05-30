/* Formatted on 10/06/2019 10:28*/
/* **************************** 10/06/2019 10:28 **********************************************************************
Versi�n           Descripci�n
01.               -Este script agrega el listado de valores la lista "Resultado Siniestro"
IAXIS-3287         10/06/2019 Daniel Rodr�guez
***********************************************************************************************************************/
-- Resultado Siniestro
DELETE FROM detvalores d WHERE d.cvalor = 8002021 AND d.cidioma IN (1,2,8) AND d.catribu IN (1,2);
DELETE FROM valores v WHERE v.cvalor = 8002021 AND v.cidioma IN (1,2,8);
--
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (8002021, 1, 'Resultat Sinistre');
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (8002021, 2, 'Resultado Siniestro');
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (8002021, 8, 'Resultado Siniestro');
--
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002021, 1, 1, 'Reclamaci�');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002021, 1, 2, 'Indemnitzaci�');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002021, 2, 1, 'Reclamaci�n');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002021, 2, 2, 'Indemnizaci�n');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002021, 8, 1, 'Reclamaci�n');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002021, 8, 2, 'Indemnizaci�n');
--
COMMIT;
/
