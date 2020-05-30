--------------------------------------------------------
--  DDL for Function F_TARLLAR2
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_TARLLAR2" (pctarifa IN NUMBER, pticapital IN  NUMBER,
	ppreg20 IN NUMBER, ppreg27 IN NUMBER, ppreg28 IN NUMBER,
	pctecnic IN NUMBER, pmodali IN NUMBER,ptarifar IN NUMBER, pipritar IN OUT NUMBER,
	atribu IN OUT NUMBER, piprima IN OUT NUMBER, moneda IN NUMBER,
	pcextrap IN NUMBER DEFAULT 0, iextrap IN NUMBER DEFAULT 0)
RETURN NUMBER authid current_user IS
/***********************************************************************
	F_TGARLLAR: Calcula la prima anual de una garant�a de la llar
	ALLIBCTR
	Modificaci�: Afegim m�s par�metres a la funci� f_tarifas
		(el descompte comercial valdr� 0)
	Modificaci�: Els descomptes i els rec�rrecs es far�n fora d'aquesta funci�
	Modificaci�: Afegim la moneda
	Modificaci�: Tenemos en cuenta la modalidad 0, 6
	Modificaci�: Miramos si a la garantia se le aplican descuentos o
		descargos.
	Modificaci�: A�adimos las preguntas 113, 114
	Modificaci�: A�adimos la posibilidad del paso de parametro del
		valor de la extraprima al calculo de la tarifa.
	Modificaci�: Suprimimos el descuento para la modalidad 6
	Modificaci�: No se hacen los descuentos de preg113 y preg114, ahora se hacen
		  en f_tarllar1
	Modificaci�: Se a�ade el par�metro ptarifar
   Modificaci�: Se a�aden las tarifas del producto Comunidades Prosperity.
                El par�metro pticapital tendr� la suma de capitales (en vez de primas,
                como tienen los dem�s casos).
***********************************************************************/
	error		NUMBER:=0;
	porcen	NUMBER;
	porcen113	NUMBER;
	porcen114	NUMBER;
	valextrap	NUMBER;
BEGIN
	-- Calculamos las tarifas de las garantias que faltan
	IF pctecnic = 0 THEN
	   IF pctarifa is not null THEN
		IF ptarifar = 1 THEN
			-- Cogemos el valor de la extraprima
			  IF pcextrap = 0 THEN
				valextrap := 0;
			  ELSE
				valextrap := iextrap;
			  END IF;
		 	  IF pctarifa in (49,189) THEN
				error := f_tarifas (pctarifa, nvl(ppreg20,1), 0, 1, 0, valextrap,
					pipritar, atribu, piprima, moneda);
                          ELSE
				error := f_tarifas (pctarifa, 0, 0, 1, 0, valextrap, pipritar,
					atribu, piprima, moneda);
			  END IF;
		ELSE
			piprima := pipritar;
		END IF;
	   END IF;
	ELSE
	   -- No hacemos el descuento si la modalidad es 6
	   --	 IF pmodali IN (0, 2, 6) THEN
	   IF pmodali IN (0,2,4) THEN
		IF pticapital > 35000 AND pticapital <= 50000 THEN
			piprima := piprima - piprima * 0.05;
		ELSIF pticapital >= 50001 AND pticapital <= 70000 THEN
			piprima := piprima - piprima * 0.08;
		ELSIF pticapital >= 70001 AND pticapital <= 100000 THEN
			piprima := piprima - piprima * 0.1;
		ELSIF pticapital >= 100001 THEN
			piprima := piprima - piprima * 0.12;
		END IF;
		porcen := f_prespuesta (27, ppreg27, null);
		-- Estos descuentos ahora se har�n en f_tarllar1
		--porcen113 := f_prespuesta (113, ppreg113, pctarifa);
		--porcen114 := f_prespuesta (114, ppreg114, pctarifa);
		piprima := piprima - piprima * nvl(porcen,0)/100;
		porcen:=f_prespuesta(28,ppreg28,null);
		piprima := piprima + piprima * nvl(porcen,0)/100;
           -- Se a�ade el descuento por capitales elevados para Comunidades Prosperity
           ELSIF pctarifa BETWEEN 1301 AND 1328 THEN
                --
                -- De 150 a 200 millones, 10% de descuento
                --
                IF pticapital BETWEEN 150000000 AND 200000000 THEN
	           piprima := piprima - piprima * 0.1;
                --
                -- De 200 a 500 millones, 15% de descuento
                --
                ELSIF pticapital BETWEEN 200000001 AND 500000000 THEN
	           piprima := piprima - piprima * 0.15;
                --
                -- M�s de 500 millones, 20% de descuento
                --
                ELSIF pticapital >= 500000001 THEN
	           piprima := piprima - piprima * 0.2;
                END IF;
	   END IF;
	END IF;
-- No hacemos el descuento si la modalidad es 6
--  IF pmodali IN (0, 2, 6) THEN
	-- No se hace este recargo, ahora es una garant�a
	/* IF pmodali in (0, 2) THEN
		porcen := f_prespuesta (28, ppreg28, null);
		IF porcen IS NOT NULL THEN
			piprima := piprima + piprima * porcen/100;
		END IF;
	END IF;
	*/
	-- Arrodonim a partir de la moneda
	piprima := f_round (piprima, moneda);
	RETURN error;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_TARLLAR2" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_TARLLAR2" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_TARLLAR2" TO "PROGRAMADORESCSI";
