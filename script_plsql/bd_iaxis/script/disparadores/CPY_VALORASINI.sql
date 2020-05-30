--------------------------------------------------------
--  DDL for Trigger CPY_VALORASINI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."CPY_VALORASINI" 
   AFTER UPDATE OR DELETE
   ON valorasini
   FOR EACH ROW
DECLARE
   vcmodo         VARCHAR2(1);
   vnsinies       valorasini.nsinies%TYPE;
   vcgarant       valorasini.cgarant%TYPE;
   vfvalora       valorasini.fvalora%TYPE;
   vivalora       valorasini.ivalora%TYPE;
   vfperini       valorasini.fperini%TYPE;
   vfperfin       valorasini.fperfin%TYPE;
   vicaprisc      valorasini.icaprisc%TYPE;
   vipenali       valorasini.ipenali%TYPE;
   vfultpag       valorasini.fultpag%TYPE;
   vcusualt       valorasini.cusualt%TYPE;
   vfalta         valorasini.falta%TYPE;
   vcusumod       valorasini.cusumod%TYPE;
   vfmodifi       valorasini.fmodifi%TYPE;
   vsproduc       seguros.sproduc%TYPE;
   vcactivi       seguros.cactivi%TYPE;
BEGIN
   BEGIN
      SELECT seg.sproduc, seg.cactivi
        INTO vsproduc, vcactivi
        FROM seguros seg, siniestros sini
       WHERE sini.nsinies = :OLD.nsinies
         AND seg.sseguro = sini.sseguro;
   EXCEPTION
      WHEN OTHERS THEN
         vsproduc := NULL;
         vcactivi := NULL;
   END;

   IF pac_parametros.f_pargaranpro_n(vsproduc, vcactivi, :OLD.cgarant, 'BAJA') = 1 THEN
      IF UPDATING THEN
         vcmodo := 'U';
      ELSIF DELETING THEN
         vcmodo := 'D';
      END IF;

      vnsinies := :OLD.nsinies;
      vcgarant := :OLD.cgarant;
      vfvalora := :OLD.fvalora;
      vivalora := :OLD.ivalora;
      vfperini := :OLD.fperini;
      vfperfin := :OLD.fperfin;
      vicaprisc := :OLD.icaprisc;
      vipenali := :OLD.ipenali;
      vfultpag := :OLD.fultpag;
      vcusualt := :OLD.cusualt;
      vfalta := :OLD.falta;
      vcusumod := :OLD.cusumod;
      vfmodifi := :OLD.fmodifi;

      INSERT INTO hisvalorasini
                  (nsinies, cgarant, fvalora, ivalora, fperini, fperfin, icaprisc,
                   ipenali, fultpag, cusualt, falta, cusumod, fmodifi, cmodo, fregist)
           VALUES (vnsinies, vcgarant, vfvalora, vivalora, vfperini, vfperfin, vicaprisc,
                   vipenali, vfultpag, vcusualt, vfalta, vcusumod, vfmodifi, vcmodo, f_sysdate);
   END IF;
END cpy_valorasini;









/
ALTER TRIGGER "AXIS"."CPY_VALORASINI" DISABLE;
