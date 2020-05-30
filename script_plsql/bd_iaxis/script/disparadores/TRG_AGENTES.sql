--------------------------------------------------------
--  DDL for Trigger TRG_AGENTES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AGENTES" 
   BEFORE UPDATE OR DELETE
   ON agentes
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF (:NEW.cagente || ' ' || :NEW.cretenc || ' ' || :NEW.ctipiva || ' ' || :NEW.sperson
          || ' ' || :NEW.ccomisi || ' ' || :NEW.ctipage || ' ' || :NEW.cactivo || ' '
          || :NEW.cdomici || ' ' || :NEW.cbancar || ' ' || :NEW.ncolegi || ' ' || :NEW.fbajage
          || ' ' || :NEW.csoprec || ' ' || :NEW.cmediop || ' ' || :NEW.ccuacoa || ' '
          || :NEW.tobserv || ' ' || :NEW.nmescob || ' ' || :NEW.cretliq || ' ' || :NEW.cpseudo
          || ' ' || :NEW.ccodcon || ' ' || :NEW.ctipban || ' ' || :NEW.csobrecomisi || ' '
          || :NEW.talias || ' ' || :NEW.cliquido || ' ' || :NEW.ccomisi_indirect || ' '
          || :NEW.ctipmed || ' ' || :NEW.tnomcom || ' ' || :NEW.cdomcom || ' '
          || :NEW.ctipretrib || ' ' || :NEW.cmotbaja || ' ' || :NEW.cbloqueo || ' '
          || :NEW.nregdgs || ' ' || :NEW.finsdgs || ' ' || :NEW.crebcontdgs || ' '
          || :NEW.cusualt || ' ' || :NEW.falta || ' ' || :NEW.cusumod || ' ' || :NEW.fusumod) <>
            (:OLD.cagente || ' ' || :OLD.cretenc || ' ' || :OLD.ctipiva || ' ' || :OLD.sperson
             || ' ' || :OLD.ccomisi || ' ' || :OLD.ctipage || ' ' || :OLD.cactivo || ' '
             || :OLD.cdomici || ' ' || :OLD.cbancar || ' ' || :OLD.ncolegi || ' '
             || :OLD.fbajage || ' ' || :OLD.csoprec || ' ' || :OLD.cmediop || ' '
             || :OLD.ccuacoa || ' ' || :OLD.tobserv || ' ' || :OLD.nmescob || ' '
             || :OLD.cretliq || ' ' || :OLD.cpseudo || ' ' || :OLD.ccodcon || ' '
             || :OLD.ctipban || ' ' || :OLD.csobrecomisi || ' ' || :OLD.talias || ' '
             || :OLD.cliquido || ' ' || :OLD.ccomisi_indirect || ' ' || :OLD.ctipmed || ' '
             || :OLD.tnomcom || ' ' || :OLD.cdomcom || ' ' || :OLD.ctipretrib || ' '
             || :OLD.cmotbaja || ' ' || :OLD.cbloqueo || ' ' || :OLD.nregdgs || ' '
             || :OLD.finsdgs || ' ' || :OLD.crebcontdgs || ' ' || :OLD.cusualt || ' '
             || :OLD.falta || ' ' || :OLD.cusumod || ' ' || :OLD.fusumod) THEN
         -- crear registro histórico
         INSERT INTO his_agentes
                     (cagente, cretenc, ctipiva, sperson, ccomisi,
                      ctipage, cactivo, cdomici, cbancar, ncolegi,
                      fbajage, csoprec, cmediop, ccuacoa, tobserv,
                      nmescob, cretliq, cpseudo, ccodcon, ctipban,
                      csobrecomisi, talias, cliquido, ccomisi_indirect,
                      ctipmed, tnomcom, cdomcom, ctipretrib,
                      cmotbaja, cbloqueo, nregdgs, finsdgs,
                      crebcontdgs, cusualt, falta, cusumod, fusumod)
              VALUES (:OLD.cagente, :OLD.cretenc, :OLD.ctipiva, :OLD.sperson, :OLD.ccomisi,
                      :OLD.ctipage, :OLD.cactivo, :OLD.cdomici, :OLD.cbancar, :OLD.ncolegi,
                      :OLD.fbajage, :OLD.csoprec, :OLD.cmediop, :OLD.ccuacoa, :OLD.tobserv,
                      :OLD.nmescob, :OLD.cretliq, :OLD.cpseudo, :OLD.ccodcon, :OLD.ctipban,
                      :OLD.csobrecomisi, :OLD.talias, :OLD.cliquido, :OLD.ccomisi_indirect,
                      :OLD.ctipmed, :OLD.tnomcom, :OLD.cdomcom, :OLD.ctipretrib,
                      :OLD.cmotbaja, :OLD.cbloqueo, :OLD.nregdgs, :OLD.finsdgs,
                      :OLD.crebcontdgs, :OLD.cusualt, :OLD.falta, :OLD.cusumod, :OLD.fusumod);
      END IF;
   ELSIF DELETING THEN
      -- crear registro histórico
      INSERT INTO his_agentes
                  (cagente, cretenc, ctipiva, sperson, ccomisi,
                   ctipage, cactivo, cdomici, cbancar, ncolegi,
                   fbajage, csoprec, cmediop, ccuacoa, tobserv,
                   nmescob, cretliq, cpseudo, ccodcon, ctipban,
                   csobrecomisi, talias, cliquido, ccomisi_indirect,
                   ctipmed, tnomcom, cdomcom, ctipretrib, cmotbaja,
                   cbloqueo, nregdgs, finsdgs, crebcontdgs, cusualt,
                   falta, cusumod, fusumod)
           VALUES (:OLD.cagente, :OLD.cretenc, :OLD.ctipiva, :OLD.sperson, :OLD.ccomisi,
                   :OLD.ctipage, :OLD.cactivo, :OLD.cdomici, :OLD.cbancar, :OLD.ncolegi,
                   :OLD.fbajage, :OLD.csoprec, :OLD.cmediop, :OLD.ccuacoa, :OLD.tobserv,
                   :OLD.nmescob, :OLD.cretliq, :OLD.cpseudo, :OLD.ccodcon, :OLD.ctipban,
                   :OLD.csobrecomisi, :OLD.talias, :OLD.cliquido, :OLD.ccomisi_indirect,
                   :OLD.ctipmed, :OLD.tnomcom, :OLD.cdomcom, :OLD.ctipretrib, :OLD.cmotbaja,
                   :OLD.cbloqueo, :OLD.nregdgs, :OLD.finsdgs, :OLD.crebcontdgs, :OLD.cusualt,
                   :OLD.falta, :OLD.cusumod, :OLD.fusumod);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END trg_agentes_comp;







/
ALTER TRIGGER "AXIS"."TRG_AGENTES" ENABLE;
