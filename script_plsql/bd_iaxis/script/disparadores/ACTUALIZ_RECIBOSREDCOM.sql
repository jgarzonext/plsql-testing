--------------------------------------------------------
--  DDL for Trigger ACTUALIZ_RECIBOSREDCOM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."ACTUALIZ_RECIBOSREDCOM" 
   -- Bug 21737 - APD - 16/03/2012 - ha de ser solo AFTER UPDATE, NO AFTER INSERT OR UPDATE
AFTER UPDATE OF cagente
   -- fin Bug 21737 - APD - 16/03/2012
ON RECIBOS    REFERENCING NEW AS NEW OLD AS OLD
   FOR EACH ROW
DECLARE
   v_numerr       NUMBER;
BEGIN
   DELETE FROM recibosredcom
         WHERE nrecibo = :NEW.nrecibo;

   v_numerr := f_insrecibor(:NEW.nrecibo, :NEW.cempres, :NEW.cagente, TRUNC(f_sysdate));

   IF v_numerr <> 0 THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER actualiz_recibosredcom', 1, v_numerr,
                  f_axis_literales(v_numerr));
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGERS actualiz_recibosredcom', 2, SQLCODE, SQLERRM);
END;







/
ALTER TRIGGER "AXIS"."ACTUALIZ_RECIBOSREDCOM" ENABLE;
