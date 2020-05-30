--------------------------------------------------------
--  DDL for Trigger BUI_CTASEGURO_SHW_FVALMOV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BUI_CTASEGURO_SHW_FVALMOV" 
   BEFORE INSERT OR UPDATE OF fvalmov
   ON ctaseguro_shadow
   FOR EACH ROW
DECLARE
   vtimeclose     VARCHAR2(5);
   vndayaft       NUMBER;
   vdatetmp       VARCHAR(50) := TO_CHAR(f_sysdate, 'dd/mm/yyyy');
   vclosed        NUMBER := 0;
BEGIN
   BEGIN
      SELECT NVL(ndayaft, 0)
        INTO vndayaft
        FROM fondos
       WHERE ccodfon = :NEW.cesta;
   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         vndayaft := 0;
   END;

   vtimeclose := pac_pensiones.f_get_timeclose(:NEW.cesta, NULL);

   IF vtimeclose IS NOT NULL THEN
      vdatetmp := vdatetmp || ' ' || vtimeclose;

      IF f_sysdate > TO_DATE(vdatetmp, 'dd/mm/yyyy HH24:MI') THEN
         vclosed := 1;
      END IF;
   END IF;

   IF vndayaft <> 0 THEN
      :NEW.fvalmov := :NEW.fvalmov + vndayaft;
   ELSE
      :NEW.fvalmov := :NEW.fvalmov + vclosed;
   END IF;
EXCEPTION
   WHEN VALUE_ERROR THEN
      -- Bug 21223 - APD - 14/02/2012 - se comenta elimina los dbms_outputs
      p_tab_error(f_sysdate, f_user, 'TRIGGER bui_ctaseguro_shw_fvalmov', 1, SQLCODE, SQLERRM);
      RAISE;
   WHEN OTHERS THEN
      -- Bug 21223 - APD - 14/02/2012 - se comenta elimina los dbms_outputs
      p_tab_error(f_sysdate, f_user, 'TRIGGER bui_ctaseguro_shw', 1, SQLCODE, SQLERRM);
      RAISE;
END;




/
ALTER TRIGGER "AXIS"."BUI_CTASEGURO_SHW_FVALMOV" ENABLE;
