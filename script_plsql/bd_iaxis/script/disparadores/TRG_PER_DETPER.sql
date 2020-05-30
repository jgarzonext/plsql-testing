--------------------------------------------------------
--  DDL for Trigger TRG_PER_DETPER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_DETPER" 
   BEFORE UPDATE OR DELETE
   ON per_detper
   FOR EACH ROW
DECLARE
   vnorden        hisper_detper.norden%TYPE;
BEGIN
   IF UPDATING THEN
      IF :new.cagente || ' ' || :new.cidioma || ' ' || :new.tapelli1 || ' ' || :new.tapelli2
         || ' ' || :new.tnombre || ' ' || :new.tsiglas || ' ' || :new.cprofes || ' ' || :new.tbuscar || ' ' || :new.cestciv || ' ' || :new.cpais || ' ' || :new.cocupacion <>
            :old.cagente || ' ' || :old.cidioma || ' ' || :old.tapelli1 || ' ' || :old.tapelli2 || ' ' || :old.tnombre || ' ' || :old.tsiglas || ' ' || :old.cprofes ||
            ' ' || :old.tbuscar || ' ' || :old.cestciv || ' ' || :old.cpais || ' ' || :old.cocupacion THEN
         vnorden := pac_persona.f_shisdet(:old.sperson, :old.cagente);

         INSERT INTO   hisper_detper(
                                     sperson, cagente, norden, cidioma, tapelli1, tapelli2,
                                     tnombre, tsiglas, cprofes, tbuscar, cestciv, cpais,
                                     cusuari, fmovimi, cusumod, fusumod, tnombre1, tnombre2,
                                     cocupacion
                       )
              VALUES   (
                 :old.sperson, :old.cagente, vnorden, :old.cidioma, :old.tapelli1, :old.tapelli2,
                 :old.tnombre, :old.tsiglas, :old.cprofes, :old.tbuscar, :old.cestciv, :old.cpais,
                 :old.cusuari, :old.fmovimi, f_user, f_sysdate, :old.tnombre1, :old.tnombre2,
                 :old.cocupacion
              );

         :new.cusuari := f_user;
         :new.fmovimi := f_sysdate;
      END IF;
   ELSIF DELETING THEN
      vnorden := pac_persona.f_shisdet(:old.sperson, :old.cagente);

      INSERT INTO   hisper_detper(
                                  sperson, cagente, norden, cidioma, tapelli1, tapelli2,
                                  tnombre, tsiglas, cprofes, tbuscar, cestciv, cpais, cusuari,
                                  fmovimi, cusumod, fusumod, tnombre1, tnombre2, cocupacion
                    )
           VALUES   (
              :old.sperson, :old.cagente, vnorden, :old.cidioma, :old.tapelli1, :old.tapelli2,
              :old.tnombre, :old.tsiglas, :old.cprofes, :old.tbuscar, :old.cestciv, :old.cpais,
              :old.cusuari, :old.fmovimi, f_user, f_sysdate, :old.tnombre1, :old.tnombre2,
              :old.cocupacion
           );
   END IF;
END;





/
ALTER TRIGGER "AXIS"."TRG_PER_DETPER" ENABLE;
