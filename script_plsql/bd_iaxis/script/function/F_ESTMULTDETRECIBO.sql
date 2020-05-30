--------------------------------------------------------
--  DDL for Function F_ESTMULTDETRECIBO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_ESTMULTDETRECIBO" (PSSEGURO IN NUMBER, PNRECIBO IN NUMBER, PCRAMO IN
	NUMBER, PCMODALI IN NUMBER, PCTIPSEG IN NUMBER, PCCOLECT IN NUMBER,
	PCMODO IN VARCHAR2, PSPROCES IN NUMBER) RETURN NUMBER
authid current_user IS
--
-- ALLIBADM. PER AL CAS DE RISCS INNOMINATS, HEM
-- DE MULTIPLICAR ELS C�LCULS DE DETRECIBOS PEL NOMBRE D' ASSEGURATS QUE T�
-- EL RISC ACTUAL.
--
ERROR		NUMBER;
XINNOMIN	BOOLEAN := FALSE;
XCOBJASE	NUMBER;
XNASEGUR	NUMBER;
CURSOR CUR_DETRECIBOS IS
	SELECT DISTINCT(NRIESGO)
	FROM DETRECIBOS
	WHERE NRECIBO = PNRECIBO AND
		NRIESGO IS NOT NULL;
CURSOR CUR_DETRECIBOSCAR IS
	SELECT DISTINCT(NRIESGO)
	FROM DETRECIBOSCAR
	WHERE SPROCES = PSPROCES AND
		NRECIBO = PNRECIBO AND
		NRIESGO IS NOT NULL;
XNRIESGO	NUMBER;
BEGIN
IF PSSEGURO IS NOT NULL AND PNRECIBO IS NOT NULL AND PCRAMO IS NOT NULL AND
	PCMODALI IS NOT NULL AND PCTIPSEG IS NOT NULL AND PCCOLECT IS NOT NULL
	AND PCMODO IS NOT NULL THEN
	BEGIN
	  SELECT COBJASE
INTO XCOBJASE
FROM PRODUCTOS
WHERE CRAMO = PCRAMO AND
		CMODALI = PCMODALI AND
		CTIPSEG = PCTIPSEG AND
		CCOLECT = PCCOLECT;
	  IF XCOBJASE = 4 THEN		-- PRODUCTE INNOMINAT
	    XINNOMIN := TRUE;
	  ELSE
	    XINNOMIN := FALSE;
	  END IF;
	EXCEPTION
	  WHEN NO_DATA_FOUND THEN
	    RETURN 104347;		-- PRODUCTE NO TROBAT A PRODUCTOS
	  WHEN OTHERS THEN
	    RETURN 102705;		-- ERROR AL LLEGIR DE PRODUCTOS
	END;
	IF XINNOMIN THEN
	  IF PCMODO = 'R' THEN
	    OPEN CUR_DETRECIBOS;
	    FETCH CUR_DETRECIBOS INTO XNRIESGO;
	    WHILE CUR_DETRECIBOS%FOUND LOOP
		BEGIN
		  SELECT DECODE(NASEGUR, NULL, 1, NASEGUR)
		  INTO XNASEGUR
		  FROM ESTRIESGOS
		  WHERE SSEGURO = PSSEGURO AND
			NRIESGO = XNRIESGO;
		EXCEPTION
		  WHEN NO_DATA_FOUND THEN
		    CLOSE CUR_DETRECIBOS;
		    RETURN 103836;
		  WHEN OTHERS THEN
		    CLOSE CUR_DETRECIBOS;
		    RETURN 103509;
		END;
		BEGIN
		  UPDATE DETRECIBOS
		  SET ICONCEP = ICONCEP * XNASEGUR
		  WHERE NRECIBO = PNRECIBO AND
			NRIESGO = XNRIESGO AND
			CCONCEP <> 2 AND
			CCONCEP <> 3;
		EXCEPTION
		  WHEN OTHERS THEN
		    CLOSE CUR_DETRECIBOS;
		    RETURN 104377;	-- ERROR AL MODIFICAR DETRECIBOS
		END;
		FETCH CUR_DETRECIBOS INTO XNRIESGO;
	    END LOOP;
	    CLOSE CUR_DETRECIBOS;
	    RETURN 0;
	  ELSIF PCMODO = 'P' OR PCMODO = 'N' THEN
	    OPEN CUR_DETRECIBOSCAR;
	    FETCH CUR_DETRECIBOSCAR INTO XNRIESGO;
	    WHILE CUR_DETRECIBOSCAR%FOUND LOOP
		BEGIN
		  SELECT DECODE(NASEGUR, NULL, 1, NASEGUR)
		  INTO XNASEGUR
		  FROM ESTRIESGOS
		  WHERE SSEGURO = PSSEGURO AND
			NRIESGO = XNRIESGO;
		EXCEPTION
		  WHEN NO_DATA_FOUND THEN
		    CLOSE CUR_DETRECIBOSCAR;
		    RETURN 103836;
		  WHEN OTHERS THEN
		    CLOSE CUR_DETRECIBOSCAR;
		    RETURN 103509;
		END;
		BEGIN
		  UPDATE DETRECIBOSCAR
		  SET ICONCEP = ICONCEP * XNASEGUR
		  WHERE SPROCES = PSPROCES AND
			NRECIBO = PNRECIBO AND
			NRIESGO = XNRIESGO AND
			CCONCEP <> 2 AND
			CCONCEP <> 3;
		EXCEPTION
		  WHEN OTHERS THEN
		    CLOSE CUR_DETRECIBOSCAR;
		    RETURN 104378;	-- ERROR AL MODIFICAR DETRECIBOSCAR
		END;
		FETCH CUR_DETRECIBOSCAR INTO XNRIESGO;
	    END LOOP;
	    CLOSE CUR_DETRECIBOSCAR;
	    RETURN 0;
	  ELSE
	    RETURN 101901;		-- PAS INCORRECTE DE PAR�METRES A LA FUNCI�
	  END IF;
	ELSE
	  RETURN 0;		-- NO �S UN PRODUCTE INNOMINAT I NO HEM DE
	END IF;		-- MULTIPLICAR RES.
ELSE
RETURN 101901;		-- PAS INCORRECTE DE PAR�METRES A LA FUNCI�
END IF;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_ESTMULTDETRECIBO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_ESTMULTDETRECIBO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_ESTMULTDETRECIBO" TO "PROGRAMADORESCSI";
