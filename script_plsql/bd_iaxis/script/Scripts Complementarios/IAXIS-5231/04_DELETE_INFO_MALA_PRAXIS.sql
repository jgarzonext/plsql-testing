DELETE FROM SIN_DESCAUSA WHERE CCAUSIN = 9250;

DELETE FROM SIN_DESMOTCAU WHERE CCAUSIN = 9250 AND CMOTSIN = 0;

--PARA CLINICAS
DELETE FROM SIN_GAR_CAUSA WHERE CCAUSIN = 9250 AND SPRODUC = 8063;

--PARA MEDICAS
DELETE FROM SIN_GAR_CAUSA WHERE CCAUSIN = 9250 AND SPRODUC = 8062;

--PARA PROFESINALES
DELETE FROM SIN_GAR_CAUSA WHERE CCAUSIN = 9250 AND SPRODUC = 8064;

DELETE FROM SIN_CODMOTCAU WHERE CCAUSIN = 9250;

DELETE FROM SIN_CODCAUSA WHERE CCAUSIN = 9250;

COMMIT;