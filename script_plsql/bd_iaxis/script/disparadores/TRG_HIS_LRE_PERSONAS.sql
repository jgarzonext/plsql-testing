--------------------------------------------------------
--  DDL for Trigger TRG_HIS_LRE_PERSONAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_LRE_PERSONAS" 
   -- Cambios de Swapnil Para Q1897 :Start
AFTER INSERT OR UPDATE OR DELETE
   -- Cambios de Swapnil Para Q1897 :Ends
   ON lre_personas
   REFERENCING NEW AS new OLD AS old
   FOR EACH ROW
DECLARE
   vcaccion       VARCHAR2(2);
BEGIN
  -- Cambios de Swapnil Para Q1897 :Start
  IF INSERTING THEN
   INSERT INTO   his_lre_personas(
                                     fcreahist, accion, sperlre, nnumide, nordide, ctipide,
                                     ctipper, tnomape, tnombre1, tnombre2, tapelli1, tapelli2,
                                     sperson, cnovedad, cnotifi, cclalis, ctiplis, finclus,
                                     fexclus, cinclus, cexclus, cusumod, fmodifi, sseguro,
                                     nmovimi, caccion, nsinies, nrecibo, smovrec, sdevolu,
                                     fnacimi,CUSUARIO, FBAJA
                    )
           VALUES   (
              SYSTIMESTAMP, 'I', :new.sperlre, :new.nnumide, :new.nordide, :new.ctipide,
              :new.ctipper, :new.tnomape, :new.tnombre1, :new.tnombre2, :new.tapelli1, :new.tapelli2,
              :new.sperson, :new.cnovedad, :new.cnotifi, :new.cclalis, :new.ctiplis, :new.finclus,
              :new.fexclus, :new.cinclus, :new.cexclus, :new.cusumod, :new.fmodifi, :new.sseguro,
              :new.nmovimi, :new.caccion, :new.nsinies, :new.nrecibo, :new.smovrec, :new.sdevolu,
              :new.fnacimi, f_user, f_sysdate
           );
    ELSIF UPDATING THEN
   -- Cambios de Swapnil Para Q1897 :Ends
      IF :old.sperlre <> :new.sperlre
         OR :old.nnumide <> :new.nnumide
         OR :old.nordide <> :new.nordide
         OR :old.ctipide <> :new.ctipide
         OR NVL(:old.ctipper, -1) <> NVL(:new.ctipper, -1)
         OR NVL(:old.tnomape, '*') <> NVL(:new.tnomape, '*')
         OR NVL(:old.tnombre1, '*') <> NVL(:new.tnombre1, '*')
         OR NVL(:old.tnombre2, '*') <> NVL(:new.tnombre2, '*')
         OR NVL(:old.tapelli1, '*') <> NVL(:new.tapelli1, '*')
         OR NVL(:old.tapelli2, '*') <> NVL(:new.tapelli2, '*')
         OR NVL(:old.sperson, -1) <> NVL(:new.sperson, -1)
         -- -- :old.cnovedad,  -- se actualiza en carga, no lo tratamos como cambio de update
         OR NVL(:old.cnotifi, -1) <> NVL(:new.cnotifi, -1)
         OR NVL(:old.cclalis, -1) <> NVL(:new.cclalis, -1)
         OR NVL(:old.ctiplis, -1) <> NVL(:new.ctiplis, -1)
         OR NVL(:old.finclus, TO_DATE('31/12/9999', 'dd/mm/yyyy')) <>
               NVL(:new.finclus, TO_DATE('31/12/9999', 'dd/mm/yyyy'))
         OR NVL(:old.fexclus, TO_DATE('31/12/9999', 'dd/mm/yyyy')) <>
               NVL(:new.fexclus, TO_DATE('31/12/9999', 'dd/mm/yyyy'))
         OR NVL(:old.cinclus, -1) <> NVL(:new.cinclus, -1)
         OR NVL(:old.cexclus, -1) <> NVL(:new.cexclus, -1)
         OR NVL(:old.cusumod, '*') <> NVL(:new.cusumod, '*')
         --:old.fmodif ,   -- se actualiz en cargas de lre con lo que no actualizamos.
         OR NVL(:old.sseguro, -1) <> NVL(:new.sseguro, -1)
         OR NVL(:old.nmovimi, -1) <> NVL(:new.nmovimi, -1)
         OR NVL(:old.caccion, -1) <> NVL(:new.caccion, -1)
         OR NVL(:old.nsinies, -1) <> NVL(:new.nsinies, -1)
         OR NVL(:old.nrecibo, -1) <> NVL(:new.nrecibo, -1)
         OR NVL(:old.smovrec, -1) <> NVL(:new.smovrec, -1)
         OR NVL(:old.sdevolu, -1) <> NVL(:new.sdevolu, -1)
         OR NVL(:old.fnacimi, TO_DATE('31/12/9999', 'dd/mm/yyyy')) <>
               NVL(:new.fnacimi, TO_DATE('31/12/9999', 'dd/mm/yyyy')) THEN
         vcaccion := 'U';
      ELSE
         --EXIT; -- si estoy updateando pero no he cambiado alguna de las columnas que me interesan algo
         vcaccion := 'X';
      END IF;
   ELSE
      vcaccion := 'D';
   END IF;

   IF vcaccion <> 'X' THEN
      INSERT INTO   his_lre_personas(
                                     fcreahist, accion, sperlre, nnumide, nordide, ctipide,
                                     ctipper, tnomape, tnombre1, tnombre2, tapelli1, tapelli2,
                                     sperson, cnovedad, cnotifi, cclalis, ctiplis, finclus,
                                     fexclus, cinclus, cexclus, cusumod, fmodifi, sseguro,
                                     nmovimi, caccion, nsinies, nrecibo, smovrec, sdevolu,
                                     fnacimi
                                     -- Cambios de Swapnil Para Q1897 :Start
                                     ,CUSUARIO, FBAJA
                                     -- Cambios de Swapnil Para Q1897 :Ends
                    )
           VALUES   (
              SYSTIMESTAMP, vcaccion, :old.sperlre, :old.nnumide, :old.nordide, :old.ctipide,
              :old.ctipper, :old.tnomape, :old.tnombre1, :old.tnombre2, :old.tapelli1, :old.tapelli2,
              :old.sperson, :old.cnovedad, :old.cnotifi, :old.cclalis, :old.ctiplis, :old.finclus,
              :old.fexclus, :old.cinclus, :old.cexclus, :old.cusumod, :old.fmodifi, :old.sseguro,
              :old.nmovimi, :old.caccion, :old.nsinies, :old.nrecibo, :old.smovrec, :old.sdevolu,
              :old.fnacimi
               -- Cambios de Swapnil Para Q1897 :Start
               , f_user, f_sysdate
               -- Cambios de Swapnil Para Q1897 :Ends
           );
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      RAISE;
END;

/
ALTER TRIGGER "AXIS"."TRG_HIS_LRE_PERSONAS" ENABLE;
