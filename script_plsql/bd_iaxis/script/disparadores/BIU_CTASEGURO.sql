--------------------------------------------------------
--  DDL for Trigger BIU_CTASEGURO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIU_CTASEGURO" 
   BEFORE UPDATE OR INSERT
   ON ctaseguro
   FOR EACH ROW
DECLARE
   importe        NUMBER;
   partis         NUMBER;
   numunidades    NUMBER;
   tipo           NUMBER;
   err            NUMBER;
   empleo         NUMBER;
   producto       NUMBER;
   salir          EXCEPTION;
   tipotras       NUMBER;
   v_cagrpro      NUMBER;
BEGIN
   IF DELETING THEN
      SELECT cagrpro
        INTO v_cagrpro
        FROM seguros
       WHERE sseguro = :OLD.sseguro;
   ELSE
      SELECT cagrpro
        INTO v_cagrpro
        FROM seguros
       WHERE sseguro = :NEW.sseguro;
   END IF;

   IF :NEW.cmovimi IN(0, 54) THEN
      RAISE salir;
   END IF;

   -- 12442.NMM.31/12/2009.i.
   /*IF v_cagrpro = 11  THEN
      SELECT sproduc
        INTO Producto
        FROM seguros
       WHERE sseguro = :NEW.sseguro;

      err := F_Parproductos (Producto, 'PPEMPLEO', empleo);
      -- sI LA PRESTACIÓN ES VITALICIA EL SALDO ES NULO.
      tipo := 0;

      IF :NEW.cmovimi = 53
      THEN
         BEGIN
            SELECT ctipcap
              INTO tipo
              FROM irpf_prestaciones
             WHERE sidepag = :NEW.sidepag;
         EXCEPTION
            WHEN OTHERS
            THEN
               NULL;
         END;
      END IF;

      IF :NEW.cmovimi <> 53
      THEN
         IF empleo = 1 AND :NEW.ctipapor = 'SP'
         THEN                                           --> Servicios pasados
            SELECT nvalparsp
              INTO partis
              FROM promotores, seguros, proplapen
             WHERE seguros.sseguro = :NEW.sseguro
               AND seguros.sproduc = proplapen.sproduc
               AND proplapen.ccodpla = promotores.ccodpla;

            IF partis IS NULL
            THEN
               BEGIN
                  SELECT ivalorp
                    INTO partis
                    FROM valparpla, seguros, proplapen
                   WHERE seguros.sseguro = :NEW.sseguro
                     AND seguros.sproduc = proplapen.sproduc
                     AND valparpla.ccodpla = proplapen.ccodpla
                     AND TO_CHAR (fvalora, 'DDMMYYYY') =
                                            TO_CHAR (:NEW.fvalmov, 'DDMMYYYY');
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     partis := -1;
               END;
            END IF;
         ELSE
            IF :NEW.ctipapor = 'P'
            THEN                                   --> APORTACIONES DE PRIMAS
               numunidades := 0;
               --Para las aportaciones de primas no se han de tener en cuenta
               --las participaciones, por lo que nparpla = 0
               :NEW.fasign := TRUNC (F_Sysdate);
               :NEW.cestpar := 1;
            ELSE
               BEGIN
                  SELECT ivalorp
                    INTO partis
                    FROM valparpla, seguros, proplapen
                   WHERE seguros.sseguro = :NEW.sseguro
                     AND seguros.sproduc = proplapen.sproduc
                     AND valparpla.ccodpla = proplapen.ccodpla
                     AND TO_CHAR (fvalora, 'DDMMYYYY') =
                                            TO_CHAR (:NEW.fvalmov, 'DDMMYYYY');
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     partis := -1;
               END;
            END IF;
         END IF;

         IF partis <> -1
         THEN
            numunidades := ROUND (ROUND (:NEW.imovimi, 2) / partis, 6);
            :NEW.fasign := TRUNC (F_Sysdate);
            :NEW.cestpar := 1;
         END IF;

         IF :NEW.cmovimi = 47
         THEN
            --> Los trapasos de salida no calculamos las partis
            SELECT ctiptras
              INTO tipotras
              FROM trasplainout
             WHERE sseguro = :NEW.sseguro AND nnumlin = :NEW.nnumlin;

            IF tipotras <> 1
            THEN
               :NEW.nparpla := numunidades;
            END IF;
         ELSE
            :NEW.nparpla := numunidades;
         END IF;
      END IF;

      IF INSERTING  THEN
         :NEW.ffecmov := F_Sysdate;
      END IF;
   END IF;*/
   -- 12442.NMM.31/12/2009.f.
   :NEW.imovimi := ABS(:NEW.imovimi);
   :NEW.imovim2 := ABS(:NEW.imovim2);
   :NEW.nparpla := ABS(:NEW.nparpla);
EXCEPTION
   WHEN salir THEN   --> nO HACEMOS NADA
      NULL;
   WHEN OTHERS THEN
      NULL;
END biu_ctaseguro;









/
ALTER TRIGGER "AXIS"."BIU_CTASEGURO" ENABLE;
