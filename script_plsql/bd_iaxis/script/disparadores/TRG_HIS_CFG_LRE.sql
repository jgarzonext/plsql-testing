--------------------------------------------------------
--  DDL for Trigger TRG_HIS_CFG_LRE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_CFG_LRE" 
   BEFORE UPDATE OR DELETE
   ON cfg_lre
   FOR EACH ROW
DECLARE
   vaccion   VARCHAR2 (2);
BEGIN
   IF UPDATING
   THEN
      vaccion := 'U';
   ELSE
      vaccion := 'D';
   END IF;

   -- crear registro histórico
   INSERT INTO his_cfg_lre
               (cempres, cmodo, sproduc, cmotmov,
                ctiplis, taccion, cactivo, cusualt,
                falta, cusumod, fmodifi, cusuhist, fcreahist,
                accion
               )
        VALUES (:OLD.cempres, :OLD.cmodo, :OLD.sproduc, :OLD.cmotmov,
                :OLD.ctiplis, :OLD.taccion, :OLD.cactivo, :OLD.cusualt,
                :OLD.falta, :OLD.cusumod, :OLD.fmodifi, f_user, f_sysdate,
                '' || vaccion || ''
               );
EXCEPTION
   WHEN OTHERS
   THEN
      p_tab_error (f_sysdate,
                   f_user,
                   'TRIGGER trg_his_cfg_lre',
                   1,
                   SQLCODE,
                   SQLERRM
                  );
      RAISE;
END trg_his_cfg_lre;



/
ALTER TRIGGER "AXIS"."TRG_HIS_CFG_LRE" ENABLE;
