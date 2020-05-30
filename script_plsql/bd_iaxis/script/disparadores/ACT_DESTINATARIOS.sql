--------------------------------------------------------
--  DDL for Trigger ACT_DESTINATARIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."ACT_DESTINATARIOS" 
  after update on destinatrami
  for each row
declare
  repetitv  number;
  repetit_n number;
begin
  -- (:new.ntramit <> :old.ntramit) crec que és un canvi transparent, per tant, no caldria
  if (:new.nsinies <> :old.nsinies) or (:new.ntramit<>:old.ntramit) or
     (:new.sperson<>:old.sperson) or (:new.ctipdes<>:old.ctipdes) then
    -- S'ha modificat la clau, evidentment no per programa.
    -- Vol dir que no hi ha pagaments sinó hagués saltat la foreign
    repetitv := pac_sinitrami.f_destinatrami_repetit(:old.nsinies,:old.ntramit, :old.sperson, :old.ctipdes);
    if repetitv = 0 then
      -- El vell no existia més que per aquesta tramitació
      DELETE DESTINATARIOS WHERE NSINIES = :OLD.NSINIES AND SPERSON = :OLD.SPERSON AND
        CTIPDES = :OLD.CTIPDES;
    else
      UPDATE DESTINATARIOS
        SET CPAGDES = pac_sinitrami.f_admet_pagaments ( :OLD.NSINIES,:OLD.NTRAMIT, :OLD.SPERSON, :OLD.CTIPDES, :OLD.CPAGDES ),
            CACTPRO = pac_sinitrami.f_primera_activitat ( :OLD.NSINIES,:OLD.NTRAMIT, :OLD.SPERSON, :OLD.CTIPDES ),
            CREFPER = pac_sinitrami.f_primera_referencia ( :OLD.NSINIES,:OLD.NTRAMIT, :OLD.SPERSON, :OLD.CTIPDES,:OLD.CREFSIN )
        WHERE NSINIES = :OLD.NSINIES AND SPERSON = :OLD.SPERSON AND CTIPDES = :OLD.CTIPDES;

    end if;
    repetit_n := pac_sinitrami.f_destinatrami_repetit ( :new.nsinies,:new.ntramit, :new.sperson, :new.ctipdes );
    if repetit_n = 0 then
      -- el nou no existeix
      INSERT INTO DESTINATARIOS
        ( NSINIES, SPERSON, CTIPDES, CPAGDES, CACTPRO, CREFPER )
        VALUES ( :NEW.NSINIES, :NEW.SPERSON, :NEW.CTIPDES, :NEW.CPAGDES, :NEW.CACTPRO, :NEW.CREFSIN );
    else
      UPDATE DESTINATARIOS
        SET CPAGDES = pac_sinitrami.f_admet_pagaments ( :NEW.NSINIES,:NEW.NTRAMIT, :NEW.SPERSON, :NEW.CTIPDES,:NEW.CPAGDES ),
            CACTPRO = pac_sinitrami.f_primera_activitat ( :NEW.NSINIES,:NEW.NTRAMIT, :NEW.SPERSON, :NEW.CTIPDES ),
            CREFPER = pac_sinitrami.f_primera_referencia ( :NEW.NSINIES,:NEW.NTRAMIT, :NEW.SPERSON, :NEW.CTIPDES,:NEW.CREFSIN )
        WHERE NSINIES = :NEW.NSINIES AND SPERSON = :NEW.SPERSON AND CTIPDES = :NEW.CTIPDES;
    end if;
    -- S'acaba l'actuació a DESTINATARIOS degut a una actualització de la clau a DESTINATRAMI
  else
    -- no s'ha modificat la clau
    if ( :new.cpagdes <> :old.cpagdes ) or ( :new.cactpro <> :old.cactpro ) or
       ( :new.crefsin <> :old.crefsin ) or ( :new.fmodifi <> :old.fmodifi ) then
       UPDATE DESTINATARIOS
         SET CPAGDES = pac_sinitrami.f_admet_pagaments ( :NEW.NSINIES,:NEW.NTRAMIT, :NEW.SPERSON, :NEW.CTIPDES,:NEW.CPAGDES ),
                       -- Pot ser que toquem la data de modificació ...
	     CACTPRO = pac_sinitrami.f_primera_activitat ( :NEW.NSINIES,:NEW.NTRAMIT, :NEW.SPERSON, :NEW.CTIPDES ),
             CREFPER = pac_sinitrami.f_primera_referencia ( :NEW.NSINIES,:NEW.NTRAMIT, :NEW.SPERSON, :NEW.CTIPDES, :NEW.CREFSIN )
         WHERE NSINIES = :NEW.NSINIES AND SPERSON = :NEW.SPERSON AND CTIPDES = :NEW.CTIPDES;
    end if;
  end if;
end;









/
ALTER TRIGGER "AXIS"."ACT_DESTINATARIOS" ENABLE;
