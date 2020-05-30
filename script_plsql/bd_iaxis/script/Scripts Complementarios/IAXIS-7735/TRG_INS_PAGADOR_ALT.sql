/*********************************************************************************************************************** 
   Fecha:        26/12/2019   
   Descripciòn:  TRIGGER TRG_INS_PAGADOR_ALT 
   Tarea jira:   IAXIS-7735    
   Autor:        Rodrigo Velosa
***********************************************************************************************************************/ 

CREATE OR REPLACE TRIGGER TRG_INS_PAGADOR_ALT
  AFTER INSERT OR UPDATE ON MOVSEGURO
  FOR EACH ROW
  BEGIN
    
      PAC_PERSONA.P_PAGADOR_ALT(:NEW.SSEGURO);
  
  EXCEPTION
   WHEN OTHERS THEN
      P_TAB_ERROR(F_SYSDATE,
                  F_USER,
                  'TRG_INS_PAGADOR_ALT',
                  0,
                  SQLCODE,
                  SQLERRM);
END;
/