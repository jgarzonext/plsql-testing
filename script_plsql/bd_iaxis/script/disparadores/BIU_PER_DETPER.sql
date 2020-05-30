--------------------------------------------------------
--  DDL for Trigger BIU_PER_DETPER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIU_PER_DETPER" 
   BEFORE INSERT OR UPDATE
   ON per_detper
   FOR EACH ROW
--  Este trigger se encarga de rellenar el campo TBUSCAR de personas
-- automáticamente sin necesidad de hacerlo en ningún formulario.
DECLARE
   num_err        NUMBER;
   format_tnombre per_detper.tnombre%TYPE;
   format_tapelli1_f per_detper.tapelli1%TYPE;
   format_tapelli2_f per_detper.tapelli2%TYPE;
   format_tsiglas per_detper.tsiglas%TYPE;
   format_tnomtot per_detper.tbuscar%TYPE;
BEGIN
   IF NVL(f_parinstalacion_n('PERSONAS_MAYUSCULAS'), 0) = 1 THEN
      :NEW.tnombre := UPPER(:NEW.tnombre);

      IF :NEW.tnombre1 IS NOT NULL
         OR :NEW.tnombre2 IS NOT NULL THEN
         :NEW.tnombre := TRIM(UPPER(:NEW.tnombre1 || ' ' || :NEW.tnombre2));
      END IF;

      :NEW.tnombre1 := UPPER(:NEW.tnombre1);
      :NEW.tnombre2 := UPPER(:NEW.tnombre2);
      :NEW.tapelli1 := UPPER(:NEW.tapelli1);
      :NEW.tapelli2 := UPPER(:NEW.tapelli2);
      :NEW.tsiglas := UPPER(:NEW.tsiglas);
   ELSE
      IF :NEW.tnombre1 IS NOT NULL
         OR :NEW.tnombre2 IS NOT NULL THEN
         :NEW.tnombre := TRIM(:NEW.tnombre1 || ' ' || :NEW.tnombre2);
      END IF;
   END IF;

   num_err := f_strstd(:NEW.tnombre, format_tnombre);
   num_err := f_strstd(:NEW.tapelli1, format_tapelli1_f);
   num_err := f_strstd(:NEW.tapelli2, format_tapelli2_f);
   num_err := f_strstd(:NEW.tsiglas, format_tsiglas);
   num_err := f_strstd(:NEW.tnombre, format_tnomtot);

   IF :OLD.tbuscar IS NULL
      OR :OLD.tbuscar != TRIM(format_tapelli1_f || ' ' || format_tapelli2_f || ' '
                              || format_tnombre || '#' || format_tsiglas || '#'
                              || format_tnomtot) THEN
      :NEW.tbuscar := TRIM(format_tapelli1_f || ' ' || format_tapelli2_f || ' '
                           || format_tnombre || '#' || format_tsiglas || '#' || format_tnomtot);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'BIU_PER_DETPER', 1, 'Error en el trigger: ', SQLERRM);
      RAISE;
END biu_per_detper;



/
ALTER TRIGGER "AXIS"."BIU_PER_DETPER" ENABLE;
