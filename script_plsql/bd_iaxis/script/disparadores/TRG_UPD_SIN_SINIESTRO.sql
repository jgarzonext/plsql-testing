--------------------------------------------------------
--  DDL for Trigger TRG_UPD_SIN_SINIESTRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_UPD_SIN_SINIESTRO" 
--BUG14898-08/06/2010-SRA-Trigger que volcará en hissin_siniestro contenido histórico de sin_siniestro
--BUG18554-11/06/2011-SRA-Se añaden nuevos campos al trigger
--BUG19401-07/09/2011-APD-Corregir los to_dates de este trigger (formatos)
AFTER UPDATE OF cculpab,
                cevento,
                cmeddec,
                creclama,
                ctipdec,
                ctipide,
                cusumod,
                dec_sperson,
                fmodifi,
                nnumide,
                tape1dec,
                tape2dec,
                tnomdec,
                tsinies,
                tteldec,
-- Ini bug 18554 - 11/06/2011 - SRA
                fsinies,
                fnotifi,
                ccausin,
                cmotsin,
                cnivel,
                sperson2,
                fechapp,
                nsincia,
                ccompani,
                npresin,
                cpolcia,
                iperit,
-- Fin bug 18554 - 11/06/2011 - SRA
                cagente,   -- bug 19593/93300 - 30/09/2011 - AMC
                cfraude,   --bug 18521/93022 - 30/09/2011 - AMC
                ccarpeta,   -- bug 19832/95187 - 21/10/2011 - JMP
                csalvam   -- BUG 0024675 - 15/11/2012 - JMF
   ON sin_siniestro
   FOR EACH ROW
BEGIN
   IF NVL(:NEW.cevento, 'NULL') != NVL(:OLD.cevento, 'NULL')
      OR NVL(:NEW.cculpab, -1) != NVL(:OLD.cculpab, -1)
      OR NVL(:NEW.creclama, -1) != NVL(:OLD.creclama, -1)
      OR NVL(:NEW.cmeddec, -1) != NVL(:OLD.cmeddec, -1)
      OR NVL(:NEW.ctipdec, -1) != NVL(:OLD.ctipdec, -1)
      OR NVL(:NEW.ctipide, -1) != NVL(:OLD.ctipide, -1)
      OR NVL(:NEW.nnumide, -1) != NVL(:OLD.nnumide, -1)
      OR NVL(:NEW.tnomdec, 'NULL') != NVL(:OLD.tnomdec, 'NULL')
      OR NVL(:NEW.tape1dec, 'NULL') != NVL(:OLD.tape1dec, 'NULL')
      OR NVL(:NEW.tape2dec, 'NULL') != NVL(:OLD.tape2dec, 'NULL')
      OR NVL(:NEW.tteldec, 'NULL') != NVL(:OLD.tteldec, 'NULL')
      OR NVL(:NEW.tsinies, 'NULL') != NVL(:OLD.tsinies, 'NULL')
      OR NVL(:NEW.dec_sperson, -1) != NVL(:OLD.dec_sperson, -1)
-- Ini bug 18554 - 11/06/2011 - SRA
      OR NVL(:NEW.fsinies, TO_DATE('31/12/9999', 'DD/MM/YYYY')) !=
                                         NVL(:OLD.fsinies, TO_DATE('31/12/9999', 'DD/MM/YYYY'))
      OR NVL(:NEW.fnotifi, TO_DATE('31/12/9999', 'DD/MM/YYYY')) !=
                                         NVL(:OLD.fnotifi, TO_DATE('31/12/9999', 'DD/MM/YYYY'))
      OR NVL(:NEW.ccausin, -1) != NVL(:OLD.ccausin, -1)
      OR NVL(:NEW.cmotsin, -1) != NVL(:OLD.cmotsin, -1)
      OR NVL(:NEW.cnivel, -1) != NVL(:OLD.cnivel, -1)
      OR NVL(:NEW.sperson2, -1) != NVL(:OLD.sperson2, -1)
      OR NVL(:NEW.fechapp, TO_DATE('31/12/9999', 'DD/MM/YYYY')) !=
                                         NVL(:OLD.fechapp, TO_DATE('31/12/9999', 'DD/MM/YYYY'))
      OR NVL(:NEW.nsincia, -1) != NVL(:OLD.nsincia, -1)
      OR NVL(:NEW.ccompani, -1) != NVL(:OLD.ccompani, -1)
      OR NVL(:NEW.npresin, -1) != NVL(:OLD.npresin, -1)
      OR NVL(:NEW.cpolcia, -1) != NVL(:OLD.cpolcia, -1)
      OR NVL(:NEW.iperit, -1) != NVL(:OLD.iperit, -1)
-- Fin bug 18554 - 11/06/2011 - SRA
      OR NVL(:NEW.cagente, -1) != NVL(:OLD.cagente, -1)   -- bug 19593/93300 - 30/09/2011 - AMC
      OR NVL(:NEW.cfraude, -1) != NVL(:OLD.cfraude, -1)   --bug 18521/93022 - 30/09/2011 - AMC
      OR NVL(:NEW.ccarpeta, -1) != NVL(:OLD.ccarpeta, -1)
      OR NVL(:NEW.csalvam, -1) != NVL(:OLD.csalvam, -1)   -- BUG 0024675 - 15/11/2012 - JMF
                                                       THEN
      INSERT INTO hissin_siniestro
                  (nsinies, cevento, cculpab, creclama, cmeddec,
                   ctipdec, tnomdec, tape1dec, tape2dec, tteldec,
                   tsinies, cusumod, fmodifi, dec_sperson, ctipide,
                   nnumide,
-- Ini bug 18554 - 11/06/2011 - SRA
                           fsinies, fnotifi, ccausin, cmotsin,
                   cnivel, sperson2, fechapp, nsincia, ccompani,
                   npresin, cpolcia, iperit,
-- Fin bug 18554 - 11/06/2011 - SRA
                                            cagente,   -- bug 19593/93300 - 30/09/2011 - AMC
                                                    cfraude,   --bug 18521/93022 - 30/09/2011 - AMC
                   ccarpeta, csalvam   -- BUG 0024675 - 15/11/2012 - JMF
                                    )
           VALUES (:OLD.nsinies, :OLD.cevento, :OLD.cculpab, :OLD.creclama, :OLD.cmeddec,
                   :OLD.ctipdec, :OLD.tnomdec, :OLD.tape1dec, :OLD.tape2dec, :OLD.tteldec,
                   :OLD.tsinies, :OLD.cusumod, :OLD.fmodifi, :OLD.dec_sperson, :OLD.ctipide,
                   :OLD.nnumide,
-- Ini bug 18554 - 11/06/2011 - SRA
                                :OLD.fsinies, :OLD.fnotifi, :OLD.ccausin, :OLD.cmotsin,
                   :OLD.cnivel, :OLD.sperson2, :OLD.fechapp, :OLD.nsincia, :OLD.ccompani,
                   :OLD.npresin, :OLD.cpolcia, :OLD.iperit,
-- Fin bug 18554 - 11/06/2011 - SRA
                                                           :OLD.cagente,   -- bug 19593/93300 - 30/09/2011 - AMC
                                                                        :OLD.cfraude,   --bug 18521/93022 - 30/09/2011 - AMC
                   :OLD.ccarpeta, :OLD.csalvam   -- BUG 0024675 - 15/11/2012 - JMF
                                              );
   END IF;
END;





/
ALTER TRIGGER "AXIS"."TRG_UPD_SIN_SINIESTRO" ENABLE;
