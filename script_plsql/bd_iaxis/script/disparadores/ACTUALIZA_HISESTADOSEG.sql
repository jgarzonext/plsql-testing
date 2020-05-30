--------------------------------------------------------
--  DDL for Trigger ACTUALIZA_HISESTADOSEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."ACTUALIZA_HISESTADOSEG" 
   AFTER UPDATE OF csituac,
                   creteni,
                   cbloqueocol,
                   fefecto,
                   fcarpro,
                   fcaranu,
                   fcarant,
                   frenova,
                   nrenova
   ON seguros
   FOR EACH ROW
DECLARE
   vtraza        NUMBER;
   vnorden       hisestadoseg.norden%TYPE;
   vnmovimi      hisestadoseg.nmovimi%TYPE;
   vcempres      NUMBER;
   vcidioma      NUMBER;
   vasunto       VARCHAR2 (1000);
   vmail         VARCHAR (1000);
   vfrom         VARCHAR (200);
   vto           VARCHAR (200);
   vto2          VARCHAR (200);
   verror        VARCHAR (100);
   vscorreo      NUMBER;
   vmailreturn   NUMBER;
   vcusumov      movseguro.cusumov%TYPE;
   vmailusu      usuarios.mail_usu%TYPE;
BEGIN
   IF    :OLD.csituac <> :NEW.csituac
      OR :OLD.creteni <> :NEW.creteni
      OR :OLD.cbloqueocol <> :NEW.cbloqueocol
   THEN
      vtraza := 1;

      SELECT NVL (MAX (norden), 0) + 1
        INTO vnorden
        FROM hisestadoseg
       WHERE sseguro = :NEW.sseguro;

      vtraza := 2;

      SELECT MAX (nmovimi)
        INTO vnmovimi
        FROM movseguro
       WHERE sseguro = :NEW.sseguro;

      vtraza := 3;

      INSERT INTO hisestadoseg
                  (sseguro, norden, nmovimi, csituac,
                   creteni, cbloqueocol, falta, cusualt
                  )
           VALUES (:NEW.sseguro, vnorden, vnmovimi, :OLD.csituac,
                   :OLD.creteni, :OLD.cbloqueocol, f_sysdate, f_user
                  );

      -- Bug 39657 - RSC - 01/03/2016 - Envio de correo al autorizar al usuario emisor
      IF :OLD.csituac IN (4, 5) AND :OLD.creteni = 2 AND :NEW.creteni = 0
      THEN
         BEGIN
            SELECT scorreo
              INTO vscorreo
              FROM cfg_notificacion
             WHERE cempres = :NEW.cempres
               AND cmodo = 'GENERAL'
               AND sproduc = 0
               AND tevento = 'AUTORIZAPOLIZA';

            SELECT cusumov
              INTO vcusumov
              FROM movseguro
             WHERE sseguro = :NEW.sseguro AND nmovimi = vnmovimi;

            SELECT cidioma, mail_usu
              INTO vcidioma, vmailusu
              FROM usuarios
             WHERE cusuari = vcusumov;

            vmailreturn :=
               pac_correo.f_mail (vscorreo,
                                  :NEW.sseguro,
                                  NULL,
                                  vcidioma,
                                  NULL,
                                  vmail,
                                  vasunto,
                                  vfrom,
                                  vto,
                                  vto2,
                                  verror,
                                  NULL,
                                  NULL,
                                  NULL,
                                  f_axis_literales (9908773, vcidioma),
                                  :NEW.npoliza,
                                  NULL,
                                  vmailusu
                                 );

            IF vmailreturn <> 0
            THEN
               NULL;  -- Si falla el envío de correo no hacer nada de momento
            END IF;
         EXCEPTION
            WHEN OTHERS
            THEN
               NULL;
         END;
      END IF;
   -- Fin Bug 39657
   END IF;

   IF    :OLD.fcarpro <> :NEW.fcarpro
      OR :OLD.fcaranu <> :NEW.fcaranu
      OR :OLD.fcarant <> :NEW.fcarant
      OR :OLD.frenova <> :NEW.frenova
      OR :OLD.nrenova <> :NEW.nrenova
      OR :OLD.fefecto <> :NEW.fefecto
   THEN
      vtraza := 4;

      SELECT NVL (MAX (norden), 0) + 1
        INTO vnorden
        FROM hisestadoseg_car
       WHERE sseguro = :NEW.sseguro;

      vtraza := 5;

      SELECT MAX (nmovimi)
        INTO vnmovimi
        FROM movseguro
       WHERE sseguro = :NEW.sseguro;

      vtraza := 6;

      INSERT INTO hisestadoseg_car
                  (sseguro, norden, nmovimi, fcarpro,
                   fcaranu, fcarant, frenova, nrenova,
                   falta, cusualt, fefecto
                  )
           VALUES (:NEW.sseguro, vnorden, vnmovimi, :OLD.fcarpro,
                   :OLD.fcaranu, :OLD.fcarant, :OLD.frenova, :OLD.nrenova,
                   f_sysdate, f_user, :OLD.fefecto
                  );
   END IF;
EXCEPTION
   WHEN OTHERS
   THEN
      p_tab_error (f_sysdate,
                   f_user,
                   'TRIGGER actualiza_hisestadoseg',
                   vtraza,
                   SQLCODE,
                   SQLERRM
                  );
END;



/
ALTER TRIGGER "AXIS"."ACTUALIZA_HISESTADOSEG" ENABLE;
