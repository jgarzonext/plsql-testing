--------------------------------------------------------
--  DDL for Trigger TRG_MOVPAGOS_CTATEC_COA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_MOVPAGOS_CTATEC_COA" 
   AFTER INSERT OR UPDATE
   ON pagos_ctatec_coa
   FOR EACH ROW
BEGIN
   IF INSERTING THEN
      -- Si un Nuevo registro, guardamos los valores iniciales
      INSERT INTO movpagos_ctatec_coa
                  (smovpagcoa, spagcoa, cempres, ccompani,
                   sproduc, iimporte, iimporte_moncon, cestant, cestado,
                   falta, fliquida, fcontab)
           VALUES (smovpagcoa.NEXTVAL, :NEW.spagcoa, :NEW.cempres, :NEW.ccompani,
                   :NEW.sproduc, :NEW.iimporte, :NEW.iimporte_moncon, NULL, :NEW.cestado,
                   f_sysdate, :NEW.fliquida, NULL);
   ELSIF UPDATING THEN
      -- Si es un UPDATE y hay un cambio de estado, guardamos el registro del movimiento
      IF :OLD.cestado <> :NEW.cestado THEN
         INSERT INTO movpagos_ctatec_coa
                     (smovpagcoa, spagcoa, cempres, ccompani,
                      sproduc, iimporte, iimporte_moncon, cestant,
                      cestado, falta, fliquida, fcontab)
              VALUES (smovpagcoa.NEXTVAL, :OLD.spagcoa, :OLD.cempres, :OLD.ccompani,
                      :OLD.sproduc, :OLD.iimporte, :OLD.iimporte_moncon, :OLD.cestado,
                      :NEW.cestado, f_sysdate, :NEW.fliquida, NULL);
      END IF;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER TRG_MOVPAGOS_CTATEC_COA', 1, SQLCODE, SQLERRM);
END trg_pagos_ctatec_coa;





/
ALTER TRIGGER "AXIS"."TRG_MOVPAGOS_CTATEC_COA" ENABLE;
