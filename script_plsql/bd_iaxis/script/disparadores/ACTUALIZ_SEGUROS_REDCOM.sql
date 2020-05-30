--------------------------------------------------------
--  DDL for Trigger ACTUALIZ_SEGUROS_REDCOM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."ACTUALIZ_SEGUROS_REDCOM" 
   AFTER INSERT OR UPDATE OF sseguro, cagente, cramo
   ON seguros
   FOR EACH ROW
DECLARE
   seguru         NUMBER;   -- Bug 28462 - 07/10/2013 - HRE - Cambio de dimension SSEGURO
   AGENT          NUMBER;
   l_c            NUMBER;
   l_err          NUMBER;
   l_error        NUMBER;
   empres         NUMBER(2);
   ramo           NUMBER;
BEGIN
   seguru := :NEW.sseguro;
   AGENT := :NEW.cagente;
   ramo := :NEW.cramo;

   SELECT cempres
     INTO empres
     FROM codiram
    WHERE cramo = ramo;

   SELECT COUNT(*)
     INTO l_c
     FROM segurosredcom
    WHERE sseguro = :NEW.sseguro;

   IF l_c = 0 THEN
      l_error := f_insseguror(seguru, empres, :NEW.cagente, f_sysdate);

      IF l_error <> 0 THEN
         -- Bug 21223 - APD - 14/02/2012 - se comenta elimina los dbms_outputs
         -- ya que  sale un error de buffer overflow al lanzar un script
         -- De hecho se puede comentar pues realmente aunque esta este
         -- trigger en la tabla seguros, la tabla segurosredcom no se
         -- utiliza, lo correcto es utilizar seguredcom
         p_tab_error(f_sysdate, f_user, 'TRIGGER actualiz_seguros_redcom', 1, l_error,
                     TO_CHAR(seguru));
      -- fin Bug 21223 - APD - 14/02/2012
      END IF;
   ELSE
      DELETE      segurosredcom
            WHERE sseguro = seguru;

      l_error := f_insseguror(seguru, empres, :NEW.cagente, f_sysdate);

      IF l_error <> 0 THEN
         -- Bug 21223 - APD - 14/02/2012 - se comenta elimina los dbms_outputs
         -- ya que  sale un error de buffer overflow al lanzar un script
         -- De hecho se puede comentar pues realmente aunque esta este
         -- trigger en la tabla seguros, la tabla segurosredcom no se
         -- utiliza, lo correcto es utilizar seguredcom
         p_tab_error(f_sysdate, f_user, 'TRIGGER actualiz_seguros_redcom', 1, l_error,
                     TO_CHAR(:NEW.sseguro));
      -- fin Bug 21223 - APD - 14/02/2012
      END IF;
   END IF;
EXCEPTION
   WHEN VALUE_ERROR THEN
      -- Bug 21223 - APD - 14/02/2012 - se comenta elimina los dbms_outputs
      p_tab_error(f_sysdate, f_user, 'TRIGGER actualiz_seguros_redcom', 1, SQLCODE, SQLERRM);
      RAISE;
   WHEN OTHERS THEN
      -- Bug 21223 - APD - 14/02/2012 - se comenta elimina los dbms_outputs
      p_tab_error(f_sysdate, f_user, 'TRIGGER actualiz_seguros_redcom', 1, SQLCODE, SQLERRM);
      RAISE;
END;





/
ALTER TRIGGER "AXIS"."ACTUALIZ_SEGUROS_REDCOM" ENABLE;
