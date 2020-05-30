--------------------------------------------------------
--  DDL for Trigger BI_PAGOSINI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BI_PAGOSINI" 
BEFORE INSERT ON pagosini
FOR EACH ROW
DECLARE
   agrpro   NUMBER:=NULL;
   causin   VARCHAR2(4);
   ssegur   NUMBER;
   t_producto VARCHAR2(10);
   classe VARCHAR2(10);
BEGIN
  IF :new.cestpag = 2 THEN
    BEGIN
	   SELECT tipo_producto, clase
		 INTO t_producto, classe
		 FROM tipos_producto
		WHERE (cramo, cmodali, ctipseg, ccolect) =
		  		(SELECT cramo, cmodali, ctipseg, ccolect
				   FROM seguros
				  WHERE sseguro = 1
				  		--(SELECT sseguro
						 --  FROM recibos
						 -- WHERE nrecibo = :new.nrecibo
						)
				--)
		  ;
    EXCEPTION
	    WHEN OTHERS THEN
		   t_producto := NULL;
           classe := NULL;
    END;
/*********
    IF :new.cestpag = 2 THEN
      -- lectura del tipo de recibo
	  BEGIN
	      SELECT cagrpro
		    INTO agrpro
			FROM productos
		   WHERE (cramo, cmodali, ctipseg, ccolect) =
		   		 		 (SELECT cramo, cmodali, ctipseg, ccolect
						    FROM seguros
						   WHERE sseguro =
						   		 (SELECT sseguro
								    FROM siniestros
								   WHERE nsinies = :new.nsinies)
						);
	  EXCEPTION
	    WHEN NO_DATA_FOUND THEN
			 agrpro := NULL;
	  END;
*******/
  IF classe = 'AHORRO' then
      -- Lectura del importe del recibo
	  BEGIN
	    SELECT SUBSTR(TO_CHAR(ccausin, '0999'), 2, 4), sseguro
		  INTO causin, ssegur
		  FROM siniestros
		 WHERE nsinies = :new.nsinies;
	  EXCEPTION
	    WHEN NO_DATA_FOUND THEN
			 causin := NULL;
	  END;
	END IF;
end if;
    IF agrpro = 2 AND causin LIKE '__04' THEN  ----Venciment
         INSERT INTO pila_pendientes
				(sseguro, ffecmov, iimpmov, ccodmov, coment, fecha_envio)
         VALUES
				(ssegur, :new.fefepag, :new.iimpsin, 9, ' 917', NULL);
	END IF;
--  END IF;
EXCEPTION
     WHEN OTHERS THEN
       Null;
END BI_pagosini;









/
ALTER TRIGGER "AXIS"."BI_PAGOSINI" ENABLE;
