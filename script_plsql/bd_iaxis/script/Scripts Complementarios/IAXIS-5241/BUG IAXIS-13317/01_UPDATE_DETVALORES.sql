
/*Update Detvalores bug IAXIS-13317 JRVG 03/31/2020*/
--
DELETE DETVALORES WHERE CVALOR = 800018 AND CIDIOMA = 8 AND CATRIBU = 22;
DELETE DETVALORES WHERE CVALOR = 800018 AND CIDIOMA = 2 AND CATRIBU = 22; 
DELETE DETVALORES WHERE CVALOR = 800018 AND CIDIOMA = 1 AND CATRIBU = 22; 
COMMIT;

INSERT INTO DETVALORES (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (800018, 8, 22, 'Auxiliar SAP - Cuenta 27');
INSERT INTO DETVALORES (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (800018, 2, 22, 'Auxiliar SAP - Cuenta 27');
INSERT INTO DETVALORES (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (800018, 1, 22, 'Auxiliar SAP - Cuenta 27');
COMMIT;
/