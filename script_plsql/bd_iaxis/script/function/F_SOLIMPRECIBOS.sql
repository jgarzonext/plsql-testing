--------------------------------------------------------
--  DDL for Function F_SOLIMPRECIBOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_SOLIMPRECIBOS" (PNPROCES  IN NUMBER, PNRECIBO IN NUMBER,
                         PNRIESGO  IN NUMBER, PCRECFRA IN NUMBER,
                         PCFORPAG  IN NUMBER, PCRAMO   IN NUMBER, PCMODALI IN NUMBER,
                         PCTIPSEG  IN NUMBER, PCCOLECT IN NUMBER, PCACTIVI IN NUMBER,
                         PSSOLICIT IN NUMBER)
         RETURN NUMBER authid current_user IS
/* ***********************************************************
FUNCI�N PARA EL C�LCULO DE LOS IMPUESTOS EN EL C�LCULO DE LOS RECIBOS DE LAS SOLICITUDES.
PAR�METROS:
            PNPROCES : N� DE PROCESO.
            PNRECIBO : N� DEL RECIBO.
            PMODO    : MODO DE LA LLAMADA. VALORES: 'PR': PRIMER RECIBO.
                                                    'AN': RECIBO ANUAL.
            PNRIESGO : NUM. DEL RIESGO.    VALORES: NULL: UN RECIBO PARA TODOS LOS RIESGOS.
                                                    N�. : UN RECIBO PARA ESE RIESGO.
            PCRECFRA : RECARGO DE FRACIONAMIENTO.
            PCFORPAG : FORMA DE PAGO.
            PCRAMO, PCMODALI,PCTIPSEG,PCCOLECT: PRODUCTO.
            PCACTIVI : ACTIVIDAD.
            PSSOLICIT: N� DE SOLICITUD.
************************************************************ */
	ERROR		NUMBER := 0;
	XPRECARG	NUMBER;
	GRABAR	NUMBER;
	XICONCEP	NUMBER;
	XCIMPDGS	NUMBER;
	XCIMPIPS	NUMBER;
	XCIMPARB	NUMBER;
	XCIMPFNG	NUMBER;
	XCDERREG	NUMBER;
	ICONCEP0	NUMBER;
	TOT_ICONCEPDGS	NUMBER;
	TOT_ICONCEPIPS	NUMBER;
	TOT_ICONCEPARB	NUMBER;
	TOT_ICONCEPFNG	NUMBER;
	TOT_ICONCEPDERREG	NUMBER;
	TAXADGS	NUMBER;
	TAXAIPS	NUMBER;
	TAXAARB	NUMBER;
	TAXAFNG	NUMBER;
	TAXADERREG	NUMBER;
	TOTRECFRACC NUMBER;
	XXICONCEP	 NUMBER;
      XCRESPUE     NUMBER;
/***** COASEGURO  ******/
	XPLOCCOA     NUMBER; -- COASEGURO
	XCTIPCOA     NUMBER :=0; -- DE MOMENTO NO TRATAMOS COASEGURO
	XNCUACOA     NUMBER;
	CURSOR CUR_DETRECIBOSCAR IS
        SELECT NRIESGO, CGARANT
          FROM DETRECIBOSCAR
	   WHERE SPROCES = PNPROCES
           AND NRECIBO = PNRECIBO
	     AND NRIESGO = NVL(PNRIESGO, NRIESGO)
         GROUP BY NRIESGO, CGARANT;
