create or replace TRIGGER ai_sin_tramita_movpago
   AFTER INSERT
   ON sin_tramita_movpago
   FOR EACH ROW
       WHEN (NEW.cestpag = 2
        OR NEW.cestpag = 9
        OR NEW.cestpag = 1
        -- INI BUG 6208 02-10-2020 AABG: Validacion para anular los pagos de un siniestro
        OR NEW.cestpag = 8) 
        -- FIN BUG 6208 02-10-2020 AABG: Validacion para anular los pagos de un siniestro
DECLARE
   num_err        NUMBER;
   vcmonpag       sin_tramita_pago.cmonpag%TYPE;
   vnsinies       sin_tramita_pago.nsinies%TYPE;
   vctippag       sin_tramita_pago.ctippag%TYPE;
BEGIN

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
                 0) = 1)
				 
       -- INI BUG 6208 02-10-2020 AABG: Validacion para anular los pagos de un siniestro          
       OR(:NEW.cestpag = 8)) THEN
       -- FIN BUG 6208 02-10-2020 AABG: Validacion para anular los pagos de un siniestro

      SELECT cmonpag, nsinies, ctippag
        INTO vcmonpag, vnsinies, vctippag
        FROM sin_tramita_pago
       WHERE sidepag = :NEW.sidepag;


      -- INI BUG 6208 02-10-2020 AABG: Se envia el parametro estado 
      num_err := pac_siniestros.f_sin_rea(:NEW.sidepag, vcmonpag, vnsinies, vctippag,
                                          :NEW.fefepag, null, :NEW.cestpag);
      -- FIN BUG 6208 02-10-2020 AABG: Se envia el parametro estado                                          


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