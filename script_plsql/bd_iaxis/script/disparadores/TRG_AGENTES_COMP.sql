--------------------------------------------------------
--  DDL for Trigger TRG_AGENTES_COMP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AGENTES_COMP" 
   BEFORE UPDATE OR DELETE
   ON agentes_comp
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
      IF (:NEW.ctipadn || ' ' || :NEW.cagedep || ' ' || :NEW.ctipint || ' ' || :NEW.cageclave
          || ' ' || :NEW.cofermercan || ' ' || :NEW.frecepcontra || ' ' || :NEW.cidoneidad
          || ' ' || :NEW.spercomp || ' ' || :NEW.ccompani || ' ' || :NEW.cofipropia || ' '
          || :NEW.cclasif || ' ' || :NEW.nplanpago || ' ' || :NEW.nnotaria || ' '
          || :NEW.cprovin || ' ' || :NEW.cpoblac || ' ' || :NEW.nescritura || ' '
          || :NEW.faltasoc || ' ' || :NEW.tgerente || ' ' || :NEW.tcamaracomercio || ' '
          || :NEW.agrupador || ' ' || :NEW.cactividad || ' ' || :NEW.ctipoactiv || ' '
          || :NEW.pretencion || ' ' || :NEW.cincidencia || ' ' || :NEW.crating || ' '
          || :NEW.tvaloracion || ' ' || :NEW.cresolucion || ' ' || :NEW.ffincredito || ' '
          || :NEW.nlimcredito || ' ' || :NEW.tcomentarios || ' ' || :NEW.cusualt || ' '
          || :NEW.falta || ' ' || NVL(:NEW.iobjetivo, '0') || ' ' || NVL(:NEW.ibonifica, '0')
          || ' ' || NVL(:NEW.pcomextr, '0') || ' ' || NVL(:NEW.ctipcal, '0') || ' '
          || NVL(:NEW.cforcal, '0') || ' ' || NVL(:NEW.cmespag, '0') || ' '
          || NVL(:NEW.pcomextrov, '0') || ' ' || NVL(:NEW.ppersisten, '0') || ' '
          || NVL(:NEW.pcompers, '0') || ' ' || NVL(:NEW.ctipcalb, '0') || ' '
          || NVL(:NEW.cforcalb, '0') || ' ' || NVL(:NEW.cmespagb, '0') || ' '
          || NVL(:NEW.pcombusi, '0') || ' ' || NVL(:NEW.ilimiteb, '0')) <>
            (:OLD.cagente || ' ' || :OLD.ctipadn || ' ' || :OLD.cagedep || ' ' || :OLD.ctipint
             || ' ' || :OLD.cageclave || ' ' || :OLD.cofermercan || ' ' || :OLD.frecepcontra
             || ' ' || :OLD.cidoneidad || ' ' || :OLD.spercomp || ' ' || :OLD.ccompani || ' '
             || :OLD.cofipropia || ' ' || :OLD.cclasif || ' ' || :OLD.nplanpago || ' '
             || :OLD.nnotaria || ' ' || :OLD.cprovin || ' ' || :OLD.cpoblac || ' '
             || :OLD.nescritura || ' ' || :OLD.faltasoc || ' ' || :OLD.tgerente || ' '
             || :OLD.tcamaracomercio || ' ' || :OLD.agrupador || ' ' || :OLD.cactividad || ' '
             || :OLD.ctipoactiv || ' ' || :OLD.pretencion || ' ' || :OLD.cincidencia || ' '
             || :OLD.crating || ' ' || :OLD.tvaloracion || ' ' || :OLD.cresolucion || ' '
             || :OLD.ffincredito || ' ' || :OLD.nlimcredito || ' ' || :OLD.tcomentarios || ' '
             || :OLD.cusualt || ' ' || :OLD.falta || ' ' || NVL(:OLD.iobjetivo, '0') || ' '
             || NVL(:OLD.ibonifica, '0') || ' ' || NVL(:OLD.pcomextr, '0') || ' '
             || NVL(:OLD.ctipcal, '0') || ' ' || NVL(:OLD.cforcal, '0') || ' '
             || NVL(:OLD.cmespag, '0') || ' ' || NVL(:OLD.pcomextrov, '0') || ' '
             || NVL(:OLD.ppersisten, '0') || ' ' || NVL(:OLD.pcompers, '0') || ' '
             || NVL(:OLD.ctipcalb, '0') || ' ' || NVL(:OLD.cforcalb, '0') || ' '
             || NVL(:OLD.cmespagb, '0') || ' ' || NVL(:OLD.pcombusi, '0') || ' '
             || NVL(:OLD.ilimiteb, '0')) THEN
         -- crear registro histórico
         INSERT INTO his_agentes_comp
                     (cagente, ctipadn, cagedep, ctipint, cageclave,
                      cofermercan, frecepcontra, cidoneidad, spercomp,
                      ccompani, cofipropia, cclasif, nplanpago,
                      nnotaria, cprovin, cpoblac, nescritura,
                      faltasoc, tgerente, tcamaracomercio, agrupador,
                      cactividad, ctipoactiv, pretencion, cincidencia,
                      crating, tvaloracion, cresolucion, ffincredito,
                      nlimcredito, tcomentarios, iobjetivo, ibonifica,
                      pcomextr, ctipcal, cforcal, cmespag,
                      pcomextrov, ppersisten, pcompers, ctipcalb,
                      cforcalb, cmespagb, pcombusi, ilimiteb,
                      cusualt, falta, cusumod, fusumod)
              VALUES (:OLD.cagente, :OLD.ctipadn, :OLD.cagedep, :OLD.ctipint, :OLD.cageclave,
                      :OLD.cofermercan, :OLD.frecepcontra, :OLD.cidoneidad, :OLD.spercomp,
                      :OLD.ccompani, :OLD.cofipropia, :OLD.cclasif, :OLD.nplanpago,
                      :OLD.nnotaria, :OLD.cprovin, :OLD.cpoblac, :OLD.nescritura,
                      :OLD.faltasoc, :OLD.tgerente, :OLD.tcamaracomercio, :OLD.agrupador,
                      :OLD.cactividad, :OLD.ctipoactiv, :OLD.pretencion, :OLD.cincidencia,
                      :OLD.crating, :OLD.tvaloracion, :OLD.cresolucion, :OLD.ffincredito,
                      :OLD.nlimcredito, :OLD.tcomentarios, :OLD.iobjetivo, :OLD.ibonifica,
                      :OLD.pcomextr, :OLD.ctipcal, :OLD.cforcal, :OLD.cmespag,
                      :OLD.pcomextrov, :OLD.ppersisten, :OLD.pcompers, :OLD.ctipcalb,
                      :OLD.cforcalb, :OLD.cmespagb, :OLD.pcombusi, :OLD.ilimiteb,
                      :OLD.cusualt, :OLD.falta, f_user, f_sysdate);
      END IF;
   ELSIF DELETING THEN
      -- crear registro histórico
      INSERT INTO his_agentes_comp
                  (cagente, ctipadn, cagedep, ctipint, cageclave,
                   cofermercan, frecepcontra, cidoneidad, spercomp,
                   ccompani, cofipropia, cclasif, nplanpago,
                   nnotaria, cprovin, cpoblac, nescritura, faltasoc,
                   tgerente, tcamaracomercio, agrupador, cactividad,
                   ctipoactiv, pretencion, cincidencia, crating,
                   tvaloracion, cresolucion, ffincredito, nlimcredito,
                   tcomentarios, iobjetivo, ibonifica, pcomextr,
                   ctipcal, cforcal, cmespag, pcomextrov,
                   ppersisten, pcompers, ctipcalb, cforcalb,
                   cmespagb, pcombusi, ilimiteb, cusualt, falta,
                   cusumod, fusumod)
           VALUES (:OLD.cagente, :OLD.ctipadn, :OLD.cagedep, :OLD.ctipint, :OLD.cageclave,
                   :OLD.cofermercan, :OLD.frecepcontra, :OLD.cidoneidad, :OLD.spercomp,
                   :OLD.ccompani, :OLD.cofipropia, :OLD.cclasif, :OLD.nplanpago,
                   :OLD.nnotaria, :OLD.cprovin, :OLD.cpoblac, :OLD.nescritura, :OLD.faltasoc,
                   :OLD.tgerente, :OLD.tcamaracomercio, :OLD.agrupador, :OLD.cactividad,
                   :OLD.ctipoactiv, :OLD.pretencion, :OLD.cincidencia, :OLD.crating,
                   :OLD.tvaloracion, :OLD.cresolucion, :OLD.ffincredito, :OLD.nlimcredito,
                   :OLD.tcomentarios, :OLD.iobjetivo, :OLD.ibonifica, :OLD.pcomextr,
                   :OLD.ctipcal, :OLD.cforcal, :OLD.cmespag, :OLD.pcomextrov,
                   :OLD.ppersisten, :OLD.pcompers, :OLD.ctipcalb, :OLD.cforcalb,
                   :OLD.cmespagb, :OLD.pcombusi, :OLD.ilimiteb, :OLD.cusualt, :OLD.falta,
                   f_user, f_sysdate);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END trg_agentes_comp;




/
ALTER TRIGGER "AXIS"."TRG_AGENTES_COMP" ENABLE;
