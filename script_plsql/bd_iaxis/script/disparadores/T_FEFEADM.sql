create or replace TRIGGER T_FEFEADM     
   BEFORE INSERT
   ON movrecibo
   FOR EACH ROW
DECLARE
   error          NUMBER;
   v_contadia     NUMBER(1);
BEGIN
   error := f_fefeadm(:NEW.fmovdia, :NEW.cestrec, :NEW.cestant, :NEW.fmovini, :NEW.nrecibo,
                      :NEW.smovrec, :NEW.ctipcob, :NEW.fefeadm);

   IF error <> 0 THEN
      raise_application_error
                             (-20001,
                              'Error : Las consultas de la función han producido el error '
                              || TO_CHAR(error));
   END IF;

--INI SGM IAXIS 5330 Se corrige forma de asignación de fecha contable para vigencias futuras   
   error := f_calcula_fcontable(:NEW.nrecibo, :NEW.cmotmov,:NEW.fmovini,:NEW.fcontab);

   IF error <> 0 THEN    
            p_tab_error(f_sysdate, f_user, 'T_FEFEADM',
                        0, 'Error al calcular fecha contable', SQLERRM);
   END IF;   


END;

/
ALTER TRIGGER T_FEFEADM ENABLE;
