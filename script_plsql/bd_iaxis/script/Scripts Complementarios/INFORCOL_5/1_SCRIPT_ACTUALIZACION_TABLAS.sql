/*
  INFORCOL Reaseguro Fase 1 Sprint 4
  Reaseguro facultativo - Ajuste para deposito en prima retenida
*/

DECLARE
   v_contexto NUMBER := 0;
BEGIN
   v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24, 'USER_BBDD'));
END;
/

-- 1.0 Actualizacion de tablas adicion de nuevas columna
BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE CUACESFAC DROP COLUMN PRESREA'; 
  EXCEPTION
  WHEN OTHERS THEN
      IF (SQLCODE = -00904) THEN
         DBMS_OUTPUT.PUT_LINE('La columna presrea no existe en la tabla cuacesfac. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
	  ELSE
		 DBMS_OUTPUT.PUT_LINE('ERROR...' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
      END IF;
END;
/

BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE MIG_CUACESFAC DROP COLUMN PRESREA'; 
  EXCEPTION
  WHEN OTHERS THEN
      IF (SQLCODE = -00904) THEN
         DBMS_OUTPUT.PUT_LINE('La columna PRESREA no existe en la tabla MIG_CUACESFAC. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
	  ELSE
		 DBMS_OUTPUT.PUT_LINE('ERROR...' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
      END IF;
END;
/
	 
BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE mig_cuacesfac_bs DROP COLUMN PRESREA'; 
  EXCEPTION
  WHEN OTHERS THEN
      IF (SQLCODE = -00904) THEN
         DBMS_OUTPUT.PUT_LINE('La columna PRESREA no existe en la tabla mig_cuacesfac_bs. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
	  ELSE
		 DBMS_OUTPUT.PUT_LINE('ERROR...' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
      END IF;
END;
/
	  
ALTER TABLE CUACESFAC ADD PRESREA NUMBER(5,2);
COMMENT ON COLUMN CUACESFAC.PRESREA IS '% reserva sobre cesión a cargo del reasegurador'; 

COMMENT ON COLUMN CUACESFAC.PRESERV IS '% reserva sobre cesión a cargo de la compañia';

ALTER TABLE MIG_CUACESFAC ADD PRESREA  NUMBER(5,2);
COMMENT ON COLUMN MIG_CUACESFAC.PRESREA IS 'Porcentaje reserva sobre cesion a cargo del reasegurador';

COMMENT ON COLUMN MIG_CUACESFAC.PRESERV IS 'Porcentaje reserva sobre cesion a cargo de la compania';

ALTER TABLE MIG_CUACESFAC_BS ADD PRESREA NUMBER(5,2);
COMMENT ON COLUMN MIG_CUACESFAC_BS.PRESREA IS 'Porcentaje reserva sobre cesion a cargo del reasegurador';


-- 2.0 Actualizacion de types y object - eliminacion para posterior creacion
BEGIN
  EXECUTE IMMEDIATE 'DROP TYPE T_IAX_CUACESFAC';
  EXCEPTION
  WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR Eliminando t_iax_cuacesfac ' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
END;
/

BEGIN
  EXECUTE IMMEDIATE 'DROP TYPE BODY OB_IAX_CUACESFAC';
  EXCEPTION
  WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR Eliminando el body ob_iax_cuacesfac' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
END;
/

BEGIN
  EXECUTE IMMEDIATE 'DROP TYPE OB_IAX_CUACESFAC';
  EXCEPTION
  WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR Eliminando ob_iax_cuacesfac' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
END;
/