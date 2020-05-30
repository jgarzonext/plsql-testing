--------------------------------------------------------
--  DDL for Trigger AIU_RECIBOS_SEPA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AIU_RECIBOS_SEPA" 
   AFTER INSERT OR UPDATE
   ON recibos
   FOR EACH ROW
       WHEN ((NEW.cbancar IS NOT NULL
         AND NEW.ctipban IS NOT NULL
         AND NEW.ccobban IS NOT NULL)
        AND(NEW.cbancar != NVL(OLD.cbancar, 'X')
            OR NEW.ctipban != NVL(OLD.ctipban, -1)
            OR NEW.ccobban != NVL(OLD.ccobban, -1))) DECLARE
   vcempres       empresas.cempres%TYPE := pac_md_common.f_get_cxtempresa;
   vcestado       mandatos.cestado%TYPE;
   verror         NUMBER;
   vtraza         NUMBER;
BEGIN
   vtraza := 10;
   -- 22/04/2016 EDDA Bug 41822 Inicio, No siempre encuentra la empresa por lo que no almacenaba los mandatos
   IF vcempres IS NULL THEN
      vtraza := 15;
      SELECT cempres
       INTO vcempres
       FROM seguros
      WHERE sseguro = :NEW.sseguro;
   END IF;
   -- Bug 41822 Fin
   vcestado := NVL(pac_parametros.f_parempresa_n(vcempres, 'MANDATO_DEFECTO'), 0);
   vtraza := 20;

   IF vcestado != 0 THEN
      vtraza := 30;

      IF NVL(pac_parametros.f_parempresa_n(vcempres, 'DOMIS_IBAN_XML'), 0) = 1 THEN
         vtraza := 40;

         IF pac_sepa.f_mandato_activo(:NEW.sseguro, :NEW.nrecibo, :NEW.ccobban, :NEW.cbancar,
                                      :NEW.ctipban, :NEW.sperson) = -1 THEN   --> Necesita crear mandato -- pac_sepa.
            vtraza := 50;
            verror := pac_sepa.f_set_mandatos(:NEW.sseguro, :NEW.nrecibo, vcestado,
                                              :NEW.sperson, :NEW.cbancar, :NEW.ctipban,
                                              :NEW.ccobban);

            IF verror != 0 THEN
               p_tab_error(f_sysdate, f_user, 'TRIGGER aiu_recibos_sepa', vtraza,
                           'RECIBO:' || :NEW.nrecibo,
                           'Error ' || verror
                           || ' devuelto intentando crear el mandato con f_set_mandatos('
                           || :NEW.sseguro || ',' || :NEW.nrecibo || ',' || vcestado || ','
                           || :NEW.sperson || ',' || :NEW.cbancar || ',' || :NEW.ctipban
                           || ',' || :NEW.ccobban || ');');
            END IF;
         END IF;
      END IF;
   END IF;

   vtraza := 60;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER aiu_recibos_sepa', vtraza,
                  'RECIBO:' || :NEW.nrecibo, SQLERRM);
END aiu_recibos_sepa;



/
ALTER TRIGGER "AXIS"."AIU_RECIBOS_SEPA" ENABLE;
