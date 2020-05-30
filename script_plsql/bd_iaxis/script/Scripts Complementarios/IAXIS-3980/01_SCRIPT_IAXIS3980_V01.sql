/* formatted on 21/07/2019 16:30*/
/* **************************** 21/07/2019 16:30 **********************************************************************
Versin           Descripcin
01.               - Registros requeridos (Insert/update) para configurar la pregunta 9800: Aplicar gastos de expedicin
                    para permitir al usuario incluir o no el cobro de gastos de expedicin durante endosos econmicos.
IAXIS-3980        21/07/2019
********************************************************************************************************************* */
--
DELETE FROM pregunpro p WHERE p.cpregun = 9800 AND cmodali IN (6,7,10,12,14,15) AND p.ccolect = 0 AND p.cramo = 801 AND p.ctipseg IN (1,2);
DELETE FROM respuestas r WHERE r.cpregun = 9800 AND r.crespue IN (0,1) AND cidioma IN (1,2,8);
DELETE FROM codirespuestas c WHERE c.cpregun = 9800 AND c.crespue IN (0,1);
DELETE FROM preguntas p WHERE p.cpregun = 9800 AND p.cidioma IN (1,2,8);
DELETE FROM codipregun c WHERE c.cpregun = 9800;
--
INSERT INTO codipregun (cpregun,ctippre,ctippor,ctipgru,tconsulta,timagen) VALUES (9800,1,NULL,3,NULL,NULL);
--
INSERT INTO preguntas (cpregun,cidioma,tpregun) VALUES (9800,1,'Aplicar Despeses dExpedici');
INSERT INTO preguntas (cpregun,cidioma,tpregun) VALUES (9800,2,'Aplicar Gastos de Expedicin');
INSERT INTO preguntas (cpregun,cidioma,tpregun) VALUES (9800,8,'Aplicar Gastos de Expedicin');
--
INSERT INTO codirespuestas (cpregun,crespue) VALUES (9800,0);
INSERT INTO codirespuestas (cpregun,crespue) VALUES (9800,1);
--
INSERT INTO respuestas (crespue,cpregun,cidioma,trespue,cactivi) VALUES (0,9800,1,'No',NULL);
INSERT INTO respuestas (crespue,cpregun,cidioma,trespue,cactivi) VALUES (1,9800,1,'Si',NULL);
INSERT INTO respuestas (crespue,cpregun,cidioma,trespue,cactivi) VALUES (0,9800,2,'No',NULL);
INSERT INTO respuestas (crespue,cpregun,cidioma,trespue,cactivi) VALUES (1,9800,2,'Si',NULL);
INSERT INTO respuestas (crespue,cpregun,cidioma,trespue,cactivi) VALUES (0,9800,8,'No',NULL);
INSERT INTO respuestas (crespue,cpregun,cidioma,trespue,cactivi) VALUES (1,9800,8,'Si',NULL);
--
INSERT INTO pregunpro (CPREGUN, CMODALI, CCOLECT, CRAMO, CTIPSEG, SPRODUC, CPRETIP, NPREORD, TPREFOR, CPREOBL, NPREIMP, CRESDEF, COFERSN, CTABLA, TVALFOR, CMODO, CNIVEL, CTARPOL, CVISIBLE, ESCCERO, VISIBLECOL, VISIBLECERT, CRECARG, CCALCULAR, TMODALIDAD, CTIPCONV)
VALUES (9800, 6, 0, 801, 1, 80001, 1, 3, NULL, 1, NULL, NULL, 1, NULL, NULL, 'S', 'R', 0, 2, 0, 1, 1, 0, NULL, NULL, NULL);

INSERT INTO pregunpro (CPREGUN, CMODALI, CCOLECT, CRAMO, CTIPSEG, SPRODUC, CPRETIP, NPREORD, TPREFOR, CPREOBL, NPREIMP, CRESDEF, COFERSN, CTABLA, TVALFOR, CMODO, CNIVEL, CTARPOL, CVISIBLE, ESCCERO, VISIBLECOL, VISIBLECERT, CRECARG, CCALCULAR, TMODALIDAD, CTIPCONV)
VALUES (9800, 7, 0, 801, 1, 80002, 1, 3, NULL, 1, NULL, NULL, 1, NULL, NULL, 'S', 'R', 0, 2, 0, 1, 1, 0, NULL, NULL, NULL);

