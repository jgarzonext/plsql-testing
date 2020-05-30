INSERT INTO SIN_CODCAUSA(CCAUSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, CATRIBU) VALUES(9179, 'AXIS', '05-APR-19', NULL, NULL, 7);

INSERT INTO SIN_DESCAUSA(CCAUSIN, CIDIOMA, TCAUSIN) VALUES(9179, 1, 'Caucions');

INSERT INTO SIN_DESCAUSA(CCAUSIN, CIDIOMA, TCAUSIN) VALUES(9179, 2, 'Cauciones');

INSERT INTO SIN_DESCAUSA(CCAUSIN, CIDIOMA, TCAUSIN) VALUES(9179, 8, 'Cauciones');

INSERT INTO SIN_CODMOTCAU(CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, CNOPERIT)
    VALUES(9179, 0, 'AXIS_CONF', '04-AUG-16', NULL, NULL, NULL);

--PARA CLINICAS  **************************************************************************************************************   

--Gastos Judiciales de Defensa / Vigencia
INSERT INTO SIN_GAR_CAUSA(SPRODUC, CACTIVI, CGARANT, CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, NUMSINI)
    VALUES(8063, 0, 7062, 9179, 0, 'AXIS', '05-APR-19', NULL, NULL, NULL);

--Gastos Judiciales de Defensa / Evento
INSERT INTO SIN_GAR_CAUSA(SPRODUC, CACTIVI, CGARANT, CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, NUMSINI)
    VALUES(8063, 0, 7042, 9179, 0, 'AXIS', '05-APR-19', NULL, NULL, NULL);
	
--PARA MEDICAS	**************************************************************************************************************

--Gastos Judiciales de Defensa / Vigencia
INSERT INTO SIN_GAR_CAUSA(SPRODUC, CACTIVI, CGARANT, CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, NUMSINI)
    VALUES(8062, 0, 7062, 9179, 0, 'AXIS', '05-APR-19', NULL, NULL, NULL);

--Gastos Judiciales de Defensa / Evento	
INSERT INTO SIN_GAR_CAUSA(SPRODUC, CACTIVI, CGARANT, CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, NUMSINI)
    VALUES(8062, 0, 7042, 9179, 0, 'AXIS', '05-APR-19', NULL, NULL, NULL);	

--PARA PROFESIONALES **************************************************************************************************************

--INSERT INTO SIN_GAR_CAUSA(SPRODUC, CACTIVI, CGARANT, CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, NUMSINI)
--VALUES(8064, 0, 7042, 9253, 0, 'AXIS', '05-APR-19', NULL, NULL, NULL);
    
--INSERT INTO SIN_GAR_TRAMITACION(SPRODUC, CACTIVI, CTRAMIT,CGARANT)
--VALUES(8064,0,0,7042);

--INSERT INTO SIN_GAR_CAUSA(SPRODUC, CACTIVI, CGARANT, CCAUSIN, CMOTSIN, CUSUALT, FALTA, CUSUMOD, FMODIFI, NUMSINI)
--VALUES(8064, 0, 7062, 9253, 0, 'AXIS', '05-APR-19', NULL, NULL, NULL);
    
--INSERT INTO SIN_GAR_TRAMITACION(SPRODUC, CACTIVI, CTRAMIT,CGARANT)
--VALUES(8064,0,0,7062);


INSERT INTO SIN_DESMOTCAU(CCAUSIN, CMOTSIN, CIDIOMA, TMOTSIN)
    VALUES(9179, 0, 1, 'Caucions');

INSERT INTO SIN_DESMOTCAU(CCAUSIN, CMOTSIN, CIDIOMA, TMOTSIN)
    VALUES(9179, 0, 2, 'Cauciones');

INSERT INTO SIN_DESMOTCAU(CCAUSIN, CMOTSIN, CIDIOMA, TMOTSIN)
    VALUES(9179, 0, 8, 'Cauciones');

COMMIT;	