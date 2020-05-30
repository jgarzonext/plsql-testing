--------------------------------------------------------
--  DDL for Trigger BI_MOVSEGURO_CORR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BI_MOVSEGURO_CORR" 
   BEFORE INSERT OR UPDATE
   ON movseguro
   FOR EACH ROW
DECLARE
   ssegur         NUMBER;
   t_producto     VARCHAR2(10);   -- Tipo de producto
   clase          VARCHAR2(10);   --Clase de producto
   vsproduc       NUMBER(6) := 0;
   venvia         NUMBER(1) := 0;   --1 s''envia el FSE0020
   moneda         NUMBER(1);
   ramo           NUMBER(8);
   modalidad      NUMBER(2);
   tipseg         NUMBER(2);
   colect         NUMBER(2);
   npk            NUMBER(9);
   situac         NUMBER(2);   -- Bug 16800 - 13/12/2010 - AMC
   codcomp        NUMBER(3);
   nctrl          NUMBER;

   CURSOR ecompa(ccramo NUMBER, ccmodali NUMBER, cctipseg NUMBER, cccolect NUMBER) IS
      SELECT ccompani, mensaje
        FROM companias_envios
       WHERE cramo = ccramo
         AND cmodali = ccmodali
         AND ctipseg = cctipseg
         AND ccolect = cccolect;
BEGIN
   ssegur := :NEW.sseguro;

   ----
   SELECT cramo, cmodali, ctipseg, ccolect, csituac, sproduc
     INTO ramo, modalidad, tipseg, colect, situac, vsproduc
     FROM seguros
    WHERE sseguro = ssegur;

   BEGIN
      SELECT tipo_producto, clase, cmoneda
        INTO t_producto, clase, moneda
        FROM tipos_producto
       WHERE cramo = ramo
         AND cmodali = modalidad
         AND ctipseg = tipseg
         AND ccolect = colect;
   EXCEPTION
      WHEN OTHERS THEN
         t_producto := NULL;
         clase := NULL;
   END;

   BEGIN
      SELECT cvalpar
        INTO venvia
        FROM parproductos
       WHERE sproduc = vsproduc
         AND cparpro = 'ENV0020';
   EXCEPTION
      WHEN OTHERS THEN
         venvia := 0;
   END;