INSERT INTO pregunpro (CPREGUN, CMODALI, CCOLECT, CRAMO, CTIPSEG, SPRODUC, CPRETIP, NPREORD, TPREFOR, CPREOBL, NPREIMP, CRESDEF, COFERSN, CTABLA, TVALFOR, CMODO, CNIVEL, CTARPOL, CVISIBLE, ESCCERO, VISIBLECOL, VISIBLECERT, CRECARG, CCALCULAR, TMODALIDAD, CTIPCONV)
VALUES (9800, 7, 0, 801, 2, 80003, 1, 3, NULL, 1, NULL, NULL, 1, NULL, NULL, 'S', 'R', 0, 2, 0, 1, 1, 0, NULL, NULL, NULL);

INSERT INTO pregunpro (CPREGUN, CMODALI, CCOLECT, CRAMO, CTIPSEG, SPRODUC, CPRETIP, NPREORD, TPREFOR, CPREOBL, NPREIMP, CRESDEF, COFERSN, CTABLA, TVALFOR, CMODO, CNIVEL, CTARPOL, CVISIBLE, ESCCERO, VISIBLECOL, VISIBLECERT, CRECARG, CCALCULAR, TMODALIDAD, CTIPCONV)
VALUES (9800, 10, 0, 801, 1, 80007, 1, 3, NULL, 1, NULL, NULL, 1, NULL, NULL, 'S', 'R', 0, 2, 0, 1, 1, 0, NULL, NULL, NULL);

INSERT INTO pregunpro (CPREGUN, CMODALI, CCOLECT, CRAMO, CTIPSEG, SPRODUC, CPRETIP, NPREORD, TPREFOR, CPREOBL, NPREIMP, CRESDEF, COFERSN, CTABLA, TVALFOR, CMODO, CNIVEL, CTARPOL, CVISIBLE, ESCCERO, VISIBLECOL, VISIBLECERT, CRECARG, CCALCULAR, TMODALIDAD, CTIPCONV)
VALUES (9800, 12, 0, 801, 1, 80009, 1, 3, NULL, 1, NULL, NULL, 1, NULL, NULL, 'S', 'R', 0, 2, 0, 1, 1, 0, NULL, NULL, NULL);

INSERT INTO pregunpro (CPREGUN, CMODALI, CCOLECT, CRAMO, CTIPSEG, SPRODUC, CPRETIP, NPREORD, TPREFOR, CPREOBL, NPREIMP, CRESDEF, COFERSN, CTABLA, TVALFOR, CMODO, CNIVEL, CTARPOL, CVISIBLE, ESCCERO, VISIBLECOL, VISIBLECERT, CRECARG, CCALCULAR, TMODALIDAD, CTIPCONV)
VALUES (9800, 14, 0, 801, 1, 80011, 1, 3, NULL, 1, NULL, NULL, 1, NULL, NULL, 'S', 'R', 0, 2, 0, 1, 1, 0, NULL, NULL, NULL);

INSERT INTO pregunpro (CPREGUN, CMODALI, CCOLECT, CRAMO, CTIPSEG, SPRODUC, CPRETIP, NPREORD, TPREFOR, CPREOBL, NPREIMP, CRESDEF, COFERSN, CTABLA, TVALFOR, CMODO, CNIVEL, CTARPOL, CVISIBLE, ESCCERO, VISIBLECOL, VISIBLECERT, CRECARG, CCALCULAR, TMODALIDAD, CTIPCONV)
VALUES (9800, 15, 0, 801, 1, 80012, 1, 3, NULL, 1, NULL, NULL, 1, NULL, NULL, 'S', 'R', 0, 2, 0, 1, 1, 0, NULL, NULL, NULL);

-- La pregunta se marcar obligatoria para todos los productos de Cumplimiento
UPDATE pregunpro SET cpreobl = 1 WHERE cpregun = 9800;
--
COMMIT;
/

