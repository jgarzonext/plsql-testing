DECLARE
	v_contexto NUMBER := 0;
	
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE parempresas WHERE cparam = 'COD_COMI_EMISION';
	DELETE desparam WHERE cparam = 'COD_COMI_EMISION';
	DELETE codparam WHERE cparam = 'COD_COMI_EMISION';
	
	INSERT INTO codparam(cparam, cutili, ctipo, cgrppar, cobliga, tdefecto) VALUES('COD_COMI_EMISION', 5, 1, 'GEN', 0, '0');
	
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('COD_COMI_EMISION', 1, 'Codigo de comision que no puede emitir directamente');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('COD_COMI_EMISION', 2, 'Codigo de comision que no puede emitir directamentev');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('COD_COMI_EMISION', 8, 'Codigo de comision que no puede emitir directamente');
	
	INSERT INTO PAREMPRESAS (CEMPRES, CPARAM, TVALPAR) VALUES ('24', 'COD_COMI_EMISION', '10001');

			
	COMMIT;
	
END;
/