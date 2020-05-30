/* Formatted on 2019/12/02 17:00 (Formatter Plus v4.8.8) */
BEGIN
   INSERT INTO codparam
               (cparam, cutili, ctipo, cgrppar, norden, cobliga, tdefecto,
                cvisible
               )
        VALUES ('MATAR_PERSONA_SINIE', 4, 2, 'GEN', 1367, 0, NULL,
                1
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO parempresas
               (cempres, cparam, nvalpar, tvalpar, fvalpar
               )
        VALUES (24, 'MATAR_PERSONA_SINIE', NULL, 0, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   UPDATE parproductos
      SET cvalpar = 0
    WHERE cparpro = 'POST_ANULACION';
END;
/

BEGIN
   UPDATE eco_codmonedas
      SET bdefecto = 0
    WHERE cmoneda <> 'COP' AND bdefecto = 1;
END;
/

COMMIT ;