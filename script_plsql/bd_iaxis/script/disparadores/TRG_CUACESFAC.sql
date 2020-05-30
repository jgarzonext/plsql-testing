--------------------------------------------------------
--  DDL for Trigger TRG_CUACESFAC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CUACESFAC" 
   AFTER UPDATE ON cuacesfac
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SFACULT = ' || :old.sfacult || ' ,CCOMPANI = ' ||
                            :old.ccompani;
BEGIN
   --
   p_his_procesosrea('CUACESFAC', vindica, 'CCOMREA', :old.ccomrea, :new.ccomrea);
   p_his_procesosrea('CUACESFAC', vindica, 'PCESION', :old.pcesion, :new.pcesion);
   p_his_procesosrea('CUACESFAC', vindica, 'ICESFIJ', :old.icesfij, :new.icesfij);
   p_his_procesosrea('CUACESFAC', vindica, 'ICOMFIJ', :old.icomfij, :new.icomfij);
   p_his_procesosrea('CUACESFAC', vindica, 'ISCONTA', :old.isconta, :new.isconta);
   p_his_procesosrea('CUACESFAC', vindica, 'PRESERV', :old.preserv, :new.preserv);
   p_his_procesosrea('CUACESFAC', vindica, 'PINTRES', :old.pintres, :new.pintres);
   p_his_procesosrea('CUACESFAC', vindica, 'PCOMISI', :old.pcomisi, :new.pcomisi);
   p_his_procesosrea('CUACESFAC', vindica, 'CINTRES', :old.cintres, :new.cintres);
   p_his_procesosrea('CUACESFAC', vindica, 'CCORRED', :old.ccorred, :new.ccorred);
   p_his_procesosrea('CUACESFAC', vindica, 'CFRERES', :old.cfreres, :new.cfreres);
   p_his_procesosrea('CUACESFAC', vindica, 'CRESREA', :old.cresrea, :new.cresrea);
   p_his_procesosrea('CUACESFAC', vindica, 'CCONREC', :old.cconrec, :new.cconrec);
   p_his_procesosrea('CUACESFAC', vindica, 'FGARPRI', :old.fgarpri, :new.fgarpri);
   p_his_procesosrea('CUACESFAC', vindica, 'FGARDEP', :old.fgardep, :new.fgardep);
   p_his_procesosrea('CUACESFAC', vindica, 'PIMPINT', :old.pimpint, :new.pimpint);
   p_his_procesosrea('CUACESFAC', vindica, 'CTRAMOCOMISION', :old.ctramocomision, :new.ctramocomision);
   p_his_procesosrea('CUACESFAC', vindica, 'TIDFCOM', :old.tidfcom, :new.tidfcom);
   --
END trg_cuacesfac;


/
ALTER TRIGGER "AXIS"."TRG_CUACESFAC" ENABLE;
