--------------------------------------------------------
--  DDL for Trigger TRG_FIC_REPOSITORIO_FORMATOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_FIC_REPOSITORIO_FORMATOS" 
   BEFORE INSERT OR UPDATE
   ON fic_repositorio_formatos
   FOR EACH ROW
DECLARE
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
      p_tab_error(f_sysdate, f_user, 'trg_fic_repositorio_formatos', 2, SQLCODE, SQLERRM);
END;






/
ALTER TRIGGER "AXIS"."TRG_FIC_REPOSITORIO_FORMATOS" ENABLE;
