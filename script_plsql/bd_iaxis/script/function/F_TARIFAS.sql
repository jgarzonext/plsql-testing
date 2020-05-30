--------------------------------------------------------
--  DDL for Function F_TARIFAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_TARIFAS" (pctarifa IN NUMBER, pvcolum IN NUMBER,
	pvfila IN NUMBER, pctipatr IN NUMBER, picapital IN NUMBER,
	piextrap IN NUMBER, pipritar IN OUT NUMBER,
	atribu IN OUT NUMBER, piprima IN OUT NUMBER, moneda IN NUMBER)
RETURN NUMBER authid current_user IS
/*************************************************************************
	F_TARIFA		Calcula la prima anual de una garant�a de una p�liza de accidentes
				Retorna 0 si todo va bien, 1 sino
	ALLIBCTR
	Modificaci�: Afegim m�s par�metres (PDTOCOM, IPRITAR, IRECARG, IDTOCOM)
	Modificaci�: Els descomptes i els rec�rrecs es far�n fora d'aquesta funci�
	Modificaci�: Afegim la moneda
	Modificaci�: Si venim de salut no arrodonim
*************************************************************************/
BEGIN
	BEGIN
		SELECT iatribu
		INTO 	atribu
		FROM 	tarifas
		WHERE ctarifa = pctarifa
			AND nfila = pvfila
			AND ncolumn = pvcolum;
-- No tenim en compte els valors NULL pq. sempre asignem
--			AND (nfila = pvfila OR pvfila = 0)
--			AND (ncolumn = pvcolum OR pvcolum = 0);
	EXCEPTION
		WHEN OTHERS THEN
			RETURN 104255;
	END;
	IF pctipatr = 1 THEN
--		pipritar := atribu;
		piprima := atribu + nvl(piextrap,0);
	ELSIF pctipatr = 2 THEN
--		pipritar := atribu * picapital;
		piprima := (atribu + nvl(piextrap,0)) * picapital;
	END IF;
	-- Arrodonim a partir de la moneda
	IF moneda <> 0 THEN
		piprima := f_round(piprima, moneda);
	END IF;
	-- El pipritar ser� el valor de la prima que retorna aquesta funci�
	pipritar := piprima;
	RETURN 0;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_TARIFAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_TARIFAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_TARIFAS" TO "PROGRAMADORESCSI";
