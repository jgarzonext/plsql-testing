DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE doc_docurequerida WHERE cdocume IN (1232, 1233, 1234, 1235, 1236) AND sproduc BETWEEN 80038 aND 80043;

	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1232,80038,0,1,2,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1234,80038,0,1,1,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1235,80038,0,1,1,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1236,80038,0,1,1,1,100,0,1);

	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1232,80039,0,1,2,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1234,80039,0,1,1,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1235,80039,0,1,1,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1236,80039,0,1,1,1,100,0,1);

	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1232,80040,0,1,2,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1234,80040,0,1,1,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1235,80040,0,1,1,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1236,80040,0,1,1,1,100,0,1);

	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1232,80041,0,1,2,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1234,80041,0,1,1,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1235,80041,0,1,1,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1236,80041,0,1,1,1,100,0,1);

	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1232,80042,0,1,2,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1234,80042,0,1,1,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1235,80042,0,1,1,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1236,80042,0,1,1,1,100,0,1);

	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1232,80043,0,1,2,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1234,80043,0,1,1,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1235,80043,0,1,1,1,100,0,1);
	INSERT INTO doc_docurequerida (cdocume,sproduc,cactivi,norden,ctipdoc,cclase,cmotmov,cobligedox,ctipdest) VALUES (1236,80043,0,1,1,1,100,0,1);


	COMMIT;
	
END;
/
