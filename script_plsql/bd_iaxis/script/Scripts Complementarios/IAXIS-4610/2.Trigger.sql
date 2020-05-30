CREATE OR REPLACE EDITIONABLE TRIGGER CONVERSION_IIMPORT_A_MONCON
   BEFORE INSERT OR UPDATE ON MOVCTATECNICA
   FOR EACH ROW
DECLARE
   v_itasa NUMBER;
   v_cmoncontab   parempresas.nvalpar%TYPE := pac_parametros.f_parempresa_n(24, 'MONEDACONTAB');   
   v_ctmoncontab VARCHAR2(5) := pac_monedas.f_cmoneda_t(v_cmoncontab);   
BEGIN        
    IF (:new.IIMPORT != :old.IIMPORT) OR :old.IIMPORT IS NULL THEN        
        v_itasa := pac_eco_tipocambio.f_cambio(pac_monedas.f_cmoneda_t(PAC_MONEDAS.f_moneda_producto(:new.SPRODUC)), v_ctmoncontab, :new.FMOVIMI);        
        IF v_itasa IS NULL THEN
            p_tab_error(f_sysdate, f_user, 'ERROR AL OBTENER LA TASA DE CAMBIO PARA EL PRODUCTO = ' || :new.SPRODUC || ', EN LA CONVERSION A ' || v_ctmoncontab || ' PARA LA FECHA ' || :new.FMOVIMI, 2, SQLCODE, SQLERRM);
        ELSE            
            :NEW.IIMPORT_MONCON := f_round(NVL(:new.iimport, 0) * v_itasa, v_cmoncontab);                        
        END IF;        
    END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'ERROR AL OBTENER LA TASA DE CAMBIO PARA EL PRODUCTO = ' || :new.SPRODUC || ', EN LA CONVERSION A ' || v_ctmoncontab || ' PARA LA FECHA ' || :new.FMOVIMI, 2, SQLCODE, SQLERRM);     
END;
/
ALTER TRIGGER CONVERSION_IIMPORT_A_MONCON ENABLE;
/
COMMIT;
