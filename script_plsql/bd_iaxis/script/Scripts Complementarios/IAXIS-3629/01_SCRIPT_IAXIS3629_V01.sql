DELETE FROM RESPUESTAS WHERE CPREGUN = 2876 AND CRESPUE = 24;
DELETE FROM CODIRESPUESTAS WHERE CPREGUN = 2876 AND CRESPUE = 24;

DELETE FROM RESPUESTAS WHERE CPREGUN = 2876 AND CRESPUE = 25;
DELETE FROM CODIRESPUESTAS WHERE CPREGUN = 2876 AND CRESPUE = 25;

DELETE FROM RESPUESTAS WHERE CPREGUN = 2876 AND CRESPUE = 26;
DELETE FROM CODIRESPUESTAS WHERE CPREGUN = 2876 AND CRESPUE = 26;

DELETE FROM RESPUESTAS WHERE CPREGUN = 2876 AND CRESPUE = 27;
DELETE FROM CODIRESPUESTAS WHERE CPREGUN = 2876 AND CRESPUE = 27;

/* INSERCION DE NUEVAS RESPUESTAS PARA LAS ACTIVIDADES*/

INSERT INTO CODIRESPUESTAS (CPREGUN, CRESPUE) VALUES (2876, 24);
INSERT INTO CODIRESPUESTAS (CPREGUN, CRESPUE) VALUES (2876, 25);
INSERT INTO CODIRESPUESTAS (CPREGUN, CRESPUE) VALUES (2876, 26);
INSERT INTO CODIRESPUESTAS (CPREGUN, CRESPUE) VALUES (2876, 27);

INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES (24, 2876, 1, 'Decreto 1082 de 2015 - ANI', 0);
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES (24, 2876, 2, 'Decreto 1082 de 2015 - ANI', 0);
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES (24, 2876, 8, 'Decreto 1082 de 2015 - ANI', 0);

INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES (25, 2876, 1, 'Decreto 1082 de 2015 - ANI', 1);
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES (25, 2876, 2, 'Decreto 1082 de 2015 - ANI', 1);
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES (25, 2876, 8, 'Decreto 1082 de 2015 - ANI', 1);

INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES (26, 2876, 1, 'Decreto 1082 de 2015 - ANI', 2);
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES (26, 2876, 2, 'Decreto 1082 de 2015 - ANI', 2);
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES (26, 2876, 8, 'Decreto 1082 de 2015 - ANI', 2);

INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES (27, 2876, 1, 'Decreto 1082 de 2015 - ANI', 3);
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES (27, 2876, 2, 'Decreto 1082 de 2015 - ANI', 3);
INSERT INTO RESPUESTAS (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI) VALUES (27, 2876, 8, 'Decreto 1082 de 2015 - ANI', 3);

/* ACTUALIZACION DE CONSULTA DINAMICA DE RESPUESTAS A LA PREGUNTA 2876*/

UPDATE CODIPREGUN SET TCONSULTA = 'SELECT CRESPUE, TRESPUE FROM (SELECT * FROM RESPUESTAS
       WHERE CPREGUN=2876 AND CIDIOMA=:PMT_IDIOMA AND CACTIVI = :PMT_CACTIVI) A,
       (SELECT NVL(MAX(R.CRESPUE),1) CATEG FROM ESTPREGUNPOLSEG R
       WHERE CPREGUN = 2875 AND NMOVIMI = (SELECT MAX(NMOVIMI)
       FROM ESTPREGUNPOLSEG P2 WHERE P2.CPREGUN = 2875)) B
WHERE ((:PMT_SPRODUC NOT IN (8054,8055,8056,8057,8058,8059,8060,8061, 8093, 8094, 8095) AND CRESPUE BETWEEN 1 AND 5)
	 OR(:PMT_SPRODUC NOT IN (8054,8055,8056,8057,8058,8059,8060,8061, 8093, 8094, 8095) AND CRESPUE BETWEEN 19 AND 21)
	 OR(:PMT_SPRODUC NOT IN (8054,8055,8056,8057,8058,8059,8060,8061, 8093, 8094, 8095) AND CRESPUE BETWEEN 24 AND 27)
	 OR(:PMT_SPRODUC NOT IN (8054,8055,8056,8057,8058,8059,8060,8061, 8093, 8094, 8095) AND CRESPUE = 22)
	 OR(:PMT_SPRODUC NOT IN (8054,8055,8056,8057,8058,8059,8060,8061, 8093, 8094, 8095) AND CRESPUE = 23)
   OR (:PMT_SPRODUC IN (8054,8055,8056,8057,8058,8059,8060,8061) AND CRESPUE BETWEEN 6 AND 10 AND CATEG = 1)
   OR (:PMT_SPRODUC IN (8054,8055,8056,8057,8058,8059,8060,8061) AND CRESPUE BETWEEN 11 AND 12 AND CATEG = 2)
   OR (:PMT_SPRODUC IN (8054,8055,8056,8057,8058,8059,8060,8061) AND CRESPUE BETWEEN 13 AND 14 AND CATEG = 3)
   OR (:PMT_SPRODUC IN (8054,8055,8056,8057,8058,8059,8060,8061) AND CRESPUE = 15 AND CATEG = 4)
   OR (:PMT_SPRODUC IN (8093) AND CRESPUE = 16)
   OR (:PMT_SPRODUC IN (8094) AND CRESPUE = 17)
   OR (:PMT_SPRODUC IN (8095) AND CRESPUE = 18))' WHERE CPREGUN = 2876;
   
   
 /* ACTUALIZACION DE CONSULTA DINAMICA DE RESPUESTAS A LA PREGUNTA 2876*/

UPDATE CODIPREGUN SET TCONSULTA = 'SELECT DISTINCT (c.idconvcomesp), c.tdesconv
  FROM convcomisesp c
	WHERE EXISTS (SELECT 1
                 FROM convcomespprod p
                WHERE p.idconvcomesp = c.idconvcomesp
                  AND p.sproduc = :PMT_SPRODUC)
   AND EXISTS (SELECT 1
                 FROM convcomespage a
                WHERE a.idconvcomesp = c.idconvcomesp
                  AND a.cagente = :PMT_CAGENTE)
   AND EXISTS (SELECT 1
                 FROM convcomesptom t
                WHERE t.idconvcomesp = c.idconvcomesp AND t.sperson = :PMT_ASEGURADOPER)
   AND f_sysdate BETWEEN c.finivig AND nvl(c.ffinvig, f_sysdate)
   AND :PMT_CACTIVI = 1 ' WHERE CPREGUN = 2913;

commit;
/