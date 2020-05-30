--------------------------------------------------------
--  DDL for Trigger BI_DIRECCIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BI_DIRECCIONES" 
   BEFORE INSERT OR UPDATE
   ON DIRECCIONES_OLD0410
   FOR EACH ROW
DECLARE
   xtsiglas    VARCHAR2 (2);
   insertar    BOOLEAN      := FALSE;
   xhisdir     NUMBER;
   nom         NUMBER;
   num         NUMBER;
   comple      NUMBER;
BEGIN
   BEGIN
      SELECT tsiglas
        INTO xtsiglas
        FROM tipos_via
       WHERE csiglas = :NEW.csiglas;
   EXCEPTION
      WHEN OTHERS THEN
         xtsiglas := ' ';
   END;

   nom := LENGTH (:NEW.tnomvia);
   num := LENGTH (:NEW.nnumvia);
   comple := LENGTH (:NEW.tcomple);

   IF (:NEW.nnumvia IS NOT NULL) THEN
      IF (:NEW.tcomple IS NOT NULL) THEN
         IF (nom + num + comple + 8) < 40 THEN
            :NEW.tdomici :=
               xtsiglas || '/ ' || :NEW.tnomvia || ',' || :NEW.nnumvia || ' '
               || :NEW.tcomple;
         ELSE
            :NEW.tdomici :=
               xtsiglas || '/ '
               || SUBSTR (:NEW.tnomvia, 0, 40 - (num + comple + 8)) || ','
               || :NEW.nnumvia || ' ' || :NEW.tcomple;
         END IF;
      ELSE
         IF (nom + num + 5) < 40 THEN
            :NEW.tdomici :=
                        xtsiglas || '/ ' || :NEW.tnomvia || ','
                        || :NEW.nnumvia;
         ELSE
            :NEW.tdomici :=
               xtsiglas || '/ ' || SUBSTR (:NEW.tnomvia, 0, 40 - (num + 5))
               || ',' || :NEW.nnumvia;
         END IF;
      END IF;
   ELSE
      IF (:NEW.tcomple IS NOT NULL) THEN
         IF (nom + 12 + comple) < 40 THEN
            :NEW.tdomici :=
                   xtsiglas || '/ ' || :NEW.tnomvia || ', s/n '
                   || :NEW.tcomple;
         ELSE
            :NEW.tdomici :=
               xtsiglas || '/ '
               || SUBSTR (:NEW.tnomvia, 0, 40 - (12 + comple)) || ', s/n '
               || :NEW.tcomple;
         END IF;
      ELSE
         IF (nom + 12) < 40 THEN
            :NEW.tdomici := xtsiglas || '/ ' || :NEW.tnomvia || ', s/n';
         ELSE
            :NEW.tdomici :=
               xtsiglas || '/ ' || SUBSTR (:NEW.tnomvia, 0, 40 - 12)
               || ', s/n';
         END IF;
      END IF;
   END IF;

   --:NEW.TDOMICI := SUBSTR(XTSIGLAS || ' ' || NVL(:NEW.TNOMVIA,' ') || ' ' || NVL(to_char(:NEW.NNUMVIA),' ') || ' ' || NVL(:NEW.TCOMPLE,' '),1,35);
   IF UPDATING THEN
      IF :NEW.cdomici || '.' || :NEW.tdomici || '.' || :NEW.cpostal || '.'
         || :NEW.cprovin || '.' || :NEW.cpoblac || '.' || :NEW.csiglas || '.'
         || :NEW.tnomvia || '.' || :NEW.nnumvia || '.' || :NEW.tcomple || '.'
         || :NEW.ctipdir <>
            :OLD.cdomici || '.' || :OLD.tdomici || '.' || :OLD.cpostal || '.'
            || :OLD.cprovin || '.' || :OLD.cpoblac || '.' || :OLD.csiglas
            || '.' || :OLD.tnomvia || '.' || :OLD.nnumvia || '.'
            || :OLD.tcomple || '.' || :OLD.ctipdir THEN
         SELECT shisdir.NEXTVAL
           INTO xhisdir
           FROM DUAL;

         INSERT INTO hisdirecciones
                     (shisdir, sperson, cdomici, tdomici,
                      cpostal, cprovin, cpoblac, csiglas,
                      tnomvia, nnumvia, tcomple, ctipdir,
                      fmodif, cusumod,falta)
              VALUES (xhisdir, :OLD.sperson, :OLD.cdomici, :OLD.tdomici,
                      :OLD.cpostal, :OLD.cprovin, :OLD.cpoblac, :OLD.csiglas,
                      :OLD.tnomvia, :OLD.nnumvia, :OLD.tcomple, :OLD.ctipdir,
                      f_sysdate, F_USER,f_sysdate);
      END IF;
   -- 29/4/2004: se propaga al histórico la inserción
   ELSIF INSERTING THEN
      INSERT INTO hisdirecciones
                  (shisdir, sperson, cdomici,
                   tdomici, cpostal, cprovin, cpoblac,
                   csiglas, tnomvia, nnumvia, tcomple,
                   ctipdir, fmodif, cusumod,falta)
           VALUES (shisdir.NEXTVAL, :NEW.sperson, :NEW.cdomici,
                   :NEW.tdomici, :NEW.cpostal, :NEW.cprovin, :NEW.cpoblac,
                   :NEW.csiglas, :NEW.tnomvia, :NEW.nnumvia, :NEW.tcomple,
                   :NEW.ctipdir, f_sysdate, F_USER,f_sysdate);
   END IF;
-----------------------------------------------------------------------------
END bi_direcciones;









/
ALTER TRIGGER "AXIS"."BI_DIRECCIONES" ENABLE;
