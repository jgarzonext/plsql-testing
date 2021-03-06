
UPDATE ACTIVIPROD SET CACTIVO = '0' WHERE sproduc = 80044 and cactivi in (3,4);

UPDATE ACTIVISEGU SET TTITULO = 'Reglamentaria' WHERE cramo = 802 and cactivi = 2;

DELETE FROM RESPUESTAS WHERE CPREGUN = 2875 AND CRESPUE IN (5,6,7,8,9,10,11);

DELETE FROM CODIRESPUESTAS WHERE CPREGUN = 2875 AND CRESPUE IN (5,6,7,8,9,10,11);

INSERT INTO CODIRESPUESTAS (CPREGUN, CRESPUE) VALUES ('2875', '5');
INSERT INTO CODIRESPUESTAS (CPREGUN, CRESPUE) VALUES ('2875', '6');
INSERT INTO CODIRESPUESTAS (CPREGUN, CRESPUE) VALUES ('2875', '7');
INSERT INTO CODIRESPUESTAS (CPREGUN, CRESPUE) VALUES ('2875', '8');
INSERT INTO CODIRESPUESTAS (CPREGUN, CRESPUE) VALUES ('2875', '9');
INSERT INTO CODIRESPUESTAS (CPREGUN, CRESPUE) VALUES ('2875', '10');
INSERT INTO CODIRESPUESTAS (CPREGUN, CRESPUE) VALUES ('2875', '11');

INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('5', '2875', '8', 'Decreto 1073 de 2015', '2');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('5', '2875', '2', 'Decreto 1073 de 2015', '2');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('5', '2875', '1', 'Decreto 1073 de 2015', '2');

INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('6', '2875', '8', 'R.C.EMP. DE VIGILANCIA', '2');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('6', '2875', '2', 'R.C.EMP. DE VIGILANCIA', '2');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('6', '2875', '1', 'R.C.EMP. DE VIGILANCIA', '2');

INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('11', '2875', '8', 'DEC. 1079 de 2015 TRANSP. M/CIA PELIGROSA POR CARRETERA
', '2');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('11', '2875', '2', 'DEC. 1079 de 2015 TRANSP. M/CIA PELIGROSA POR CARRETERA
', '2');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('11', '2875', '1', 'DEC. 1079 de 2015 TRANSP. M/CIA PELIGROSA POR CARRETERA
', '2');

INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('7', '2875', '8', 'RC DERIVADA DE TRC', '5');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('7', '2875', '2', 'RC DERIVADA DE TRC', '5');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('7', '2875', '1', 'RC DERIVADA DE TRC', '5');

INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('8', '2875', '8', 'RC DERIVADA DE PROPERTY', '5');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('8', '2875', '2', 'RC DERIVADA DE PROPERTY', '5');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('8', '2875', '1', 'RC DERIVADA DE PROPERTY', '5');

INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('9', '2875', '8', 'RC GENERAL CONSTRUCCION', '5');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('9', '2875', '2', 'RC GENERAL CONSTRUCCION', '5');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('9', '2875', '1', 'RC GENERAL CONSTRUCCION', '5');

INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('10', '2875', '8', 'RC GENERAL OTRAS INDUSTRIAS', '5');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('10', '2875', '2', 'RC GENERAL OTRAS INDUSTRIAS', '5');
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES ('10', '2875', '1', 'RC GENERAL OTRAS INDUSTRIAS', '5');


UPDATE CODIPREGUN SET TCONSULTA = 'SELECT R.CRESPUE, R.TRESPUE
                    FROM RESPUESTAS R
                    WHERE R.CPREGUN = 2875
                    AND R.CIDIOMA = :PMT_IDIOMA
                    AND ((:PMT_SPRODUC = 80044 AND :PMT_CACTIVI = 2 AND R.CRESPUE IN (0,1,2,3,4,5,6,11))
                        OR (:PMT_SPRODUC = 80044 AND :PMT_CACTIVI IN (3,4,5) AND R.CRESPUE IN (0,7,8,9,10))) order by R.CRESPUE' WHERE cpregun = 2875;
						
UPDATE RESPUESTAS SET TRESPUE = 'Decreto 4299 de 2005' WHERE crespue = 1 AND cpregun = 2875;
UPDATE RESPUESTAS SET TRESPUE = 'Decreto 1609 de 2002' WHERE crespue = 2 AND cpregun = 2875;
UPDATE RESPUESTAS SET TRESPUE = 'Decreto 1605 de 2002' WHERE crespue = 3 AND cpregun = 2875;
UPDATE RESPUESTAS SET TRESPUE = 'MERCANCIA  EXTRA PESADA - EXTRADIMENSIONADA' WHERE crespue = 4 AND cpregun = 2875;
					
												
commit;
/