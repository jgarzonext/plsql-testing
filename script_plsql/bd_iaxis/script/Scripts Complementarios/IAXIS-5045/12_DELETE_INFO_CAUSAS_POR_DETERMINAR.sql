DELETE FROM SIN_DESCAUSA WHERE CCAUSIN = 9203;

DELETE FROM SIN_DESMOTCAU WHERE CCAUSIN = 9203 AND CMOTSIN = 0;

--PARA CLINICAS
DELETE FROM SIN_GAR_CAUSA WHERE CCAUSIN = 9203 AND SPRODUC = 8063;

--PARA MEDICAS
DELETE FROM SIN_GAR_CAUSA WHERE CCAUSIN = 9203 AND SPRODUC = 8062;

--PARA PROFESIONALES
--DELETE FROM SIN_GAR_CAUSA WHERE CCAUSIN = 9203 AND SPRODUC = 8064;

DELETE FROM SIN_GAR_CAUSA_MOTIVO WHERE SCAUMOT IN (SELECT SCAUMOT FROM SIN_CAUSA_MOTIVO WHERE CCAUSIN = 9203);
DELETE FROM SIN_FOR_CAUSA_MOTIVO WHERE SCAUMOT IN (SELECT SCAUMOT FROM SIN_CAUSA_MOTIVO WHERE CCAUSIN = 9203);
DELETE FROM SIN_DET_CAUSA_MOTIVO WHERE SCAUMOT IN (SELECT SCAUMOT FROM SIN_CAUSA_MOTIVO WHERE CCAUSIN = 9203);
DELETE FROM SIN_CAUSA_MOTIVO WHERE CCAUSIN = 9203;
DELETE FROM SIN_GAR_CAUSA WHERE CCAUSIN = 9203;
DELETE FROM SIN_CODMOTCAU WHERE CCAUSIN = 9203;
DELETE FROM SIN_CODCAUSA WHERE CCAUSIN = 9203;

COMMIT;