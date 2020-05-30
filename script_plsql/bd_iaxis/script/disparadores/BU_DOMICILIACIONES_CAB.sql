--------------------------------------------------------
--  DDL for Trigger BU_DOMICILIACIONES_CAB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BU_DOMICILIACIONES_CAB" 
   BEFORE UPDATE
   ON domiciliaciones_cab
   FOR EACH ROW
BEGIN
   IF NVL(:NEW.ccobban, -1) <> NVL(:OLD.ccobban, -1)
      OR NVL(:NEW.cempres, -1) <> NVL(:OLD.cempres, -1)
      OR NVL(:NEW.fefecto, f_sysdate - 1) <> NVL(:OLD.fefecto, f_sysdate)
      OR NVL(:NEW.tfileenv, '#') <> NVL(:OLD.tfileenv, '#')
      OR NVL(:NEW.tfiledev, '#') <> NVL(:OLD.tfiledev, '#')
      OR NVL(:NEW.cestdom, -1) <> NVL(:OLD.cestdom, -1)
      OR NVL(:NEW.cremban, '#') <> NVL(:OLD.cremban, '#')
      OR NVL(:NEW.cusumod, '#') <> NVL(:OLD.cusumod, '#')
      OR NVL(:NEW.fusumod, f_sysdate - 1) <> NVL(:OLD.fusumod, f_sysdate)
      OR NVL(:NEW.sdevolu, -1) <> NVL(:OLD.sdevolu, -1) THEN
      INSERT INTO hisdomiciliaciones_cab
                  (shisdom, sproces, ccobban, cempres,
                   fefecto, tfileenv, tfiledev, cestdom, cremban,
                   cusumod, fusumod, sdevolu, cusuhis, fusuhis)
           VALUES (shisdomiciliaciones_cab.NEXTVAL, :OLD.sproces, :OLD.ccobban, :OLD.cempres,
                   :OLD.fefecto, :OLD.tfileenv, :OLD.tfiledev, :OLD.cestdom, :OLD.cremban,
                   :OLD.cusumod, :OLD.fusumod, :OLD.sdevolu, f_user, f_sysdate);
   END IF;
END bu_domiciliaciones_cab;







/
ALTER TRIGGER "AXIS"."BU_DOMICILIACIONES_CAB" ENABLE;
