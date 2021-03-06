CREATE OR REPLACE TRIGGER TRG_INS_MOVCONTASAP
  AFTER INSERT  ON RECIBOS
  FOR EACH ROW

DECLARE
  P_TIPREC  VARCHAR2(4);
  P_CMOVSEG NUMBER;
  VPASEXEC  NUMBER (8) := 0;

BEGIN 
  IF :NEW.CTIPREC = 0 THEN
   P_TIPREC := '0000'; --NUEVA PRODUCCION
    INSERT INTO MOVCONTASAP
      (NRECIBO, CAGENTE, NMOVIMI, SSEGURO, CTIPCOA, CTIPREC, EVENTO)
    VALUES
      (:NEW.NRECIBO,
       :NEW.CAGENTE,
       :NEW.NMOVIMI,
       :NEW.SSEGURO,
       :NEW.CTIPCOA,
        P_TIPREC,
       'PRODUCCION');
       
  ELSIF :NEW.CTIPREC = 1 THEN   
    SELECT CMOVSEG
      INTO P_CMOVSEG
      FROM MOVSEGURO
     WHERE SSEGURO = :NEW.SSEGURO
       AND NMOVIMI = :NEW.NMOVIMI;
       VPASEXEC :=1;
       
    IF P_CMOVSEG = 1 AND :NEW.CSUBTIPREC = 1 THEN
      P_TIPREC := '1010'; --SUPLEMENTO
      INSERT INTO MOVCONTASAP
        (NRECIBO, CAGENTE, NMOVIMI, SSEGURO, CTIPCOA, CTIPREC, EVENTO)
      VALUES
        (:NEW.NRECIBO,
         :NEW.CAGENTE,
         :NEW.NMOVIMI,
         :NEW.SSEGURO,
         :NEW.CTIPCOA,
         P_TIPREC,
         'PRODUCCION');
    END IF;
    
  ELSIF :NEW.CTIPREC = 9  THEN
    
     IF :NEW.CSUBTIPREC = 1  THEN
      P_TIPREC := '9010'; -- EXTORNO
      INSERT INTO MOVCONTASAP
        (NRECIBO, CAGENTE, NMOVIMI, SSEGURO, CTIPCOA, CTIPREC, EVENTO)
      VALUES
        (:NEW.NRECIBO,
         :NEW.CAGENTE,
         :NEW.NMOVIMI,
         :NEW.SSEGURO,
         :NEW.CTIPCOA,
         P_TIPREC,
         'PRODUCCION');
           
     ELSIF :NEW.CSUBTIPREC = 17   THEN
     P_TIPREC := '9031'; -- ANUL. TOTAL CON RECAUDO
      INSERT INTO MOVCONTASAP
        (NRECIBO, CAGENTE, NMOVIMI, SSEGURO, CTIPCOA, CTIPREC, EVENTO)
      VALUES
        (:NEW.NRECIBO,
         :NEW.CAGENTE,
         :NEW.NMOVIMI,
         :NEW.SSEGURO,
         :NEW.CTIPCOA,
         P_TIPREC,
         'PRODUCCION');
     END IF;
   END IF;

  EXCEPTION
   WHEN OTHERS THEN
      P_TAB_ERROR(F_SYSDATE,
                  F_USER,
                  'TRG_INS_MOVCONTASAP',
                  VPASEXEC,
                  SQLCODE,
                  SQLERRM);       

END;
/