BEGIN
/* *************  DE MOMENTO NO HAY COASEGURO
 --BUSCAMOS EL PORCENTAJE LOCAL SI ES UN COASEGURO.
 SELECT CTIPCOA,NCUACOA
   INTO XCTIPCOA,XNCUACOA
   FROM  SOLSEGUROS
  WHERE SSOLICIT = PSSOLICIT;
 IF XCTIPCOA != 0 THEN
  SELECT PLOCCOA
    INTO XPLOCCOA
    FROM SOLCOACUADRO
   WHERE NCUACOA = XNCUACOA
     AND SSEGURO = PSSEGURO;
 END IF;
 --COASEGURO ACEPTADO NO NOS INTERESA APLICAR DOS VECES EL PORCENTAJE LOCAL
 IF XCTIPCOA = 8 OR XCTIPCOA = 9 THEN
  XPLOCCOA := 100;
 END IF;
****************************** */
 FOR REC IN  CUR_DETRECIBOSCAR LOOP
   ICONCEP0  := 0;
   XPRECARG  := 0;
   TAXAIPS   := 0;
   TAXADGS   := 0;
   TAXAARB   := 0;
   TAXAFNG   := 0;
   XCIMPIPS  := 0;
   XCIMPARB  := 0;
   XCIMPDGS  := 0;
   XCIMPFNG  := 0;
   XCRESPUE  := 1;
   TOTRECFRACC := 0;
 --TROBEM EL TOTAL DE ICONCEP PER CCONCEP = 0
  BEGIN
   SELECT NVL(SUM(ICONCEP), 0)
     INTO ICONCEP0
     FROM DETRECIBOSCAR
    WHERE SPROCES = PNPROCES
      AND NRECIBO = PNRECIBO
      AND NRIESGO = REC.NRIESGO
      AND CGARANT = REC.CGARANT
      AND CCONCEP IN (0,50)  -- LOCAL + CEDIDA
    GROUP BY NRIESGO, CGARANT;
    XICONCEP := ICONCEP0;
    GRABAR := 1;
  EXCEPTION
   WHEN NO_DATA_FOUND THEN
	NULL;
	GRABAR := 0;
   WHEN OTHERS THEN
	ERROR := 103512;	  -- ERROR AL LLEGIR DE DETRECIBOS
	RETURN ERROR;
  END;
  -- CALCULEM EL RECARREC PER FRACCIONAMENT (CCONCEP = 8)
  IF PCRECFRA = 1 AND PCFORPAG IS NOT NULL THEN
    BEGIN
 	SELECT PRECARG
        INTO XPRECARG
	  FROM FORPAGREC
	 WHERE CFORPAG = PCFORPAG;
    EXCEPTION
	WHEN NO_DATA_FOUND THEN
	 ERROR := 103845;   -- FORMA PAG. NO TROBADA A FORPAGREC
	 RETURN ERROR;
	WHEN OTHERS THEN
	 ERROR := 103846;	-- ERROR AL LLEGIR DE FORPAGREC
	 RETURN ERROR;
    END;
    IF XPRECARG <> 0 THEN
	TOTRECFRACC := ROUND((NVL(ICONCEP0, 0) * XPRECARG) / 100,0);
	IF NVL(TOTRECFRACC, 0) <> 0 THEN
	  ERROR := F_INSDETRECCAR(PNPROCES, PNRECIBO, 8, TOTRECFRACC,XPLOCCOA, REC.CGARANT,
	                          NVL(REC.NRIESGO,0),XCTIPCOA);
	  IF ERROR != 0 THEN
	    RETURN ERROR;
	  END IF;
	END IF;
    END IF;
  END IF;   -- FIN RECARGO DE FRACCIONAMIENTO
-- BUSCAMOS LOS IMPUESTOS QUE SE DEBEN APLICAR
  BEGIN
   SELECT NVL(CIMPDGS,0),NVL(CIMPIPS,0),NVL(CDERREG,0),NVL(CIMPARB,0),NVL(CIMPFNG,0)
     INTO XCIMPDGS,XCIMPIPS,XCDERREG,XCIMPARB,XCIMPFNG
     FROM GARANPRO
    WHERE CRAMO   = PCRAMO
      AND CMODALI = PCMODALI
      AND CCOLECT = PCCOLECT
      AND CTIPSEG = PCTIPSEG
      AND CGARANT = REC.CGARANT
      AND CACTIVI = NVL(PCACTIVI, 0);
  EXCEPTION
   WHEN NO_DATA_FOUND THEN
	BEGIN
	 SELECT NVL(CIMPDGS,0),NVL(CIMPIPS,0),NVL(CDERREG,0),NVL(CIMPARB,0),NVL(CIMPFNG,0)
	   INTO XCIMPDGS,XCIMPIPS,XCDERREG,XCIMPARB,XCIMPFNG
	   FROM GARANPRO
	  WHERE CRAMO   = PCRAMO
          AND CMODALI = PCMODALI
	    AND CCOLECT = PCCOLECT
          AND CTIPSEG = PCTIPSEG
	    AND CGARANT = REC.CGARANT
          AND CACTIVI = 0;
	EXCEPTION
	 WHEN NO_DATA_FOUND THEN
	  ERROR := 104110;	-- PRODUCTE NO TROBAT A GARANPRO
	  RETURN ERROR;
	WHEN OTHERS THEN
	  ERROR := 103503;  -- ERROR AL LLEGIR DE LA TAULA GARANPRO
	  RETURN ERROR;
	END;
   WHEN OTHERS THEN
	ERROR := 103503;  -- ERROR AL LLEGIR DE LA TAULA GARANPRO
	RETURN ERROR;
  END;
