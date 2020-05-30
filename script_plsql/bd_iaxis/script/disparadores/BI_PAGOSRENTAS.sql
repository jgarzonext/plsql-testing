--------------------------------------------------------
--  DDL for Trigger BI_PAGOSRENTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BI_PAGOSRENTAS" 
BEFORE INSERT ON PAGOSRENTA
FOR EACH ROW
DECLARE
   t_producto VARCHAR2(10);
   classe VARCHAR2(10);
   coment VARCHAR2(56);
BEGIN
	BEGIN
	   SELECT tipo_producto, clase
		 INTO t_producto, classe
		 FROM tipos_producto
		WHERE (cramo, cmodali, ctipseg, ccolect) =
		  	(SELECT cramo, cmodali, ctipseg, ccolect
				   FROM seguros
				  WHERE sseguro = :NEW.SSEGURO
			);
	EXCEPTION
	    WHEN OTHERS THEN
		   t_producto := NULL;
	       classe := NULL;
	END;
	IF classe = 'AHORRO' or  t_producto = 'PIG' then
		coment := '1010-'||LPAD(TO_CHAR(:NEW.IRETENC),13,'0')||'-'||LPAD(TO_CHAR(:NEW.ICONRET),13,'0');
		INSERT INTO pila_pendientes
			(sseguro, ffecmov, iimpmov, ccodmov, coment, fecha_envio)
		VALUES
			(:NEW.SSEGURO, :NEW.FFECPAG, :NEW.ISINRET, 10, coment, NULL);
	END IF;
END;









/
ALTER TRIGGER "AXIS"."BI_PAGOSRENTAS" ENABLE;
