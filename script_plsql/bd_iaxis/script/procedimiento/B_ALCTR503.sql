--------------------------------------------------------
--  DDL for Procedure B_ALCTR503
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."B_ALCTR503" 
AUTHID CURRENT_USER
IS
   ssegu        NUMBER;
   num_error    NUMBER := 0;
   error        NUMBER := 0;
   empre        NUMBER;
   sproces      NUMBER;
   movimi       NUMBER;
   nprolin      NUMBER;
   motmov       NUMBER;
   situac       NUMBER;
   --==
   motven       NUMBER;

   CURSOR segu
   IS -- Seguros con fecha de venc. y no garan. de superv.
      SELECT sseguro, fvencim, cduraci, cnotibaja
        FROM seguros
       WHERE NOT (   (    cramo = 31
                      AND cmodali = 1)
                  OR (    cramo = 33
                      AND cmodali = 1))
         AND fanulac IS NULL
         AND fvencim IS NOT NULL
         AND fvencim < TRUNC(SYSDATE + 1)
         AND femisio <= TRUNC(SYSDATE - 10)
         AND csituac = 0;
-- Añadimos a la llamada de f_anulaseg el parametro de la notificación de baja
BEGIN
   BEGIN
      SELECT cempres
        INTO empre
        FROM usuarios
       WHERE cusuari = F_USER;
   EXCEPTION
      WHEN OTHERS THEN
         error       := 1;
   END;

   error       := f_procesini(
                     F_USER, empre, 'ALCTR503', 'Anulaciones al Vencimiento',
                     sproces);
   COMMIT;

   IF error = 0 THEN
      FOR valor IN segu
      LOOP
         IF valor.cduraci = 0 THEN -- Póliza renovable
            -- (motiu d'anulació el cmotven del cmotmov =221)
            BEGIN
               SELECT MAX(cmotven)
                 INTO motven
                 FROM movseguro
                WHERE sseguro = valor.sseguro
                  AND cmotmov = 221;

               IF motven IS NULL THEN
                  motven      := 319;
               END IF;
            EXCEPTION
                -- Si no trobo cap movseguro per aquesta assegurança assigno cmotmov=319
               --com es feia abans de aquesta modificació
               WHEN NO_DATA_FOUND THEN
                  motven      := 319;
            END;

            motmov      := motven;
            situac      := 2;
         ELSE -- Póliza temporal
            motmov      := 501;
            situac      := 3;
         END IF;

         error       := f_anulaseg(
                           valor.sseguro, 0, valor.fvencim, motmov, NULL,
                           situac, movimi, valor.cnotibaja);

         IF error <> 0 THEN
            ROLLBACK;
            error       := f_proceslin(
                              sproces, 'Error=' || '102541' || ' seguro=' ||
                                       valor.sseguro, 0, nprolin);
            --102541 Error en la función ANULASEG
            num_error   := num_error + 1;
         ELSE
            COMMIT;
         END IF;
      END LOOP;

      IF num_error = 0 THEN
         IF f_procesfin(sproces, 0) = 0 THEN
            NULL;
         END IF;
      ELSE
         IF f_procesfin(sproces, num_error) = 0 THEN
            NULL;
         END IF;
      --104443 Ha habido errores en el proceso de anulaciones al vencimiento
      END IF;

      COMMIT;
   END IF;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."B_ALCTR503" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."B_ALCTR503" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."B_ALCTR503" TO "PROGRAMADORESCSI";