--
-- CALCULAMOS LA DGS
--
  IF XCIMPDGS > 0 THEN
    BEGIN
	SELECT IATRIBU
        INTO TAXADGS
	  FROM TARIFAS
	 WHERE CTARIFA = 0
         AND NCOLUMN = 3
         AND NFILA   = XCIMPDGS;
	TOT_ICONCEPDGS := ROUND(NVL(ICONCEP0, 0) * TAXADGS, 0);
    EXCEPTION
	WHEN NO_DATA_FOUND THEN
	  ERROR := 103844;	-- TARIFA NO TROBADA A TARIFAS
	  RETURN ERROR;
	WHEN OTHERS THEN
	  ERROR := 103843;	-- ERROR AL LLEGIR DE TARIFAS
	  RETURN ERROR;
    END;
  ELSE
	TOT_ICONCEPDGS := 0;
  END IF;
--
-- CALCULAMOS EL IPS
--
  IF XCIMPIPS > 0 THEN
-- BUSCAMO SI EL �MBITO ES NACIONAL O INTERNACIONAL
    BEGIN
      SELECT CRESPUE              -- COMO NO DISPONEMOS DEL NMOVIMI SELECCIONAMOS
        INTO XCRESPUE
        FROM SOLPREGUNSEG         -- EL MAYOR
       WHERE SSOLICIT = PSSOLICIT
         AND NRIESGO  = REC.NRIESGO
         AND CPREGUN  = 96;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        XCRESPUE := 1;
      WHEN OTHERS THEN
	  RETURN 102741;	-- ERROR AL LLEGIR DE PREGUNSEG
    END;
    IF XCRESPUE = 1 THEN -- SI ES NACIONAL SE PAGA EL IPS
	BEGIN
	  SELECT IATRIBU
          INTO TAXAIPS
	    FROM TARIFAS
	   WHERE CTARIFA = 0
           AND NCOLUMN = 4
           AND NFILA   = XCIMPIPS;
        TOT_ICONCEPIPS := ROUND((NVL(ICONCEP0, 0) + NVL(TOTRECFRACC, 0)) * TAXAIPS, 0);
	EXCEPTION
	 WHEN NO_DATA_FOUND THEN
	  ERROR := 103844;	-- TARIFA NO TROBADA A TARIFAS
	  RETURN ERROR;
	 WHEN OTHERS THEN
	  ERROR := 103843;	-- ERROR AL LLEGIR DE TARIFAS
	  RETURN ERROR;
	END;
    ELSE
      TOT_ICONCEPIPS := 0;
    END IF;
  ELSE
    TOT_ICONCEPIPS := 0;
  END IF;
--
-- DERECHOS DE REGISTRO
--
  IF XCDERREG > 0 THEN
    BEGIN
      SELECT IATRIBU
        INTO TAXADERREG
	  FROM TARIFAS
	 WHERE CTARIFA = 0
         AND NCOLUMN = 1
         AND NFILA   = XCDERREG;
	TOT_ICONCEPDERREG := ROUND(NVL(ICONCEP0, 0) * TAXADERREG, 0);
    EXCEPTION
	WHEN NO_DATA_FOUND THEN
	  ERROR := 103844;	-- TARIFA NO TROBADA A TARIFAS
	  RETURN ERROR;
	WHEN OTHERS THEN
	  ERROR := 103843;	-- ERROR AL LLEGIR DE TARIFAS
	  RETURN ERROR;
    END;
  ELSE
	TOT_ICONCEPDERREG := 0;
  END IF;
--
-- CALCULAMOS LOS ARBITRIOS
--
  IF XCIMPARB > 0 THEN
    BEGIN
	SELECT IATRIBU
        INTO TAXAARB
	  FROM TARIFAS
	 WHERE CTARIFA = 0
         AND NCOLUMN = 5
         AND NFILA   = PCRAMO;
	TOT_ICONCEPARB := ROUND(NVL(ICONCEP0, 0) * TAXAARB, 0);
    EXCEPTION
	WHEN NO_DATA_FOUND THEN
	  ERROR := 103844;	-- TARIFA NO TROBADA A TARIFAS
	  RETURN ERROR;
	WHEN OTHERS THEN
	  ERROR := 103843;	-- ERROR AL LLEGIR DE TARIFAS
	  RETURN ERROR;
    END;
  ELSE
	TOT_ICONCEPARB := 0;
  END IF;
