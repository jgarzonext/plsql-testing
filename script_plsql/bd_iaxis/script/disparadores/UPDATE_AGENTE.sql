--------------------------------------------------------
--  DDL for Trigger UPDATE_AGENTE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."UPDATE_AGENTE" 
   AFTER INSERT
   ON per_regimenfiscal
   FOR EACH ROW
DECLARE
   vnumerr        NUMBER;
   vctipiva       NUMBER;
   vcretenc       NUMBER;
BEGIN
-- Bug 20916/103702 - 13/01/2012 - AMC
   FOR cur IN (SELECT cagente
                 FROM agentes
                WHERE sperson = :NEW.sperson) LOOP
      -- vnumerr := pac_redcomercial.f_get_ivaagente(:NEW.sperson, :NEW.cagente, vctipiva,
      --                                             vcretenc);
      BEGIN
         SELECT ctipiva, cretenc
           INTO vctipiva, vcretenc
           FROM regfiscal_ivaretenc
          WHERE cregfiscal = :NEW.cregfiscal;
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            vctipiva := 0;
            vcretenc := 0;
      END;

      UPDATE agentes
         SET ctipiva = vctipiva,
             cretenc = vcretenc
       WHERE cagente = cur.cagente;
   END LOOP;
-- Fi Bug 20916/103702 - 13/01/2012 - AMC
END update_agente;







/
ALTER TRIGGER "AXIS"."UPDATE_AGENTE" ENABLE;
