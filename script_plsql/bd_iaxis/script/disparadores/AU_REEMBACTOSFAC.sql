--------------------------------------------------------
--  DDL for Trigger AU_REEMBACTOSFAC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AU_REEMBACTOSFAC" 
   AFTER UPDATE OF ftrans, ftranscomp
   ON reembactosfac
   FOR EACH ROW
             WHEN (NEW.ftrans IS NOT NULL
        OR NEW.ftranscomp IS NOT NULL) DECLARE
/*
0007502: CRE - Reembolsos y reaseguro
Descripción
Se ha de poder generar cesiones a reaseguro en los pagos de reembolsos. el sistema tendría
que ser similar al utilizado en siniestros. En este caso creo que un trigger en pagosini
activa el apunte en cesionesrea cuando se actualiza el estado del pago. Algo similar hay
que realizar para reembolsos. Lo ideal sería utilizar toda la estructura que ya existe
para pagos de siniestros.

Cuando se infome el campo REEMBACTOSFAC.FTRANS disparar un trigger basado en el mismo que
tiene actualmente la tabla PAGOSINI que genere los apuntes de Reaseguro.
Crear un sistema que permita controlar que no se graben 2 veces un mismo reembolso, el de
PAGOSINI graba el número de pago en CESIONESREA, estudiar la posibilidad que sea la clave
de CESIONESREA.scesrea la que se grabe en REEMBACTOSFAC pues llevarnos la clave de esta a
CESIONESREA será más difícil porque tiene 3 campos (NREEMB, NFACT, NLINEA).
*/
   num_err        NUMBER;
   seguro         NUMBER;
   cerror         NUMBER;
   cerror_proc    NUMBER;
   cerror_xl      NUMBER;
   cerror_inst    NUMBER;
   codi_error     NUMBER := 0;
   empresa        NUMBER;
   nproc          NUMBER;
   existe         NUMBER;
   moneda         NUMBER := 1;   --euros
   wsseguro       NUMBER;
   wnriesgo       NUMBER;
   wcgarant       NUMBER;
   vpago          NUMBER;
   wvigente       NUMBER;
BEGIN
   -- BUG10775:DRA:25-08-2009:Se elimina el control para no duplicar retrocesiones, ahora si podran haber duplicados
   BEGIN
      SELECT r.sseguro, r.nriesgo, r.cgarant
        INTO wsseguro, wnriesgo, wcgarant
        FROM reembolsos r
       WHERE r.nreemb = :NEW.nreemb;

      -- Bug 10775 - APD - 30/07/2009 - si :NEW.ftrans IS NOT NULL vpago = :NEW.ipago
      -- si :NEW.ftranscomp IS NOT NULL vpago = :NEW.ipagocomp
      -- BUG10775:DRA:01/09/2009: Inici: Se separa el UPDATE de FTRANS i FTRANSCOMP, i se analiza si la fecha cambia
      IF :NEW.ftrans IS NOT NULL
         AND :OLD.ftrans IS NULL THEN
         vpago := :NEW.ipago;
         --    num_err := F_Sinrea(:NEW.sidepag, moneda, :NEW.nsinies, :NEW.ctippag, :NEW.fordpag, :NEW.cpagcoa);
         -- Bug 10775 - APD - 30/07/2009 - se sustituye :NEW.ipago por vpago
         -- Bug 14050 - AVT - 09/04/2010 - es canvia la FACTO per la FTRANS

         -- Bug 15000 - 14/06/2010 - AMC
         wvigente := f_vigente(wsseguro, NULL, :NEW.ftrans);

         IF wvigente = 0 THEN
            num_err := f_reembrea(wsseguro, wnriesgo, wcgarant, :NEW.nreemb, :NEW.nfact,
                                  :NEW.nlinea, :NEW.ftrans, vpago);
         ELSE
            num_err := f_reembrea(wsseguro, wnriesgo, wcgarant, :NEW.nreemb, :NEW.nfact,
                                  :NEW.nlinea, :NEW.facto, vpago);
         END IF;

         -- Fi Bug 15000 - 14/06/2010 - AMC
         IF num_err <> 0 THEN
            p_tab_error(f_sysdate, f_user, 'AU_REEMBACTOSFAC', 1, 'ERROR',
                        'ERROR Nº:' || num_err || ' - Nº Reembolso:' || :NEW.nreemb
                        || ' - en reembolso directo');
         END IF;
      END IF;

      IF :NEW.ftranscomp IS NOT NULL
         AND :OLD.ftranscomp IS NULL THEN
         vpago := :NEW.ipagocomp;
         -- Bug 10775 - APD - 30/07/2009 - se sustituye :NEW.ipago por vpago
         -- Bug 14050 - AVT - 09/04/2010 - es canvia la FACTO per la FTRANS

         -- Bug 15000 - 14/06/2010 - AMC
         wvigente := f_vigente(wsseguro, NULL, :NEW.ftranscomp);

         IF wvigente = 0 THEN
            num_err := f_reembrea(wsseguro, wnriesgo, wcgarant, :NEW.nreemb, :NEW.nfact,
                                  :NEW.nlinea, :NEW.ftranscomp, vpago);
         ELSE
            num_err := f_reembrea(wsseguro, wnriesgo, wcgarant, :NEW.nreemb, :NEW.nfact,
                                  :NEW.nlinea, :NEW.facto, vpago);
         END IF;

         -- Fi Bug 15000 - 14/06/2010 - AMC
         IF num_err <> 0 THEN
            p_tab_error(f_sysdate, f_user, 'AU_REEMBACTOSFAC', 3, 'ERROR',
                        'ERROR Nº:' || num_err || ' - Nº Reembolso:' || :NEW.nreemb
                        || ' - en reembolso de compensación');
         END IF;
      END IF;
   END;
END;









/
ALTER TRIGGER "AXIS"."AU_REEMBACTOSFAC" ENABLE;
