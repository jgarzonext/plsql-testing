DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE imprec WHERE cconcep = 4 AND cramo = 802 AND cmodali = 9;
	
	INSERT INTO imprec (cconcep,nconcep,cempres,cforpag,cramo,cmodali,ctipseg,ccolect,cactivi,cgarant,finivig,ffinvig,ctipcon,nvalcon,cfracci,cbonifi,crecfra,climite,cmoneda,cderreg) VALUES (4,((SELECT NVL(MAX(nconcep),1) FROM imprec)+1),24,NULL,802,9,1,0,2,NULL,TO_DATE('31/12/70','DD/MM/RR'),NULL,5,16562,1,0,0,NULL,8,NULL);
	INSERT INTO imprec (cconcep,nconcep,cempres,cforpag,cramo,cmodali,ctipseg,ccolect,cactivi,cgarant,finivig,ffinvig,ctipcon,nvalcon,cfracci,cbonifi,crecfra,climite,cmoneda,cderreg) VALUES (4,((SELECT NVL(MAX(nconcep),1) FROM imprec)+1),24,NULL,802,9,1,0,3,NULL,TO_DATE('31/12/70','DD/MM/RR'),NULL,5,16562,1,0,0,NULL,8,NULL);
	INSERT INTO imprec (cconcep,nconcep,cempres,cforpag,cramo,cmodali,ctipseg,ccolect,cactivi,cgarant,finivig,ffinvig,ctipcon,nvalcon,cfracci,cbonifi,crecfra,climite,cmoneda,cderreg) VALUES (4,((SELECT NVL(MAX(nconcep),1) FROM imprec)+1),24,NULL,802,9,1,0,4,NULL,TO_DATE('31/12/70','DD/MM/RR'),NULL,5,16562,1,0,0,NULL,8,NULL);
	INSERT INTO imprec (cconcep,nconcep,cempres,cforpag,cramo,cmodali,ctipseg,ccolect,cactivi,cgarant,finivig,ffinvig,ctipcon,nvalcon,cfracci,cbonifi,crecfra,climite,cmoneda,cderreg) VALUES (4,((SELECT NVL(MAX(nconcep),1) FROM imprec)+1),24,NULL,802,9,1,0,5,NULL,TO_DATE('31/12/70','DD/MM/RR'),NULL,5,16562,1,0,0,NULL,8,NULL);
	
	
	COMMIT;
	
END;
/