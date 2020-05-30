--------------------------------------------------------
--  DDL for Trigger INS_DESTINATARIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."INS_DESTINATARIOS" 
  after insert on destinatrami
  for each row
declare
  repetit_n number;
begin
  repetit_n := pac_sinitrami.f_destinatrami_repetit ( :new.nsinies,:NEW.NTRAMIT, :new.sperson, :new.ctipdes );
  if repetit_n = 0 then
    -- el nou no existeix
    INSERT INTO DESTINATARIOS
      ( NSINIES, SPERSON, CTIPDES, CPAGDES, CACTPRO, CREFPER )
      VALUES ( :NEW.NSINIES, :NEW.SPERSON, :NEW.CTIPDES, :NEW.CPAGDES, :NEW.CACTPRO, :NEW.CREFSIN );
  else
    UPDATE DESTINATARIOS
      SET CPAGDES = pac_sinitrami.f_admet_pagaments ( :NEW.NSINIES,:NEW.NTRAMIT, :NEW.SPERSON, :NEW.CTIPDES,:NEW.cpagdes),
          CACTPRO = pac_sinitrami.f_primera_activitat ( :NEW.NSINIES,:NEW.NTRAMIT, :NEW.SPERSON, :NEW.CTIPDES ),
          CREFPER = pac_sinitrami.f_primera_referencia ( :NEW.NSINIES,:NEW.NTRAMIT, :NEW.SPERSON, :NEW.CTIPDES, :NEW.cpagdes )
      WHERE NSINIES = :NEW.NSINIES AND SPERSON = :NEW.SPERSON AND CTIPDES = :NEW.CTIPDES;
  end if;
end;









/
ALTER TRIGGER "AXIS"."INS_DESTINATARIOS" ENABLE;
