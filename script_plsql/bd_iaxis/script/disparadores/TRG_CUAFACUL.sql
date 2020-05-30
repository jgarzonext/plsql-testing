--------------------------------------------------------
--  DDL for Trigger TRG_CUAFACUL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CUAFACUL" 
   AFTER UPDATE ON cuafacul
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SFACULT = ' || :old.sfacult;
BEGIN
   --
   p_his_procesosrea('CUAFACUL', vindica, 'CESTADO', :old.cestado, :new.cestado);
   p_his_procesosrea('CUAFACUL', vindica, 'FINICUF', :old.finicuf, :new.finicuf);
   p_his_procesosrea('CUAFACUL', vindica, 'CFREBOR', :old.cfrebor, :new.cfrebor);
   p_his_procesosrea('CUAFACUL', vindica, 'SCONTRA', :old.scontra, :new.scontra);
   p_his_procesosrea('CUAFACUL', vindica, 'NVERSIO', :old.nversio, :new.nversio);
   p_his_procesosrea('CUAFACUL', vindica, 'SSEGURO', :old.sseguro, :new.sseguro);
   p_his_procesosrea('CUAFACUL', vindica, 'CGARANT', :old.cgarant, :new.cgarant);
   p_his_procesosrea('CUAFACUL', vindica, 'CCALIF1', :old.ccalif1, :new.ccalif1);
   p_his_procesosrea('CUAFACUL', vindica, 'CCALIF2', :old.ccalif2, :new.ccalif2);
   p_his_procesosrea('CUAFACUL', vindica, 'SPLENO', :old.spleno, :new.spleno);
   p_his_procesosrea('CUAFACUL', vindica, 'NMOVIMI', :old.nmovimi, :new.nmovimi);
   p_his_procesosrea('CUAFACUL', vindica, 'SCUMULO', :old.scumulo, :new.scumulo);
   p_his_procesosrea('CUAFACUL', vindica, 'NRIESGO', :old.nriesgo, :new.nriesgo);
   p_his_procesosrea('CUAFACUL', vindica, 'FFINCUF', :old.ffincuf, :new.ffincuf);
   p_his_procesosrea('CUAFACUL', vindica, 'PLOCAL', :old.plocal, :new.plocal);
   p_his_procesosrea('CUAFACUL', vindica, 'FULTBOR', :old.fultbor, :new.fultbor);
   p_his_procesosrea('CUAFACUL', vindica, 'PFACCED', :old.pfacced, :new.pfacced);
   p_his_procesosrea('CUAFACUL', vindica, 'IFACCED', :old.ifacced, :new.ifacced);
   p_his_procesosrea('CUAFACUL', vindica, 'NCESION', :old.ncesion, :new.ncesion);
   p_his_procesosrea('CUAFACUL', vindica, 'CTIPFAC', :old.ctipfac, :new.ctipfac);
   p_his_procesosrea('CUAFACUL', vindica, 'PTASAXL', :old.ptasaxl, :new.ptasaxl);
   --
END trg_cuafacul;


/
ALTER TRIGGER "AXIS"."TRG_CUAFACUL" ENABLE;
