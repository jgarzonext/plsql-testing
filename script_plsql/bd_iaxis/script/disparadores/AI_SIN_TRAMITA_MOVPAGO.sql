--------------------------------------------------------
--  DDL for Trigger AI_SIN_TRAMITA_MOVPAGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AI_SIN_TRAMITA_MOVPAGO" 
   AFTER INSERT
   ON sin_tramita_movpago
   FOR EACH ROW
      WHEN (NEW.cestpag = 2
        OR NEW.cestpag = 9
        OR NEW.cestpag = 1) DECLARE
   num_err        NUMBER;
   vcmonpag       sin_tramita_pago.cmonpag%TYPE;
   vnsinies       sin_tramita_pago.nsinies%TYPE;
   vctippag       sin_tramita_pago.ctippag%TYPE;
BEGIN
  p_traza_proceso(24, 'TRAZA_CESIONES_REA', 777, 'AI_SIN_TRAMITA_MOVPAGO', 'AI_SIN_TRAMITA_MOVPAGO', NULL, 2,
  'PASO 1, :NEW.cestpag:'||:NEW.cestpag);

   IF   --((:NEW.cestpag = 2)
      ((:NEW.cestpag =
           NVL
              (pac_parametros.f_parempresa_n(pac_parametros.f_parinstalacion_n('EMPRESADEF'),
                                             'EDO_PAGO_PROCESA_REA'),
               9))
       OR(:NEW.cestpag = 1
          AND NVL
                (pac_parametros.f_parempresa_n
                                              (pac_parametros.f_parinstalacion_n('EMPRESADEF'),
                                               'CESION_PAGOSIN_ACEPT'),
                 0) = 1)) THEN
       p_traza_proceso(24, 'TRAZA_CESIONES_REA', 777, 'AI_SIN_TRAMITA_MOVPAGO', 'AI_SIN_TRAMITA_MOVPAGO', NULL, 2,
  'PASO 2, :NEW.sidepag:'||:NEW.sidepag);

      SELECT cmonpag, nsinies, ctippag
        INTO vcmonpag, vnsinies, vctippag
        FROM sin_tramita_pago
       WHERE sidepag = :NEW.sidepag;

       p_traza_proceso(24, 'TRAZA_CESIONES_REA', 777, 'AI_SIN_TRAMITA_MOVPAGO', 'AI_SIN_TRAMITA_MOVPAGO', NULL, 2,
  'PASO 3, vcmonpag:'||vcmonpag||' vnsinies:'||vnsinies||' vctippag:'||vctippag);


      num_err := pac_siniestros.f_sin_rea(:NEW.sidepag, vcmonpag, vnsinies, vctippag,
                                          :NEW.fefepag);

       p_traza_proceso(24, 'TRAZA_CESIONES_REA', 777, 'AI_SIN_TRAMITA_MOVPAGO', 'AI_SIN_TRAMITA_MOVPAGO', NULL, 2,
  'PASO 4, num_err:'||num_err||' vnsinies:'||' :NEW.sidepag:'||:NEW.sidepag||
  vnsinies||' vctippag:'||vctippag||' :NEW.fefepag:'||:NEW.fefepag);

      IF num_err <> 0 THEN
         raise_application_error(-20001, 'Error en el reaseguro: ' || num_err);
      END IF;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      raise_application_error(-20001,
                              'Error en el reaseguro: ' || ' SQLCODE: ' || SQLCODE
                              || ' SQLERRM: ' || SQLERRM);
END ai_sin_tramita_movpago;


/
ALTER TRIGGER "AXIS"."AI_SIN_TRAMITA_MOVPAGO" ENABLE;