----  IF t_producto IN ('MAHc', 'MAHe', 'TRC', 'ACCc', 'ACCe', 'COM_SGA', 'COM_CASER', 'LOC', 'EDC', 'COMER', 'IT') THEN
   IF venvia = 1 THEN
      IF UPDATING
         AND :NEW.cmovseg = 1
         AND :NEW.femisio IS NOT NULL   -- Suplements
         AND :OLD.femisio IS NULL THEN
         INSERT INTO pila_ifases
                     (sseguro, fecha, fecha_envio, ifase)
              VALUES (:NEW.sseguro, :NEW.fmovimi, NULL, 'FSE0020');
      END IF;   -- FIN DEL UPDATING

      IF INSERTING THEN
         IF (:NEW.cmotmov IN(210, 224)
             OR :NEW.cmovseg = 3)   -- Anul.lació
            OR :NEW.cmovseg = 2 THEN   -- Renovació de cartera
            -----Que s'envii a la data d'efecte.
            INSERT INTO pila_ifases
                        (sseguro, fecha, fecha_envio, ifase)
                 VALUES (:NEW.sseguro, :NEW.fefecto, NULL, 'FSE0020');
         END IF;

         IF :NEW.cmovseg = 1
            AND :NEW.femisio IS NOT NULL THEN   -- Suplements emesos
            INSERT INTO pila_ifases
                        (sseguro, fecha, fecha_envio, ifase)
                 VALUES (:NEW.sseguro, :NEW.fmovimi, NULL, 'FSE0020');
         END IF;
      END IF;   -- FIN DEL INSERTING
   END IF;

   /********************ENVIAMENTS A LES COMPANYIES*************************/
   IF :NEW.cmovseg <> 2 THEN   ----CARTERA NO
      IF t_producto IN('PRE_INe', 'PRE_INc', 'PRE_PRe', 'PRE_PRc', 'MUFACE', 'MUGEJU',
                       'ISFAS') THEN
         SELECT COUNT(*)
           INTO nctrl
           FROM tmp_ctrlseguros
          WHERE sseguro = :NEW.sseguro;

         IF nctrl = 0
            AND INSERTING THEN
            BEGIN
               SELECT ccompani
                 INTO codcomp
                 FROM companias_envios
                WHERE cramo = ramo
                  AND cmodali = modalidad
                  AND ctipseg = tipseg
                  AND ccolect = colect
                  AND mensaje = 'FSE0965S';

               ----
               SELECT pilaout_seq.NEXTVAL
                 INTO npk
                 FROM DUAL;

               ----
               INSERT INTO pila_out_companyies
                           (pilapk, sseguro, fecha, cramo, cmodali, ccolect, ctipseg,
                            nmovimi, cmotmov, cmovseg, ccompani, mensaje,
                            fecha_envio, num_envio)
                    VALUES (npk, ssegur, :NEW.fmovimi, ramo, modalidad, colect, tipseg,
                            :NEW.nmovimi, :NEW.cmotmov, :NEW.cmovseg, codcomp, 'FSE0965S',
                            NULL, NULL);
            EXCEPTION
               WHEN NO_DATA_FOUND THEN   --NO S'ENVIA
                  NULL;
            END;
         END IF;
      ELSIF t_producto = 'IT'
            AND situac < 7 THEN
         ----(SITUAC <> 8 AND SITUAC <> 9 AND SITUAC <> 10) THEN  -- Las solicitudes autorizadas, contratadas y anuladas no se envían
         IF UPDATING
            AND(:OLD.femisio IS NULL
                AND :NEW.femisio IS NOT NULL) THEN   ---EMISSIONS
            -----IF INSERTING THEN
            BEGIN
               SELECT ccompani
                 INTO codcomp
                 FROM companias_envios
                WHERE cramo = ramo
                  AND cmodali = modalidad
                  AND ctipseg = tipseg
                  AND ccolect = colect
                  AND mensaje = 'CESSGAPR';

               ----
               SELECT pilaout_seq.NEXTVAL
                 INTO npk
                 FROM DUAL;

               ----
               INSERT INTO pila_out_companyies
                           (pilapk, sseguro, fecha, cramo, cmodali, ccolect, ctipseg,
                            nmovimi, cmotmov, cmovseg, ccompani, mensaje,
                            fecha_envio, num_envio)
                    VALUES (npk, ssegur, :NEW.fmovimi, ramo, modalidad, colect, tipseg,
                            :NEW.nmovimi, :NEW.cmotmov, :NEW.cmovseg, codcomp, 'CESSGAPR',
                            NULL, NULL);
            EXCEPTION
               WHEN NO_DATA_FOUND THEN   --NO S'ENVIA
                  NULL;
            END;
         END IF;
      ELSIF t_producto = 'IT'
            AND situac = 7 THEN
         IF INSERTING THEN
            BEGIN
               SELECT ccompani
                 INTO codcomp
                 FROM companias_envios
                WHERE cramo = ramo
                  AND cmodali = modalidad
                  AND ctipseg = tipseg
                  AND ccolect = colect
                  AND mensaje = 'CESSGAPR';

               ----
               SELECT pilaout_seq.NEXTVAL
                 INTO npk
                 FROM DUAL;

               ----
               INSERT INTO pila_out_companyies
                           (pilapk, sseguro, fecha, cramo, cmodali, ccolect, ctipseg,
                            nmovimi, cmotmov, cmovseg, ccompani, mensaje,
                            fecha_envio, num_envio)
                    VALUES (npk, ssegur, :NEW.fmovimi, ramo, modalidad, colect, tipseg,
                            :NEW.nmovimi, :NEW.cmotmov, :NEW.cmovseg, codcomp, 'CESSGAPR',
                            NULL, NULL);
            EXCEPTION
               WHEN NO_DATA_FOUND THEN   --NO S'ENVIA
                  NULL;
            END;
         END IF;
      ELSIF t_producto IN('MAHc', 'MAHe', 'EDC', 'LOC', 'ACCc', 'ACCe') THEN
         IF situac < 7 THEN
            IF INSERTING THEN
               BEGIN
                  SELECT pilaout_seq.NEXTVAL
                    INTO npk
                    FROM DUAL;

                  ----
                  SELECT ccompani
                    INTO codcomp
                    FROM companias_envios
                   WHERE cramo = ramo
                     AND cmodali = modalidad
                     AND ctipseg = tipseg
                     AND ccolect = colect
                     AND mensaje = 'WIN_CES';

                  ----
                  INSERT INTO pila_out_companyies
                              (pilapk, sseguro, fecha, cramo, cmodali, ccolect, ctipseg,
                               nmovimi, cmotmov, cmovseg, ccompani, mensaje,
                               fecha_envio, num_envio)
                       VALUES (npk, ssegur, :NEW.fmovimi, ramo, modalidad, colect, tipseg,
                               :NEW.nmovimi, :NEW.cmotmov, :NEW.cmovseg, codcomp, 'WIN_CES',
                               NULL, NULL);
               EXCEPTION
                  WHEN NO_DATA_FOUND THEN   --NO S'ENVIA
                     NULL;
               END;
            END IF;
         END IF;
      ELSIF (UPDATING
             AND :NEW.femisio IS NOT NULL
             AND :OLD.femisio IS NULL)
            OR(INSERTING
               AND :NEW.femisio IS NOT NULL) THEN   -- Emissions
         ---
         FOR reg IN ecompa(ramo, modalidad, tipseg, colect) LOOP
            IF reg.mensaje = 'FSE0965S' THEN
               SELECT COUNT(*)
                 INTO nctrl
                 FROM tmp_ctrlseguros
                WHERE sseguro = :NEW.sseguro;
            ELSE
               nctrl := 0;
            END IF;

            ----
            IF nctrl = 0 THEN
               SELECT pilaout_seq.NEXTVAL
                 INTO npk
                 FROM DUAL;

               ----
               INSERT INTO pila_out_companyies
                           (pilapk, sseguro, fecha, cramo, cmodali, ccolect, ctipseg,
                            nmovimi, cmotmov, cmovseg, ccompani,
                            mensaje, fecha_envio, num_envio)
                    VALUES (npk, ssegur, :NEW.fmovimi, ramo, modalidad, colect, tipseg,
                            :NEW.nmovimi, :NEW.cmotmov, :NEW.cmovseg, reg.ccompani,
                            reg.mensaje, NULL, NULL);
            END IF;
         END LOOP;
      END IF;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END bi_movseguro_corr;








/
ALTER TRIGGER "AXIS"."BI_MOVSEGURO_CORR" DISABLE;
