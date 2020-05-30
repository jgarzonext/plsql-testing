/* Formatted on 13/04/2019 07:00 (Formatter Plus v4.8.8)
/* **************************** 14/04/2019  07:00 **********************************************************************
    Versión         01.
    Desarrollador   Fabrica Software INFORCOL
    Fecha           13/05/2020
    Actualzacion    13/05/2020
    Descripcion     Reaseguro Cuadros Facultativos y Depositos en Prima
                    Reaseguro Facultativo - Deposito en Prima adicionar nuevas columnas a la tabla de cuadro facultativo - CUASEFAC
                    Estas nuevas columnas se alimentaran desde el trigger TRG_CESIONESREA_RET de la tabla CESIONESREA
***********************************************************************************************************************/
DECLARE
   v_contexto NUMBER := 0;
BEGIN
   v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24, 'USER_BBDD'));
END;
/

-- 1.0 Actualizacion de tablas adicion de nuevas columna
BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE CUACESFAC DROP COLUMN IRESERV'; 
  EXCEPTION
  WHEN OTHERS THEN
      IF (SQLCODE = -00904) THEN
         DBMS_OUTPUT.PUT_LINE('La columna IRESERV no existe en la tabla cuacesfac. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
	  ELSE
		 DBMS_OUTPUT.PUT_LINE('ERROR...' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
      END IF;
END;
/

BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE CUACESFAC DROP COLUMN IRESREA'; 
  EXCEPTION
  WHEN OTHERS THEN
      IF (SQLCODE = -00904) THEN
         DBMS_OUTPUT.PUT_LINE('La columna IRESREA no existe en la tabla cuacesfac. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
	  ELSE
		 DBMS_OUTPUT.PUT_LINE('ERROR...' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
      END IF;
END;
/

ALTER TABLE CUACESFAC ADD IRESERV NUMBER;
COMMENT ON COLUMN CUACESFAC.IRESERV IS 'Importe reserva sobre cesion a cargo de la compania'; 

ALTER TABLE CUACESFAC ADD IRESREA NUMBER;
COMMENT ON COLUMN CUACESFAC.IRESREA IS 'Importe reserva sobre cesion a cargo del reasegurador'; 
