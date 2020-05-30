--------------------------------------------------------
--  DDL for Function F_TARIFAS_ULK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_TARIFAS_ULK" (pctarifa IN NUMBER, pvcolum IN NUMBER,
	pvfila IN NUMBER,pvcolum2 IN NUMBER,pvfila2 IN NUMBER,
	pctipatr IN NUMBER, picapital IN NUMBER,
	piextrap IN NUMBER, pipritar IN OUT NUMBER,
	atribu IN OUT NUMBER, piprima IN OUT NUMBER, moneda IN NUMBER)
RETURN NUMBER IS
/*************************************************************************
	F_TARIFA		Calcula la prima anual de una garant�a de una
				p�liza de accidentes
				Retorna 0 si todo va bien, 1 sino
	ALLIBCTR
	Modificaci�: Afegim m�s par�metres (PDTOCOM, IPRITAR, IRECARG, IDTOCOM)
	Modificaci�: Els descomptes i els rec�rrecs es far�n fora d'aquesta funci�
	Modificaci�: Afegim la moneda
	Modificaci�: Si venim de salut no arrodonim
	Modificaci�: Afegim un control per assegurances a dos caps
*************************************************************************/
atribu2 number;
BEGIN
	--TASA CORRESPONENT AL PRIMER ASSEGURAT
	BEGIN
		SELECT iatribu
		INTO 	atribu
		FROM 	tarifas
		WHERE ctarifa = pctarifa
			AND nfila = pvfila
			AND ncolumn = pvcolum;
	EXCEPTION
		WHEN OTHERS THEN
			RETURN 104255;
	END;
	--TASA CORRESPONENT AL SEGON ASSEGURAT
	IF pvfila2 = 0 then --si no existe segundo asegurado no buscamos tasa
		atribu2 := 1;
	ELSE
		BEGIN
			SELECT iatribu
			INTO 	atribu2
			FROM 	tarifas
			WHERE ctarifa = pctarifa
				AND nfila = pvfila2
				AND ncolumn = pvcolum2;
		EXCEPTION
			WHEN OTHERS THEN
				RETURN 104255;
		END;
	END IF;
	atribu := atribu * atribu2;
	IF pctipatr = 1 THEN
		piprima := atribu + nvl(piextrap,0);
	ELSIF pctipatr = 2 THEN
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

  GRANT EXECUTE ON "AXIS"."F_TARIFAS_ULK" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_TARIFAS_ULK" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_TARIFAS_ULK" TO "PROGRAMADORESCSI";
