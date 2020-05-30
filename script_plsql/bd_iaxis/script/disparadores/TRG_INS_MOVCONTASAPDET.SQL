/******************************************************************************
     NOMBRE:     TRG_INS_MOVCONTASAPDET
     PROPÓSITO:  

     REVISIONES:
     Ver        Fecha        Autor             Descripción
     ---------  ----------  ---------------  ------------------------------------
     1.0        02/09/2019   ECP             1.0  IAXIS-5149. Verificación por qué no se esta ejecutando el proceso de cancelación por no pago.
      ******************************************************************************/
CREATE OR REPLACE TRIGGER TRG_INS_MOVCONTASAPDET
  AFTER INSERT ON MOVSEGURO
  FOR EACH ROW
  WHEN (NEW.CMOVSEG IN (3, 52, 53))

DECLARE
   p_agente        NUMBER;
   p_nmovimi       NUMBER;
   p_tipcoa        NUMBER;
   p_tiprec        NUMBER;
   p_evento        VARCHAR2 (20) := 'PRODUCCION';
   p_estrec        NUMBER;
   p_recibo        NUMBER;
   p_valortiprec   VARCHAR2 (4);
BEGIN
--Ini IAXIS-5149 -- ECP -- 30/08/2019
   BEGIN
      SELECT nrecibo, cagente, nmovimi, ctipcoa, ctiprec
        INTO p_recibo, p_agente, p_nmovimi, p_tipcoa, p_tiprec
        FROM recibos
       WHERE sseguro = :NEW.sseguro AND nmovimi = :NEW.nmovimi;
   EXCEPTION
      WHEN NO_DATA_FOUND
      THEN
         SELECT nrecibo, cagente, nmovimi, ctipcoa, ctiprec
           INTO p_recibo, p_agente, p_nmovimi, p_tipcoa, p_tiprec
           FROM recibos
          WHERE sseguro = :NEW.sseguro
            AND nmovimi =
                     (SELECT MAX (nmovimi)
                        FROM recibos
                       WHERE sseguro = :NEW.sseguro AND nmovimi <=
                                                                  :NEW.nmovimi);
   END;
--Fin IAXIS-5149 -- ECP -- 30/08/2019
   IF :NEW.cmovseg = 52
   THEN
      IF p_tiprec = 1
      THEN
         SELECT cestrec
           INTO p_estrec
           FROM movrecibo
          WHERE nrecibo = p_recibo AND cmotmov = 52;

         IF p_estrec = 2
         THEN
            p_valortiprec := '1522';

            INSERT INTO movcontasap
                        (nrecibo, cagente, nmovimi, sseguro,
                         ctipcoa, ctiprec, evento
                        )
                 VALUES (p_recibo, p_agente, :NEW.nmovimi, :NEW.sseguro,
                         p_tipcoa, p_valortiprec, p_evento
                        );
         END IF;
      ELSIF p_tiprec = 9
      THEN
         SELECT cestrec
           INTO p_estrec
           FROM movrecibo
          WHERE nrecibo = p_recibo AND cmotmov = 9;

         IF p_estrec = 2
         THEN
            p_valortiprec := '9522';

            INSERT INTO movcontasap
                        (nrecibo, cagente, nmovimi, sseguro,
                         ctipcoa, ctiprec, evento
                        )
                 VALUES (p_recibo, p_agente, :NEW.nmovimi, :NEW.sseguro,
                         p_tipcoa, p_valortiprec, p_evento
                        );
         END IF;
      END IF;
   ELSIF :NEW.cmovseg = 3
   THEN
      IF p_tiprec = 9
      THEN
         SELECT cestrec
           INTO p_estrec
           FROM movrecibo
          WHERE nrecibo = p_recibo AND cmotmov = 3;

         IF p_estrec = 2
         THEN
            p_valortiprec := '9032';

            INSERT INTO movcontasap
                        (nrecibo, cagente, nmovimi, sseguro,
                         ctipcoa, ctiprec, evento
                        )
                 VALUES (p_recibo, p_agente, :NEW.nmovimi, :NEW.sseguro,
                         p_tipcoa, p_valortiprec, p_evento
                        );
         END IF;
      END IF;
   ELSIF :NEW.cmovseg = 53
   --Ini IAXIS-5149 -- ECP -- 30/08/2019
   THEN
      IF p_tiprec = 0
      THEN
         SELECT cestrec
           INTO p_estrec
           FROM movrecibo
          WHERE nrecibo = p_recibo;

         --IF p_estrec = 2
         --THEN
            p_valortiprec := '9532';

            INSERT INTO movcontasap
                        (nrecibo, cagente, nmovimi, sseguro,
                         ctipcoa, ctiprec, evento
                        )
                 VALUES (p_recibo, p_agente, :NEW.nmovimi, :NEW.sseguro,
                         p_tipcoa, p_valortiprec, p_evento
                        );
         --END IF;
      END IF;
      --Fin IAXIS-5149 -- ECP -- 30/08/2019
   END IF;
END;
/

