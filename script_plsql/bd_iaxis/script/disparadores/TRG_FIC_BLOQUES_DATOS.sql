--------------------------------------------------------
--  DDL for Trigger TRG_FIC_BLOQUES_DATOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_FIC_BLOQUES_DATOS" 
   BEFORE INSERT OR UPDATE
   ON fic_bloques_datos
   FOR EACH ROW
BEGIN
   CASE
      WHEN INSERTING THEN
         :NEW.ffecrea := f_sysdate;
         :NEW.cusalta := f_user;
         :NEW.fmovimi := f_sysdate;
         :NEW.cusuari := f_user;
      WHEN UPDATING THEN
         :NEW.fmovimi := f_sysdate;
         :NEW.cusuari := f_user;
   END CASE;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'trg_fic_bloques_datos', 2, SQLCODE, SQLERRM);
END;






/
ALTER TRIGGER "AXIS"."TRG_FIC_BLOQUES_DATOS" ENABLE;