--
-- CALCULAMOS LA FNG
--
  IF XCIMPFNG > 0 THEN
    BEGIN
      SELECT IATRIBU
        INTO TAXAFNG
	  FROM TARIFAS
	 WHERE CTARIFA = 0
         AND NCOLUMN = 2
         AND NFILA   = XCIMPFNG;
      TOT_ICONCEPFNG := ROUND(NVL(ICONCEP0, 0) * TAXAFNG, 0);
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
	  ERROR := 103844;	-- TARIFA NO TROBADA A TARIFAS
	  RETURN ERROR;
      WHEN OTHERS THEN
	  ERROR := 103843;	-- ERROR AL LLEGIR DE TARIFAS
	  RETURN ERROR;
	END;
  ELSE
	TOT_ICONCEPFNG := 0;
  END IF;
  IF NVL(TOT_ICONCEPDGS,0) <> 0 AND TAXADGS IS NOT NULL THEN
    TOT_ICONCEPDGS := ROUND(TOT_ICONCEPDGS, 0);
    IF NVL(TOT_ICONCEPDGS, 0) <> 0 THEN
      ERROR := F_INSDETRECCAR(PNPROCES, PNRECIBO, 5, TOT_ICONCEPDGS, XPLOCCOA, REC.CGARANT,
	                        NVL(REC.NRIESGO,0),XCTIPCOA);
	IF ERROR != 0 THEN
	  RETURN ERROR;
	END IF;
    END IF;
  END IF;
  IF NVL(TOT_ICONCEPIPS,0) <> 0 AND TAXAIPS IS NOT NULL THEN
    TOT_ICONCEPIPS := ROUND(TOT_ICONCEPIPS, 0);
    IF NVL(TOT_ICONCEPIPS, 0) <> 0 THEN
	ERROR := F_INSDETRECCAR(PNPROCES, PNRECIBO, 4, TOT_ICONCEPIPS, XPLOCCOA, REC.CGARANT,
                              NVL(REC.NRIESGO,0),XCTIPCOA);
      IF ERROR != 0 THEN
	  RETURN ERROR;
	END IF;
    END IF;
  END IF;
  IF NVL(TOT_ICONCEPDERREG,0) <> 0 AND TAXADERREG IS NOT NULL THEN
    TOT_ICONCEPDERREG := ROUND(TOT_ICONCEPDERREG, 0);
    IF NVL(TOT_ICONCEPDERREG, 0) <> 0 THEN
	ERROR := F_INSDETRECCAR(PNPROCES, PNRECIBO, 14, TOT_ICONCEPDERREG, XPLOCCOA, REC.CGARANT,
                              NVL(REC.NRIESGO,0),XCTIPCOA);
      IF ERROR != 0 THEN
	  RETURN ERROR;
	END IF;
    END IF;
  END IF;
  IF NVL(TOT_ICONCEPARB,0) <> 0 AND TAXAARB IS NOT NULL THEN
    TOT_ICONCEPARB := ROUND(TOT_ICONCEPARB, 0);
    IF NVL(TOT_ICONCEPARB, 0) <> 0 THEN
      ERROR := F_INSDETRECCAR(PNPROCES, PNRECIBO, 6, TOT_ICONCEPARB, XPLOCCOA, REC.CGARANT,
                              NVL(REC.NRIESGO,0),XCTIPCOA);
      IF ERROR != 0 THEN
	  RETURN ERROR;
	END IF;
    END IF;
  END IF;
  IF NVL(TOT_ICONCEPFNG,0) <> 0 AND TAXAFNG IS NOT NULL THEN
    TOT_ICONCEPFNG := ROUND(TOT_ICONCEPFNG, 0);
    IF NVL(TOT_ICONCEPFNG, 0) <> 0 THEN
      ERROR := F_INSDETRECCAR(PNPROCES, PNRECIBO, 7, TOT_ICONCEPFNG,XPLOCCOA, REC.CGARANT,
                              NVL(REC.NRIESGO,0),XCTIPCOA);
      IF ERROR != 0 THEN
	  RETURN ERROR;
	END IF;
    END IF;
  END IF;
 END LOOP;
 RETURN 0;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_SOLIMPRECIBOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_SOLIMPRECIBOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_SOLIMPRECIBOS" TO "PROGRAMADORESCSI";