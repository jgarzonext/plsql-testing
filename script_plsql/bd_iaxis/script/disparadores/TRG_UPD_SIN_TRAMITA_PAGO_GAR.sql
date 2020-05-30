--------------------------------------------------------
--  DDL for Trigger TRG_UPD_SIN_TRAMITA_PAGO_GAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_UPD_SIN_TRAMITA_PAGO_GAR" 
--BUG31294/0174788-15/05/2014-NSS-Trigger que volcar¿ en hissin_tramita_hispago_gar contenido hist¿rico de sin_tramita_pago_gar
AFTER UPDATE OR DELETE
   ON sin_tramita_pago_gar
   FOR EACH ROW
DECLARE
   vsidepag       NUMBER;
   vctipres       NUMBER;
   vnmovres       NUMBER;
   vnorden        NUMBER;
BEGIN
   IF NVL(:NEW.fperfin, TO_DATE('31/12/9999', 'DD/MM/YYYY')) <>
                                        NVL(:OLD.fperfin, TO_DATE('31/12/9999', 'DD/MM/YYYY'))
      OR NVL(:NEW.fperini, TO_DATE('31/12/9999', 'DD/MM/YYYY')) <>
                                         NVL(:OLD.fperini, TO_DATE('31/12/9999', 'DD/MM/YYYY'))
      OR NVL(:NEW.ifranq, 0) <> NVL(:OLD.ifranq, 0)
      OR NVL(:NEW.iica, 0) <> NVL(:OLD.iica, 0)
      OR NVL(:NEW.iiva, 0) <> NVL(:OLD.iiva, 0)
      OR NVL(:NEW.iresrcm, 0) <> NVL(:OLD.iresrcm, 0)
      OR NVL(:NEW.iresred, 0) <> NVL(:OLD.iresred, 0)
      OR NVL(:NEW.ireteica, 0) <> NVL(:OLD.ireteica, 0)
      OR NVL(:NEW.ireteiva, 0) <> NVL(:OLD.ireteiva, 0)
      OR NVL(:NEW.iretenc, 0) <> NVL(:OLD.iretenc, 0)
      OR NVL(:NEW.isinret, 0) <> NVL(:OLD.isinret, 0)
      OR NVL(:NEW.isuplid, 0) <> NVL(:OLD.isuplid, 0)
      OR NVL(:NEW.pica, 0) <> NVL(:OLD.pica, 0)
      OR NVL(:NEW.piva, 0) <> NVL(:OLD.piva, 0)
      OR NVL(:NEW.preteica, 0) <> NVL(:OLD.preteica, 0)
      OR NVL(:NEW.preteiva, 0) <> NVL(:OLD.preteiva, 0)
      OR NVL(:NEW.pretenc, 0) <> NVL(:OLD.pretenc, 0)
      OR NVL(:NEW.IOTROSGAS, 0) <> NVL(:OLD.IOTROSGAS, 0)
      OR NVL(:NEW.IOTROSGASPAG , 0) <> NVL(:OLD.IOTROSGASPAG, 0)
      OR NVL(:NEW.IBASEIPOC, 0) <> NVL(:OLD.IBASEIPOC, 0)
      OR NVL(:NEW.IBASEIPOCPAG, 0) <> NVL(:OLD.IBASEIPOCPAG, 0)
      OR NVL(:NEW.PIPOCONSUMO, 0) <> NVL(:OLD.PIPOCONSUMO, 0)
      OR NVL(:NEW.IIPOCONSUMO, 0) <> NVL(:OLD.IIPOCONSUMO, 0)
      OR NVL(:NEW.IIPOCONSUMOPAG, 0) <> NVL(:OLD.IIPOCONSUMOPAG, 0)
      OR NVL(:NEW.ISINRETPAG, 0) <> NVL(:OLD.ISINRETPAG, 0)
      OR NVL(:NEW.IIVAPAG, 0) <> NVL(:OLD.IIVAPAG, 0)
      OR NVL(:NEW.ISUPLIDPAG, 0) <> NVL(:OLD.ISUPLIDPAG, 0)
      OR NVL(:NEW.IRETENCPAG,0) <> NVL(:OLD.IRETENCPAG, 0)
      OR NVL(:NEW.IFRANQPAG, 0) <> NVL(:OLD.IFRANQPAG,  0)
      OR NVL(:NEW.IRESRCMPAG, 0) <> NVL(:OLD.IRESRCMPAG, 0)
      OR NVL(:NEW.IRESREDPAG, 0) <> NVL(:OLD.IRESREDPAG, 0)
      OR NVL(:NEW.IRETEIVAPAG, 0) <> NVL(:OLD.IRETEIVAPAG, 0)
      OR NVL(:NEW.IRETEICAPAG, 0) <> NVL(:OLD.IRETEICAPAG, 0)
      OR NVL(:NEW.IICAPAG, 0) <> NVL(:OLD.IICAPAG,  0)
      THEN
      INSERT INTO sin_tramita_hispago_gar
                  (sidepag, ctipres, nmovres, cgarant, fperini,
                   fperfin, cmonres, isinret, iretenc, iiva,
                   isuplid, ifranq, iresrcm, iresred, cmonpag,
                   isinretpag, iivapag, isuplidpag, iretencpag,
                   ifranqpag, iresrcmpag, iresredpag, fcambio,
                   pretenc, piva, cusumod, fmodifi, cconpag,
                   norden, preteiva, preteica, ireteiva, ireteica,
                   ireteivapag, ireteicapag, pica, iica, iicapag,
                   caplfra)
           VALUES (:OLD.sidepag, :OLD.ctipres, :OLD.nmovres, :OLD.cgarant, :OLD.fperini,
                   :OLD.fperfin, :OLD.cmonres, :OLD.isinret, :OLD.iretenc, :OLD.iiva,
                   :OLD.isuplid, :OLD.ifranq, :OLD.iresrcm, :OLD.iresred, :OLD.cmonpag,
                   :OLD.isinretpag, :OLD.iivapag, :OLD.isuplidpag, :OLD.iretencpag,
                   :OLD.ifranqpag, :OLD.iresrcmpag, :OLD.iresredpag, :OLD.fcambio,
                   :OLD.pretenc, :OLD.piva, :OLD.cusumod, :OLD.fmodifi, :OLD.cconpag,
                   :OLD.norden, :OLD.preteiva, :OLD.preteica, :OLD.ireteiva, :OLD.ireteica,
                   :OLD.ireteivapag, :OLD.ireteicapag, :OLD.pica, :OLD.iica, :OLD.iicapag,
                   :OLD.caplfra);
   END IF;
END;


/
ALTER TRIGGER "AXIS"."TRG_UPD_SIN_TRAMITA_PAGO_GAR" ENABLE;
