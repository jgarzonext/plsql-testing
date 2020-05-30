create or replace TRIGGER insert_age_corretaje
   --
    after INSERT OR UPDATE ON age_corretaje
    FOR EACH ROW
    declare
    v_error NUMBER;
    v_sseguro  NUMBER;
    PRAGMA AUTONOMOUS_TRANSACTION;
   --
BEGIN

    IF updating THEN
       p_control_error('SGM', 'UPDATING', :OLD.sseguro ||'-'||:OLD.cagente||'-'||:OLD.nmovimi||'-'||:NEW.pcomisi);
      v_error:=  PAC_CORRETAJE.f_actualiza_corretemp(:OLD.sseguro,:OLD.cagente,:OLD.nmovimi,:NEW.pcomisi);
      v_error:=  PAC_CORRETAJE.f_set_comis_iva(:OLD.sseguro,:OLD.nmovimi);       
    END IF;
    
    IF inserting THEN
      v_error:=  PAC_CORRETAJE.f_set_corretemp(:NEW.sseguro,:NEW.cagente,:NEW.nmovimi,:NEW.nordage,:NEW.pcomisi,:NEW.ppartici,:NEW.islider);
      v_error:=  PAC_CORRETAJE.f_set_comis_iva(:NEW.sseguro,:NEW.nmovimi);       
    END IF;
END;