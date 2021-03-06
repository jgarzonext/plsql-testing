--------------------------------------------------------
--  DDL for Trigger MOD_CESTSIN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."MOD_CESTSIN" 
  BEFORE INSERT OR UPDATE OF CESTSIN ON SINIESTROS
  FOR EACH ROW
          WHEN (
(OLD.cestsin IS NULL) OR (NEW.cestsin <> OLD.cestsin)
      ) DECLARE
  PNMOVIMI NUMBER;
  PFCONTAB DATE:=NULL;
  VFNOTIFI DATE;
  ERROR NUMBER;
BEGIN
  SELECT NVL(MAX(nmovimi) + 1,1)
  INTO pnmovimi
  FROM MOVSINIESTRO
  WHERE nsinies = :NEW.nsinies;

  ERROR := F_Fcontabsini(:NEW.sseguro,F_Sysdate,PFCONTAB);

  IF ERROR <> 0 THEN
    RAISE_APPLICATION_ERROR(-20001,'ERROR : LAS CONSULTAS DE LA FUNCI�N HAN PRODUCIDO EL ERROR            '||TO_CHAR(ERROR));
  END IF;

  IF PFCONTAB < TRUNC(:NEW.FSINIES) THEN
     PFCONTAB:= TRUNC(:NEW.FSINIES);
  END IF;

  IF INSERTING THEN
    INSERT INTO MOVSINIESTRO (NSINIES,NMOVIMI,FMOVIMI,CUSUMOV,CESTADO,CMOVSIN,CCAUSIN,CMOTSIN,FCONTAB)
    VALUES (:NEW.NSINIES,PNMOVIMI,F_Sysdate,F_USER,:NEW.CESTSIN,1,:NEW.CCAUSIN,:NEW.CMOTSIN,PFCONTAB);
  ELSIF UPDATING THEN
    INSERT INTO MOVSINIESTRO (NSINIES,NMOVIMI,FMOVIMI,CUSUMOV,CESTADO,CMOVSIN,FCONTAB)
    VALUES (:NEW.NSINIES,PNMOVIMI,F_Sysdate,F_USER,:NEW.CESTSIN,1,PFCONTAB);
  END IF;
END;









/
ALTER TRIGGER "AXIS"."MOD_CESTSIN" ENABLE;
