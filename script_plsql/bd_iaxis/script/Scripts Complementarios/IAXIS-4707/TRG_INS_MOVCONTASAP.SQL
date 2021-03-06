CREATE OR REPLACE TRIGGER TRG_INS_MOVCONTASAP
  AFTER INSERT ON RECIBOS
  FOR EACH ROW

DECLARE
  P_TIPREC  VARCHAR2(4);
  P_CMOVSEG NUMBER;
  P_ESTREC  NUMBER;
  VPASEXEC  NUMBER (8) := 0;

BEGIN
  
  IF :NEW.CTIPREC = 0 THEN
    -- INSERT RECORD INTO MOVCONTASAP TABLE
    P_TIPREC := '0000';
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

    IF P_CMOVSEG = 1 THEN
      P_TIPREC := '1010';
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
    ELSIF P_CMOVSEG = 52 THEN
      SELECT CESTREC
        INTO P_ESTREC
        FROM MOVRECIBO
       WHERE NRECIBO = :NEW.NRECIBO;
       VPASEXEC :=2;

      IF P_ESTREC = 1 THEN
        P_TIPREC := '1521';
        INSERT INTO MOVCONTASAP
          (NRECIBO, CAGENTE, NMOVIMI, SSEGURO, CTIPCOA,CTIPREC, EVENTO)
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
  ELSE 
    SELECT CMOVSEG
      INTO P_CMOVSEG
      FROM MOVSEGURO
     WHERE SSEGURO = :NEW.SSEGURO
       AND NMOVIMI = :NEW.NMOVIMI;
     VPASEXEC :=3;

    IF P_CMOVSEG = 1 THEN
      P_TIPREC := '9010';
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
    ELSIF P_CMOVSEG = 52 THEN
      SELECT CESTREC
        INTO P_ESTREC
        FROM MOVRECIBO
       WHERE NRECIBO = :NEW.NRECIBO;
     VPASEXEC :=4;

      IF P_ESTREC = 1 THEN
        P_TIPREC := '9521';
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
    ELSIF P_CMOVSEG = 53 THEN
      SELECT CESTREC
        INTO P_ESTREC
        FROM MOVRECIBO
       WHERE NRECIBO = :NEW.NRECIBO;
      VPASEXEC :=5;

      IF P_ESTREC = 1 THEN
        P_TIPREC := '9531';
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
    ELSIF P_CMOVSEG = 3 THEN
      SELECT CESTREC
        INTO P_ESTREC
        FROM MOVRECIBO
       WHERE NRECIBO = :NEW.NRECIBO;
       VPASEXEC :=6;

      IF P_ESTREC = 1 THEN
        P_TIPREC := '9031';
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