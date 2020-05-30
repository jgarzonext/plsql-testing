create or replace TRIGGER insert_age_corretaje
   --
    after INSERT ON age_corretaje
    FOR EACH ROW
    declare
    v_error NUMBER;
    v_sseguro  NUMBER;
    PRAGMA AUTONOMOUS_TRANSACTION;
   --
BEGIN

      v_error:=  PAC_CORRETAJE.f_set_corretemp(:NEW.sseguro,:NEW.cagente,:NEW.nmovimi,:NEW.nordage,:NEW.pcomisi,:NEW.ppartici,:NEW.islider);
      v_error:=  PAC_CORRETAJE.f_set_comis_iva(:NEW.sseguro,:NEW.nmovimi);       

END;