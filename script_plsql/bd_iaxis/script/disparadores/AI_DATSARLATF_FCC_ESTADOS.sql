--------------------------------------------------------
--  DDL for Trigger AI_DATSARLATF_FCC_ESTADOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AI_DATSARLATF_FCC_ESTADOS" 
AFTER INSERT OR UPDATE
ON datsarlatf
FOR EACH ROW
DECLARE
   vversion NUMBER;
BEGIN
   SELECT NVL(MAX(version), 0)+1
   INTO vversion
   FROM sarlatfest
   WHERE ssarlaft = :new.ssarlaft;

   CASE
      WHEN INSERTING THEN
         IF :new.cestconf IS NOT NULL THEN
            INSERT INTO SARLATFEST
            VALUES (:new.ssarlaft, vversion, :new.sperson, :new.cestconf, f_user, f_sysdate);
         END IF;
      WHEN UPDATING THEN
         IF (:old.cestconf IS NULL AND :new.cestconf IS NOT NULL) OR (:old.cestconf <> :new.cestconf AND :new.cestconf IS NOT NULL) THEN
            INSERT INTO SARLATFEST
            VALUES (:new.ssarlaft, vversion, :new.sperson, :new.cestconf, f_user, f_sysdate);
         END IF;
   END CASE;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'ai_datsarlatf_fcc_estados', 2, SQLCODE, SQLERRM);
END;

/
ALTER TRIGGER "AXIS"."AI_DATSARLATF_FCC_ESTADOS" ENABLE;
