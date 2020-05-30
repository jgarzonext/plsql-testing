--------------------------------------------------------
--  DDL for Trigger ACTUALIZA_FCONTAB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."ACTUALIZA_FCONTAB" 
   BEFORE INSERT
   ON sin_tramita_movpago
   FOR EACH ROW
DECLARE
   ult_cierre     DATE;
   prox_cierre    DATE;
   v_contadia     NUMBER;
   v_contaonline  NUMBER;
BEGIN
   SELECT NVL(pac_parametros.f_parempresa_n(pac_md_common.f_get_cxtempresa, 'CONTA_DIA'), 0),
          NVL(pac_parametros.f_parempresa_n(pac_md_common.f_get_cxtempresa, 'CONTAB_ONLINE'), 0)
     INTO v_contadia,
          v_contaonline
     FROM DUAL;

   IF v_contadia = 1 THEN
      :NEW.fcontab := :NEW.fcontab;
   ELSIF v_contaonline = 1 THEN
      :NEW.fcontab := NVL(:NEW.fcontab, TRUNC(f_sysdate));
   ELSE
      SELECT MAX(fperfin), ADD_MONTHS(MAX(fperfin), 1)
        INTO ult_cierre, prox_cierre
        FROM cierres
       WHERE cempres = pac_iax_common.f_get_cxtempresa
         AND ctipo = 2
         AND cestado = 1;

      IF ult_cierre < :NEW.fefepag THEN
         :NEW.fcontab := :NEW.fefepag;
      ELSIF prox_cierre >= :NEW.falta THEN
         :NEW.fcontab := :NEW.falta;
      ELSE
         :NEW.fcontab := prox_cierre;
      END IF;

      :NEW.fcontab := TRUNC(:NEW.fcontab);
   END IF;
END actualiza_fcontab;



/
ALTER TRIGGER "AXIS"."ACTUALIZA_FCONTAB" ENABLE;
