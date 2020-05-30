/* Formatted on 12/12/2019 18:30*/
/* **************************** 12/12/2019 18:30 **********************************************************************
Versión           Descripción
01.               -Este script crea el trigger de auditoría sobre la tabla COMRECIBO.
IAXIS-7983         12/12/2019 Daniel Rodríguez
***********************************************************************************************************************/
CREATE OR REPLACE TRIGGER trg_comrecibo
   BEFORE UPDATE OR DELETE
   ON comrecibo
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF (:NEW.nrecibo|| ' ' ||:NEW.nnumcom|| ' ' ||:NEW.cagente|| ' ' ||:NEW.cestrec|| ' ' ||:NEW.fmovdia|| ' ' ||
          :NEW.fcontab|| ' ' ||:NEW.icombru|| ' ' ||:NEW.icomret|| ' ' ||:NEW.icomdev|| ' ' ||:NEW.iretdev|| ' ' ||
          :NEW.nmovimi|| ' ' ||:NEW.icombru_moncia|| ' ' ||:NEW.icomret_moncia|| ' ' ||:NEW.icomdev_moncia|| ' ' ||
          :NEW.iretdev_moncia|| ' ' ||:NEW.fcambio|| ' ' ||:NEW.cgarant|| ' ' ||:NEW.icomcedida|| ' ' ||
          :NEW.icomcedida_moncia|| ' ' ||:NEW.ccompan|| ' ' ||:NEW.ivacomisi|| ' ' ||:NEW.creccia) <>
         (:OLD.nrecibo|| ' ' ||:OLD.nnumcom|| ' ' ||:OLD.cagente|| ' ' ||:OLD.cestrec|| ' ' ||:OLD.fmovdia|| ' ' ||
          :OLD.fcontab|| ' ' ||:OLD.icombru|| ' ' ||:OLD.icomret|| ' ' ||:OLD.icomdev|| ' ' ||:OLD.iretdev|| ' ' ||
          :OLD.nmovimi|| ' ' ||:OLD.icombru_moncia|| ' ' ||:OLD.icomret_moncia|| ' ' ||:OLD.icomdev_moncia|| ' ' ||
          :OLD.iretdev_moncia|| ' ' ||:OLD.fcambio|| ' ' ||:OLD.cgarant|| ' ' ||:OLD.icomcedida|| ' ' ||:OLD.icomcedida_moncia|| ' ' ||
          :OLD.ccompan|| ' ' ||:OLD.ivacomisi|| ' ' ||:OLD.creccia) THEN
         -- crear registro histórico
         INSERT INTO his_comrecibo
                     (nrecibo, nnumcom, cagente, cestrec, fmovdia, fcontab, icombru, icomret, 
                      icomdev, iretdev, nmovimi, icombru_moncia, icomret_moncia, icomdev_moncia, 
                      iretdev_moncia, fcambio, cgarant, icomcedida, icomcedida_moncia, ccompan, 
                      ivacomisi, creccia, ttrx,ttraza, cusualt, falta)
              VALUES (:OLD.nrecibo, :OLD.nnumcom, :OLD.cagente, :OLD.cestrec, :OLD.fmovdia, 
                      :OLD.fcontab, :OLD.icombru, :OLD.icomret, :OLD.icomdev, :OLD.iretdev, 
                      :OLD.nmovimi, :OLD.icombru_moncia, :OLD.icomret_moncia, :OLD.icomdev_moncia, 
                      :OLD.iretdev_moncia, :OLD.fcambio, :OLD.cgarant, :OLD.icomcedida, :OLD.icomcedida_moncia, 
                      :OLD.ccompan, :OLD.ivacomisi, :OLD.creccia, 'UPDATING', dbms_utility.format_call_stack,f_user, f_sysdate);
      END IF;
   ELSIF DELETING THEN
      -- crear registro histórico
      INSERT INTO his_comrecibo
                     (nrecibo, nnumcom, cagente, cestrec, fmovdia, fcontab, icombru, icomret, 
                      icomdev, iretdev, nmovimi, icombru_moncia, icomret_moncia, icomdev_moncia, 
                      iretdev_moncia, fcambio, cgarant, icomcedida, icomcedida_moncia, ccompan, 
                      ivacomisi, creccia, ttrx, ttraza, cusualt, falta)
              VALUES (:OLD.nrecibo, :OLD.nnumcom, :OLD.cagente, :OLD.cestrec, :OLD.fmovdia, 
                      :OLD.fcontab, :OLD.icombru, :OLD.icomret, :OLD.icomdev, :OLD.iretdev, 
                      :OLD.nmovimi, :OLD.icombru_moncia, :OLD.icomret_moncia, :OLD.icomdev_moncia, 
                      :OLD.iretdev_moncia, :OLD.fcambio, :OLD.cgarant, :OLD.icomcedida, :OLD.icomcedida_moncia, 
                      :OLD.ccompan, :OLD.ivacomisi, :OLD.creccia, 'DELETING', dbms_utility.format_call_stack, f_user, f_sysdate);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
     p_tab_error(f_sysdate, f_user, 'trg_comrecibo', 0, SQLCODE, SQLERRM);      
END trg_comrecibo;
/







