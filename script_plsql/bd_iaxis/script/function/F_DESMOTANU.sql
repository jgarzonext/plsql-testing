--------------------------------------------------------
--  DDL for Function F_DESMOTANU
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION F_DESMOTANU (psseguro IN NUMBER, pfanulac IN DATE,
	pcidioma IN NUMBER, ptmotmov IN OUT VARCHAR2)
RETURN NUMBER authid current_user IS
/*************************************************************************
	DESMOTANU	Obtiene el motivo de anulaci�n de una p�liza
			Devuelve 0 si todo va bien, 1 sino
	ALLIBCTR
    
    1.0  ECP  29/05/2019  IAXIS/3295 . Proceso de Terminaci[on por no pago.
*************************************************************************/
	motmov	NUMBER;
BEGIN
--	Obtenemos el motivo de anulaci�n
-- Ini IAXIS/3592 -- ECP -- 29/05/2019
	BEGIN
		SELECT cmotmov
		INTO motmov
		FROM movseguro
		WHERE	sseguro=psseguro
			AND cmovseg in (3,53)
			AND fefecto=pfanulac
			AND nmovimi=(SELECT MAX(nmovimi)       --Mira que sea el
					 FROM movseguro		--�ltimo movimiento
					 WHERE sseguro=psseguro
					       AND cmovseg in (3,53)
						 AND fefecto=pfanulac);
	EXCEPTION
		WHEN OTHERS THEN
			RETURN 1;
	END;
--	Obtenemos la descripci�n del motivo de anulaci�n
--message('Motmov= '||motmov||'   Idioma= '||pcidioma||'   Descripcion= '||ptmotmov);
	IF f_desmotmov(motmov,pcidioma,ptmotmov)<> 0 THEN
		RETURN 1;
	END IF;
    -- Fin IAXIS/3592 -- ECP -- 29/05/2019
--	Si todo va bien
	RETURN 0;
END;
 
 

/
