INSERT INTO SIN_CODCAUSA(CCAUSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, CATRIBU) VALUES(9177, 'AXIS', '05/04/2019', NULL, NULL, 7);

INSERT INTO SIN_DESCAUSA(CCAUSIN, CIDIOMA, TCAUSIN) VALUES(9177, 1, 'Honoraris per representació judicial');

INSERT INTO SIN_DESCAUSA(CCAUSIN, CIDIOMA, TCAUSIN) VALUES(9177, 2, 'Honorarios por representación judicial');

INSERT INTO SIN_DESCAUSA(CCAUSIN, CIDIOMA, TCAUSIN) VALUES(9177, 8, 'Honorarios por representación judicial');

INSERT INTO SIN_CODMOTCAU(CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, CNOPERIT)
    VALUES(9177, 0, 'AXIS_CONF', '04/08/2016', NULL, NULL, NULL);

--PARA CLINICAS    
INSERT INTO SIN_GAR_CAUSA(SPRODUC, CACTIVI, CGARANT, CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, NUMSINI)
    VALUES(8063, 0, 7062, 9177, 0, 'AXIS', '05/04/2019', NULL, NULL, NULL);

INSERT INTO SIN_GAR_CAUSA(SPRODUC, CACTIVI, CGARANT, CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, NUMSINI)
    VALUES(8063, 0, 7042, 9177, 0, 'AXIS', '05/04/2019', NULL, NULL, NULL);	
	
--PARA MEDICAS	
INSERT INTO SIN_GAR_CAUSA(SPRODUC, CACTIVI, CGARANT, CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, NUMSINI)
    VALUES(8062, 0, 7062, 9177, 0, 'AXIS', '05/04/2019', NULL, NULL, NULL);

INSERT INTO SIN_GAR_CAUSA(SPRODUC, CACTIVI, CGARANT, CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, NUMSINI)
    VALUES(8062, 0, 7042, 9177, 0, 'AXIS', '05/04/2019', NULL, NULL, NULL);	
    
--PARA PROFESINOALES
INSERT INTO SIN_GAR_CAUSA(SPRODUC, CACTIVI, CGARANT, CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, NUMSINI)
VALUES(8064, 0, 7042, 9251, 0, 'AXIS', '05/04/2019', NULL, NULL, NULL);
    
INSERT INTO SIN_GAR_TRAMITACION(SPRODUC, CACTIVI, CTRAMIT,CGARANT)
VALUES(8064,0,0,7042);

INSERT INTO SIN_GAR_CAUSA(SPRODUC, CACTIVI, CGARANT, CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, NUMSINI)
VALUES(8064, 0, 7062, 9251, 0, 'AXIS', '05/04/2019', NULL, NULL, NULL);
    
INSERT INTO SIN_GAR_TRAMITACION(SPRODUC, CACTIVI, CTRAMIT,CGARANT)
VALUES(8064,0,0,7062);


INSERT INTO SIN_DESMOTCAU(CCAUSIN, CMOTSIN, CIDIOMA, TMOTSIN)
    VALUES(9177, 0, 1, 'Honoraris per representació judicial');

INSERT INTO SIN_DESMOTCAU(CCAUSIN, CMOTSIN, CIDIOMA, TMOTSIN)
    VALUES(9177, 0, 2, 'Honorarios por representación judicial');

INSERT INTO SIN_DESMOTCAU(CCAUSIN, CMOTSIN, CIDIOMA, TMOTSIN)
    VALUES(9177, 0, 8, 'Honorarios por representación judicial');

COMMIT;	