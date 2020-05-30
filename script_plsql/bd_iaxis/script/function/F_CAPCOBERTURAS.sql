--------------------------------------------------------
--  DDL for Function F_CAPCOBERTURAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_CAPCOBERTURAS" (PSSEGURO IN NUMBER, PNRIESGO IN NUMBER,
  PCGARANT IN NUMBER, PICAPITALIN IN NUMBER, PICAPITALOUT OUT NUMBER)
  RETURN NUMBER authid current_user IS
/************************************************************************
	F_CAPCOBERTURAS: FUNCI�N QUE CALCULA EL IMPORTE DE UNAS CIERTAS
		GARANTIAS QUE HAN DE APARECER MODIFICADO EN LA IMPRESI�N
	ALLIBCTR
************************************************************************/
	XICAPITAL	NUMBER;
	XICAPITAL2	NUMBER;
BEGIN
     IF PCGARANT = 6 OR PCGARANT = 8015 THEN
	 PICAPITALOUT := NVL(PICAPITALIN, 0) / 2;
	 RETURN 0;
     ELSIF PCGARANT = 4 THEN
	 BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 1
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
	 EXCEPTION
	   WHEN OTHERS THEN
	     XICAPITAL := 0;
	 END;
	 PICAPITALOUT := NVL(PICAPITALIN, 0) + NVL(XICAPITAL, 0);
	 RETURN 0;
     ELSIF PCGARANT = 8000 THEN
	 BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 8005
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
	 EXCEPTION
	   WHEN OTHERS THEN
	     XICAPITAL := 0;
	 END;
	 PICAPITALOUT := NVL(PICAPITALIN, 0) + NVL(XICAPITAL, 0);
	 RETURN 0;
     ELSIF PCGARANT = 8001 THEN
       BEGIN
            SELECT ICAPITAL
            INTO   XICAPITAL
            FROM   GARANSEG
            WHERE  CGARANT = 8006
            AND    (NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
            AND    SSEGURO = PSSEGURO
            AND    FFINEFE IS NULL;
       EXCEPTION
            WHEN OTHERS THEN
                XICAPITAL := 0;
       END;
       PICAPITALOUT := NVL(PICAPITALIN, 0) + NVL(XICAPITAL, 0);
	 RETURN 0;
     ELSIF PCGARANT = 8012 THEN
	 BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 8009
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
	 EXCEPTION
	   WHEN OTHERS THEN
	     XICAPITAL := 0;
	 END;
	 PICAPITALOUT := NVL(PICAPITALIN, 0) + NVL(XICAPITAL, 0);
	 RETURN 0;
     ELSIF PCGARANT = 8024 THEN
	 BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 8022
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
	 EXCEPTION
	   WHEN OTHERS THEN
	     XICAPITAL := 0;
	 END;
	 PICAPITALOUT := NVL(PICAPITALIN, 0) + NVL(XICAPITAL, 0);
	 RETURN 0;
     ELSIF PCGARANT = 5 THEN
	 BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 4
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
	 END;
	 BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL2
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 1
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
	 EXCEPTION
	   WHEN OTHERS THEN
	     XICAPITAL2 := 0;
	 END;
	 PICAPITALOUT := NVL(PICAPITALIN, 0) + NVL(XICAPITAL, 0) + NVL(XICAPITAL2, 0);
	 RETURN 0;
     ELSIF PCGARANT = 8013 THEN
	 BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 8012
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
	 EXCEPTION
	   WHEN OTHERS THEN
	     XICAPITAL := 0;
	 END;
	 BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL2
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 8009
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
	 EXCEPTION
	   WHEN OTHERS THEN
	     XICAPITAL2 := 0;
	 END;
	 PICAPITALOUT := NVL(PICAPITALIN, 0) + NVL(XICAPITAL, 0) + NVL(XICAPITAL2, 0);
	 RETURN 0;
     ELSIF PCGARANT = 8025 THEN
	 BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 8024
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
	 EXCEPTION
	   WHEN OTHERS THEN
	     XICAPITAL := 0;
	 END;
	 BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL2
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 8022
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
	 EXCEPTION
	   WHEN OTHERS THEN
	     XICAPITAL2 := 0;
	 END;
	 PICAPITALOUT := NVL(PICAPITALIN, 0) + NVL(XICAPITAL, 0) + NVL(XICAPITAL2, 0);
	 RETURN 0;
     ELSIF PCGARANT = 300 THEN
	 BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 2
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
	 EXCEPTION
         WHEN NO_DATA_FOUND THEN
            BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 3
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
            EXCEPTION
              WHEN OTHERS THEN
                XICAPITAL := 0;
            END;
	   WHEN OTHERS THEN
	     XICAPITAL := 0;
	 END;
	 PICAPITALOUT := NVL(PICAPITALIN, 0) + NVL(XICAPITAL, 0);
	 RETURN 0;
     ELSIF PCGARANT = 299 THEN
	 BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 300
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
	 EXCEPTION
	   WHEN OTHERS THEN
	     XICAPITAL := 0;
	 END;
	 BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL2
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 2
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
	 EXCEPTION
         WHEN NO_DATA_FOUND THEN
            BEGIN
		SELECT SUM(GARANSEG.ICAPITAL * NVL(RIESGOS.NASEGUR,1)) XCAPITAL
		INTO XICAPITAL2
		FROM GARANSEG, RIESGOS
		WHERE CGARANT = 3
		  AND GARANSEG.FFINEFE IS NULL
		  AND GARANSEG.NRIESGO = RIESGOS.NRIESGO
		  AND GARANSEG.SSEGURO = RIESGOS.SSEGURO
		  AND (RIESGOS.NRIESGO = PNRIESGO OR PNRIESGO IS NULL)
		  AND RIESGOS.SSEGURO = PSSEGURO
		GROUP BY GARANSEG.CGARANT;
            EXCEPTION
              WHEN OTHERS THEN
                XICAPITAL2 := 0;
            END;
	   WHEN OTHERS THEN
	     XICAPITAL2 := 0;
	 END;
	 PICAPITALOUT := NVL(PICAPITALIN, 0) + NVL(XICAPITAL, 0) + NVL(XICAPITAL2, 0);
	 RETURN 0;
     ELSE
	  PICAPITALOUT := NVL(PICAPITALIN, 0);
	  RETURN 0;
     END IF;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_CAPCOBERTURAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_CAPCOBERTURAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_CAPCOBERTURAS" TO "PROGRAMADORESCSI";