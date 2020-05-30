--------------------------------------------------------
--  DDL for Trigger BU_RECIBOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BU_RECIBOS" 
   BEFORE UPDATE
   ON recibos
   FOR EACH ROW
DECLARE
   -- 1.0        03/01/2012   JMF              1. 0020761 LCOL_A001- Quotes targetes
   v_shisrec      NUMBER;
BEGIN
   SELECT shisrec.NEXTVAL
     INTO v_shisrec
     FROM DUAL;

   INSERT INTO his_recibos
               (nrecibo, cagente, cempres, nmovimi, sseguro,
                femisio, fefecto, fvencim, ctiprec, cdelega,
                ccobban, cestaux, nanuali, nfracci, cestimp,
                nriesgo, cforpag, cbancar, nmovanu, cretenc,
                pretenc, ncuacoa, ctipcoa, cestsop, cmanual,
                nperven, ctransf, cgescob, ctipban, festimp,
                esccero, ctipcob, creccia, cvalidado, shisrec, fhist,
                cusuhist, ncuotar, cgescar)
        VALUES (:OLD.nrecibo, :OLD.cagente, :OLD.cempres, :OLD.nmovimi, :OLD.sseguro,
                :OLD.femisio, :OLD.fefecto, :OLD.fvencim, :OLD.ctiprec, :OLD.cdelega,
                :OLD.ccobban, :OLD.cestaux, :OLD.nanuali, :OLD.nfracci, :OLD.cestimp,
                :OLD.nriesgo, :OLD.cforpag, :OLD.cbancar, :OLD.nmovanu, :OLD.cretenc,
                :OLD.pretenc, :OLD.ncuacoa, :OLD.ctipcoa, :OLD.cestsop, :OLD.cmanual,
                :OLD.nperven, :OLD.ctransf, :OLD.cgescob, :OLD.ctipban, :OLD.festimp,
                :OLD.esccero, :OLD.ctipcob, :OLD.creccia, :OLD.cvalidado, v_shisrec, F_SYSDATE,
                f_user, :OLD.ncuotar, :OLD.cgescar);
END bu_recibos;


/
ALTER TRIGGER "AXIS"."BU_RECIBOS" ENABLE;
