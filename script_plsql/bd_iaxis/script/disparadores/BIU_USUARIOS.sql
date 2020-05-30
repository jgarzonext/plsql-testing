--------------------------------------------------------
--  DDL for Trigger BIU_USUARIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIU_USUARIOS" 
   BEFORE INSERT OR UPDATE
   ON usuarios
   FOR EACH ROW
BEGIN
   :NEW.cusuari := UPPER(:NEW.cusuari);
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'BIU_USUARIOS', 1, 'Error en el trigger: ', SQLERRM);
      RAISE;
END biu_usuarios;








/
ALTER TRIGGER "AXIS"."BIU_USUARIOS" ENABLE;
