--------------------------------------------------------
--  DDL for Trigger TRG_PRODUCTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PRODUCTOS" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON productos
   FOR EACH ROW
BEGIN
   IF INSERTING THEN
      -- crear registro histórico
      INSERT INTO his_productos
                  (ctipseg, ccolect, cramo, cmodali, cagrpro,
                   csubpro, cactivo, ctipreb, ctipges, creccob,
                   ctippag, cpagdef, cduraci, ctempor, ctarman,
                   ctipefe, cgarsin, cvalman, ctiprie, cvalfin,
                   cobjase, cprotec, sclaben, nedamic, nedamac,
                   nedamar, pinttec, pgasint, pgasext, iprimin,
                   ndurcob, crecfra, creteni, cimppri, cimptax,
                   cimpcon, ccuesti, ctipcal, cimpefe, cmodelo,
                   ccalcom, creaseg, prevali, irevali, crevali,
                   cramdgs, ctipimp, crevfpg, cmovdom, sproduc,
                   cctacor, cvinpol, cdivisa, ctipren, cclaren,
                   nnumren, cparben, ciedmac, ciedmic, ciedmar,
                   nsedmac, cisemac, pgaexin, pgaexex, cprprod,
                   nvtomax, nvtomin, cdurmax, cligact, cpa1ren,
                   npa1ren, tposian, ciema2c, ciemi2c, ciema2r,
                   nedma2c, nedmi2c, nedma2r, scuecar, cprorra,
                   ccompani, cprimin, cclapri, cvinpre, cdurmin,
                   ipminfra, ndiaspro, nrenova, nmaxrie, csufijo,
                   cfeccob, nnumpag, nrecren, iminext, ccarpen,
                   csindef, ctipres, nniggar, nniigar, nparben,
                   nbns, ctramo, cagrcon, cmodnre, ctermfin,
                   cmodint, cintrev, cpreaviso, cusumod, fmodifi, accion)
           VALUES (:NEW.ctipseg, :NEW.ccolect, :NEW.cramo, :NEW.cmodali, :NEW.cagrpro,
                   :NEW.csubpro, :NEW.cactivo, :NEW.ctipreb, :NEW.ctipges, :NEW.creccob,
                   :NEW.ctippag, :NEW.cpagdef, :NEW.cduraci, :NEW.ctempor, :NEW.ctarman,
                   :NEW.ctipefe, :NEW.cgarsin, :NEW.cvalman, :NEW.ctiprie, :NEW.cvalfin,
                   :NEW.cobjase, :NEW.cprotec, :NEW.sclaben, :NEW.nedamic, :NEW.nedamac,
                   :NEW.nedamar, :NEW.pinttec, :NEW.pgasint, :NEW.pgasext, :NEW.iprimin,
                   :NEW.ndurcob, :NEW.crecfra, :NEW.creteni, :NEW.cimppri, :NEW.cimptax,
                   :NEW.cimpcon, :NEW.ccuesti, :NEW.ctipcal, :NEW.cimpefe, :NEW.cmodelo,
                   :NEW.ccalcom, :NEW.creaseg, :NEW.prevali, :NEW.irevali, :NEW.crevali,
                   :NEW.cramdgs, :NEW.ctipimp, :NEW.crevfpg, :NEW.cmovdom, :NEW.sproduc,
                   :NEW.cctacor, :NEW.cvinpol, :NEW.cdivisa, :NEW.ctipren, :NEW.cclaren,
                   :NEW.nnumren, :NEW.cparben, :NEW.ciedmac, :NEW.ciedmic, :NEW.ciedmar,
                   :NEW.nsedmac, :NEW.cisemac, :NEW.pgaexin, :NEW.pgaexex, :NEW.cprprod,
                   :NEW.nvtomax, :NEW.nvtomin, :NEW.cdurmax, :NEW.cligact, :NEW.cpa1ren,
                   :NEW.npa1ren, :NEW.tposian, :NEW.ciema2c, :NEW.ciemi2c, :NEW.ciema2r,
                   :NEW.nedma2c, :NEW.nedmi2c, :NEW.nedma2r, :NEW.scuecar, :NEW.cprorra,
                   :NEW.ccompani, :NEW.cprimin, :NEW.cclapri, :NEW.cvinpre, :NEW.cdurmin,
                   :NEW.ipminfra, :NEW.ndiaspro, :NEW.nrenova, :NEW.nmaxrie, :NEW.csufijo,
                   :NEW.cfeccob, :NEW.nnumpag, :NEW.nrecren, :NEW.iminext, :NEW.ccarpen,
                   :NEW.csindef, :NEW.ctipres, :NEW.nniggar, :NEW.nniigar, :NEW.nparben,
                   :NEW.nbns, :NEW.ctramo, :NEW.cagrcon, :NEW.cmodnre, :NEW.ctermfin,
                   :NEW.cmodint, :NEW.cintrev, :NEW.cpreaviso, f_user, f_sysdate, 'N');
   ELSIF UPDATING THEN
      -- crear registro histórico
      INSERT INTO his_productos
                  (ctipseg, ccolect, cramo, cmodali, cagrpro,
                   csubpro, cactivo, ctipreb, ctipges, creccob,
                   ctippag, cpagdef, cduraci, ctempor, ctarman,
                   ctipefe, cgarsin, cvalman, ctiprie, cvalfin,
                   cobjase, cprotec, sclaben, nedamic, nedamac,
                   nedamar, pinttec, pgasint, pgasext, iprimin,
                   ndurcob, crecfra, creteni, cimppri, cimptax,
                   cimpcon, ccuesti, ctipcal, cimpefe, cmodelo,
                   ccalcom, creaseg, prevali, irevali, crevali,
                   cramdgs, ctipimp, crevfpg, cmovdom, sproduc,
                   cctacor, cvinpol, cdivisa, ctipren, cclaren,
                   nnumren, cparben, ciedmac, ciedmic, ciedmar,
                   nsedmac, cisemac, pgaexin, pgaexex, cprprod,
                   nvtomax, nvtomin, cdurmax, cligact, cpa1ren,
                   npa1ren, tposian, ciema2c, ciemi2c, ciema2r,
                   nedma2c, nedmi2c, nedma2r, scuecar, cprorra,
                   ccompani, cprimin, cclapri, cvinpre, cdurmin,
                   ipminfra, ndiaspro, nrenova, nmaxrie, csufijo,
                   cfeccob, nnumpag, nrecren, iminext, ccarpen,
                   csindef, ctipres, nniggar, nniigar, nparben,
                   nbns, ctramo, cagrcon, cmodnre, ctermfin,
                   cmodint, cintrev, cpreaviso, cusumod, fmodifi, accion)
           VALUES (:OLD.ctipseg, :OLD.ccolect, :OLD.cramo, :OLD.cmodali, :OLD.cagrpro,
                   :OLD.csubpro, :OLD.cactivo, :OLD.ctipreb, :OLD.ctipges, :OLD.creccob,
                   :OLD.ctippag, :OLD.cpagdef, :OLD.cduraci, :OLD.ctempor, :OLD.ctarman,
                   :OLD.ctipefe, :OLD.cgarsin, :OLD.cvalman, :OLD.ctiprie, :OLD.cvalfin,
                   :OLD.cobjase, :OLD.cprotec, :OLD.sclaben, :OLD.nedamic, :OLD.nedamac,
                   :OLD.nedamar, :OLD.pinttec, :OLD.pgasint, :OLD.pgasext, :OLD.iprimin,
                   :OLD.ndurcob, :OLD.crecfra, :OLD.creteni, :OLD.cimppri, :OLD.cimptax,
                   :OLD.cimpcon, :OLD.ccuesti, :OLD.ctipcal, :OLD.cimpefe, :OLD.cmodelo,
                   :OLD.ccalcom, :OLD.creaseg, :OLD.prevali, :OLD.irevali, :OLD.crevali,
                   :OLD.cramdgs, :OLD.ctipimp, :OLD.crevfpg, :OLD.cmovdom, :OLD.sproduc,
                   :OLD.cctacor, :OLD.cvinpol, :OLD.cdivisa, :OLD.ctipren, :OLD.cclaren,
                   :OLD.nnumren, :OLD.cparben, :OLD.ciedmac, :OLD.ciedmic, :OLD.ciedmar,
                   :OLD.nsedmac, :OLD.cisemac, :OLD.pgaexin, :OLD.pgaexex, :OLD.cprprod,
                   :OLD.nvtomax, :OLD.nvtomin, :OLD.cdurmax, :OLD.cligact, :OLD.cpa1ren,
                   :OLD.npa1ren, :OLD.tposian, :OLD.ciema2c, :OLD.ciemi2c, :OLD.ciema2r,
                   :OLD.nedma2c, :OLD.nedmi2c, :OLD.nedma2r, :OLD.scuecar, :OLD.cprorra,
                   :OLD.ccompani, :OLD.cprimin, :OLD.cclapri, :OLD.cvinpre, :OLD.cdurmin,
                   :OLD.ipminfra, :OLD.ndiaspro, :OLD.nrenova, :OLD.nmaxrie, :OLD.csufijo,
                   :OLD.cfeccob, :OLD.nnumpag, :OLD.nrecren, :OLD.iminext, :OLD.ccarpen,
                   :OLD.csindef, :OLD.ctipres, :OLD.nniggar, :OLD.nniigar, :OLD.nparben,
                   :OLD.nbns, :OLD.ctramo, :OLD.cagrcon, :OLD.cmodnre, :OLD.ctermfin,
                   :OLD.cmodint, :OLD.cintrev, :OLD.cpreaviso, f_user, f_sysdate, 'U');
   ELSE
      -- crear registro histórico
      INSERT INTO his_productos
                  (ctipseg, ccolect, cramo, cmodali, cagrpro,
                   csubpro, cactivo, ctipreb, ctipges, creccob,
                   ctippag, cpagdef, cduraci, ctempor, ctarman,
                   ctipefe, cgarsin, cvalman, ctiprie, cvalfin,
                   cobjase, cprotec, sclaben, nedamic, nedamac,
                   nedamar, pinttec, pgasint, pgasext, iprimin,
                   ndurcob, crecfra, creteni, cimppri, cimptax,
                   cimpcon, ccuesti, ctipcal, cimpefe, cmodelo,
                   ccalcom, creaseg, prevali, irevali, crevali,
                   cramdgs, ctipimp, crevfpg, cmovdom, sproduc,
                   cctacor, cvinpol, cdivisa, ctipren, cclaren,
                   nnumren, cparben, ciedmac, ciedmic, ciedmar,
                   nsedmac, cisemac, pgaexin, pgaexex, cprprod,
                   nvtomax, nvtomin, cdurmax, cligact, cpa1ren,
                   npa1ren, tposian, ciema2c, ciemi2c, ciema2r,
                   nedma2c, nedmi2c, nedma2r, scuecar, cprorra,
                   ccompani, cprimin, cclapri, cvinpre, cdurmin,
                   ipminfra, ndiaspro, nrenova, nmaxrie, csufijo,
                   cfeccob, nnumpag, nrecren, iminext, ccarpen,
                   csindef, ctipres, nniggar, nniigar, nparben,
                   nbns, ctramo, cagrcon, cmodnre, ctermfin,
                   cmodint, cintrev, cpreaviso, cusumod, fmodifi, accion)
           VALUES (:OLD.ctipseg, :OLD.ccolect, :OLD.cramo, :OLD.cmodali, :OLD.cagrpro,
                   :OLD.csubpro, :OLD.cactivo, :OLD.ctipreb, :OLD.ctipges, :OLD.creccob,
                   :OLD.ctippag, :OLD.cpagdef, :OLD.cduraci, :OLD.ctempor, :OLD.ctarman,
                   :OLD.ctipefe, :OLD.cgarsin, :OLD.cvalman, :OLD.ctiprie, :OLD.cvalfin,
                   :OLD.cobjase, :OLD.cprotec, :OLD.sclaben, :OLD.nedamic, :OLD.nedamac,
                   :OLD.nedamar, :OLD.pinttec, :OLD.pgasint, :OLD.pgasext, :OLD.iprimin,
                   :OLD.ndurcob, :OLD.crecfra, :OLD.creteni, :OLD.cimppri, :OLD.cimptax,
                   :OLD.cimpcon, :OLD.ccuesti, :OLD.ctipcal, :OLD.cimpefe, :OLD.cmodelo,
                   :OLD.ccalcom, :OLD.creaseg, :OLD.prevali, :OLD.irevali, :OLD.crevali,
                   :OLD.cramdgs, :OLD.ctipimp, :OLD.crevfpg, :OLD.cmovdom, :OLD.sproduc,
                   :OLD.cctacor, :OLD.cvinpol, :OLD.cdivisa, :OLD.ctipren, :OLD.cclaren,
                   :OLD.nnumren, :OLD.cparben, :OLD.ciedmac, :OLD.ciedmic, :OLD.ciedmar,
                   :OLD.nsedmac, :OLD.cisemac, :OLD.pgaexin, :OLD.pgaexex, :OLD.cprprod,
                   :OLD.nvtomax, :OLD.nvtomin, :OLD.cdurmax, :OLD.cligact, :OLD.cpa1ren,
                   :OLD.npa1ren, :OLD.tposian, :OLD.ciema2c, :OLD.ciemi2c, :OLD.ciema2r,
                   :OLD.nedma2c, :OLD.nedmi2c, :OLD.nedma2r, :OLD.scuecar, :OLD.cprorra,
                   :OLD.ccompani, :OLD.cprimin, :OLD.cclapri, :OLD.cvinpre, :OLD.cdurmin,
                   :OLD.ipminfra, :OLD.ndiaspro, :OLD.nrenova, :OLD.nmaxrie, :OLD.csufijo,
                   :OLD.cfeccob, :OLD.nnumpag, :OLD.nrecren, :OLD.iminext, :OLD.ccarpen,
                   :OLD.csindef, :OLD.ctipres, :OLD.nniggar, :OLD.nniigar, :OLD.nparben,
                   :OLD.nbns, :OLD.ctramo, :OLD.cagrcon, :OLD.cmodnre, :OLD.ctermfin,
                   :OLD.cmodint, :OLD.cintrev, :OLD.cpreaviso, f_user, f_sysdate, 'D');
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_PRODUCTOS', 1, SQLCODE, SQLERRM);
END trg_productos;





/
ALTER TRIGGER "AXIS"."TRG_PRODUCTOS" ENABLE;
