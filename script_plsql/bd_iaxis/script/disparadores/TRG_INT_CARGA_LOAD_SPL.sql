--------------------------------------------------------
--  DDL for Trigger TRG_INT_CARGA_LOAD_SPL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_INT_CARGA_LOAD_SPL" 
   BEFORE UPDATE
   ON int_carga_load_spl
   FOR EACH ROW
BEGIN
   IF NVL(:NEW.vcampo1, '1') || ' ' || NVL(:NEW.vcampo2, '1') || ' ' || NVL(:NEW.vcampo3, '1')
      || ' ' || NVL(:NEW.vcampo4, '1') || ' ' || NVL(:NEW.vcampo5, '1') || ' '
      || NVL(:NEW.vcampo6, '1') || ' ' || NVL(:NEW.vcampo7, '1') || ' '
      || NVL(:NEW.vcampo8, '1') || ' ' || NVL(:NEW.vcampo9, '1') || ' '
      || NVL(:NEW.vcampo10, '1') || ' ' || NVL(:NEW.vcampo11, '1') || ' '
      || NVL(:NEW.vcampo12, '1') || ' ' || NVL(:NEW.vcampo13, '1') || ' '
      || NVL(:NEW.vcampo14, '1') || ' ' || NVL(:NEW.vcampo15, '1') <>
         NVL(:OLD.vcampo2, '1') || ' ' || NVL(:OLD.vcampo3, '1') || ' '
         || NVL(:OLD.vcampo4, '1') || ' ' || NVL(:OLD.vcampo5, '1') || ' '
         || NVL(:OLD.vcampo6, '1') || ' ' || NVL(:OLD.vcampo7, '1') || ' '
         || NVL(:OLD.vcampo8, '1') || ' ' || NVL(:OLD.vcampo9, '1') || ' '
         || NVL(:OLD.vcampo10, '1') || ' ' || NVL(:OLD.vcampo11, '1') || ' '
         || NVL(:OLD.vcampo12, '1') || ' ' || NVL(:OLD.vcampo13, '1') || ' '
         || NVL(:OLD.vcampo14, '1') || ' ' || NVL(:OLD.vcampo15, '1') THEN
      --NULL;
      INSERT INTO hisint_carga_load_spl
                  (fmodifi, cusuari, cdarchi, proceso, nlinea, vcampo1,
                   vcampo2, vcampo3, vcampo4, vcampo5, vcampo6,
                   vcampo7, vcampo8, vcampo9, vcampo10, vcampo11,
                   vcampo12, vcampo13, vcampo14, vcampo15)
           VALUES (f_sysdate, f_user, :OLD.cdarchi, :OLD.proceso, :OLD.nlinea, :OLD.vcampo1,
                   :OLD.vcampo2, :OLD.vcampo3, :OLD.vcampo4, :OLD.vcampo5, :OLD.vcampo6,
                   :OLD.vcampo7, :OLD.vcampo8, :OLD.vcampo9, :OLD.vcampo10, :OLD.vcampo11,
                   :OLD.vcampo12, :OLD.vcampo13, :OLD.vcampo14, :OLD.vcampo15);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END trg_int_carga_load_spl;




/
ALTER TRIGGER "AXIS"."TRG_INT_CARGA_LOAD_SPL" ENABLE;
