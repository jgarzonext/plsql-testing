/* Formatted on 2019/07/02 07:48 (Formatter Plus v4.8.8) */
/
SELECT pac_contexto.f_inicializarctx
                                   (pac_parametros.f_parempresa_t (24,
                                                                   'USER_BBDD'
                                                                  )
                                   )
  FROM DUAL;
/

DECLARE
   CURSOR c_cid
   IS
      SELECT DISTINCT cidcfg, cform
                 FROM cfg_form
                WHERE cform = 'AXISCTR009';
BEGIN
   FOR i IN c_cid
   LOOP
      BEGIN
         INSERT INTO cfg_form_property
                     (cempres, cidcfg, cform, citem, cprpty, cvalue
                     )
              VALUES (24, i.cidcfg, i.cform, 'DOC_REQUERIDA', 1, 1
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            UPDATE cfg_form_property
               SET cvalue = 1
             WHERE cempres = 24
               AND cidcfg = i.cidcfg
               AND cform = i.cform
               AND citem = 'DOC_REQUERIDA'
               AND cprpty = 1;
      END;

      COMMIT;
   END LOOP;
END;
/

DECLARE
   CURSOR c_cid
   IS
      SELECT DISTINCT cidcfg, cform
                 FROM cfg_form
                WHERE cform = 'AXISCTR020';
BEGIN
   FOR i IN c_cid
   LOOP
      BEGIN
         INSERT INTO cfg_form_property
                     (cempres, cidcfg, cform, citem, cprpty, cvalue
                     )
              VALUES (24, i.cidcfg, i.cform, 'DOC_REQUERIDA', 1, 1
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            UPDATE cfg_form_property
               SET cvalue = 1
             WHERE cempres = 24
               AND cidcfg = i.cidcfg
               AND cform = i.cform
               AND citem = 'DOC_REQUERIDA'
               AND cprpty = 1;
      END;

      COMMIT;
   END LOOP;
END;
/

BEGIN
   INSERT INTO doc_coddocumento
               (cdocume, cusualt, falta, ccodplan
               )
        VALUES (1232, f_user, f_sysdate, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1232, 1, 'Contrato', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1232, 2, 'Contrato', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1232, 8, 'Contrato', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_coddocumento
               (cdocume, cusualt, falta, ccodplan
               )
        VALUES (1233, f_user, f_sysdate, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1233, 1, 'Contragarantía', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1233, 2, 'Contragarantía', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1233, 8, 'Contragarantía', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO codidocument
               (cdocument
               )
        VALUES (1234
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_coddocumento
               (cdocume, cusualt, falta, ccodplan
               )
        VALUES (1234, f_user, f_sysdate, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1234, 1, 'Consorcio', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1234, 2, 'Consorcio', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1234, 8, 'Consorcio', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO codidocument
               (cdocument
               )
        VALUES (1235
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_coddocumento
               (cdocume, cusualt, falta, ccodplan
               )
        VALUES (1235, f_user, f_sysdate, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1235, 1, 'Coaseguro', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1235, 2, 'Coaseguro', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1235, 8, 'Coaseguro', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO codidocument
               (cdocument
               )
        VALUES (1236
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_coddocumento
               (cdocume, cusualt, falta, ccodplan
               )
        VALUES (1236, f_user, f_sysdate, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1236, 1, 'Pago - Constancia', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1236, 2, 'Pago- Constancia', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO doc_desdocumento
               (cdocume, cidioma, ttitdoc, tdocume
               )
        VALUES (1236, 8, 'Pago- Constancia', 'Poliza'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc
        FROM v_productos
       WHERE cramo = 801 AND cactivo = 1;

   CURSOR c_doc
   IS
      SELECT cdocume
        FROM doc_coddocumento
       WHERE cdocume = 1232;
BEGIN
   FOR i IN c_prod
   LOOP
      FOR j IN c_doc
      LOOP
         DELETE      doc_docurequerida
               WHERE cdocume = j.cdocume AND sproduc = i.sproduc;

         INSERT INTO doc_docurequerida
                     (cdocume, sproduc, cactivi, norden, ctipdoc, cclase,
                      tfuncio, cmotmov, cobligedox, ctipdest, cusualt, falta
                     )
              VALUES (j.cdocume, i.sproduc, 0, 1, 2, 1,
                      NULL, 100, 0, 1, f_user, f_sysdate
                     );
      END LOOP;
   END LOOP;
END;
/

DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc
        FROM v_productos
       WHERE cramo = 802 AND cactivo = 1;

   CURSOR c_doc
   IS
      SELECT cdocume
        FROM doc_coddocumento
       WHERE cdocume > 1232;
BEGIN
   FOR i IN c_prod
   LOOP
      FOR j IN c_doc
      LOOP
         DELETE      doc_docurequerida
               WHERE cdocume = j.cdocume AND sproduc = i.sproduc;

         INSERT INTO doc_docurequerida
                     (cdocume, sproduc, cactivi, norden, ctipdoc, cclase,
                      tfuncio, cmotmov, cobligedox, ctipdest, cusualt, falta
                     )
              VALUES (j.cdocume, i.sproduc, 0, 1, 1, 1,
                      NULL, 100, 0, 1, f_user, f_sysdate
                     );
      END LOOP;
   END LOOP;
END;
/

COMMIT ;
DELETE      parempresas
      WHERE cparam = 'PRODUCE_REQUERIDA';
INSERT INTO parempresas
            (cempres, cparam, nvalpar, tvalpar, fvalpar
            )
     VALUES (24, 'PRODUCE_REQUERIDA', 1, NULL, NULL
            );
COMMIT ;
/
UPDATE garanpro
   SET cbasica = 1,
       ctipgar = 2
 WHERE cramo = 802
   AND cmodali = 1
   AND cactivi = 0
   AND cgarant IN (7037, 7057)
   AND cgardep IS NULL;

UPDATE garanpro
   SET cbasica = 1,
       ctipgar = 4
 WHERE cramo = 802
   AND cmodali = 1
   AND cactivi = 0
   AND cgarant IN (7037, 7057)
   AND cgardep IS NOT NULL;

UPDATE garanpro
   SET cbasica = NULL
 WHERE cramo = 802
   AND cmodali = 1
   AND cactivi = 0
   AND cgarant NOT IN (7037, 7057);


UPDATE garanpro
   SET cbasica = 1,
       ctipgar = 2
 WHERE cramo = 802
   AND cmodali = 1
   AND cactivi = 1
   AND cgardep IS NULL
   AND cgarant IN (7030, 7050);

UPDATE garanpro
   SET cbasica = 1,
       ctipgar = 4
 WHERE cramo = 802
   AND cmodali = 1
   AND cactivi = 1
   AND cgardep IS NOT NULL
   AND cgarant IN (7030, 7050);

UPDATE garanpro
   SET cbasica = NULL
 WHERE cramo = 802
   AND cmodali = 1
   AND cactivi = 1
   AND cgarant NOT IN (7030, 7050);

COMMIT ;
/

DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc, cramo, cmodali, ctipseg, ccolect, cdivisa
       FROM productos
       WHERE cramo = 802 AND cactivo = 1;
BEGIN
   FOR i IN c_prod
   LOOP
      BEGIN
         INSERT INTO imprec
                     (cconcep, nconcep, cempres, cforpag, cramo,
                      cmodali, ctipseg, ccolect, cactivi, cgarant,
                      finivig,
                      ffinvig, ctipcon, nvalcon, cfracci, cbonifi, crecfra,
                      climite, cmoneda, cderreg
                     )
              VALUES (86, (SELECT MAX (nconcep) + 1
                             FROM imprec), 24, NULL, i.cramo,
                      i.cmodali, i.ctipseg, i.ccolect, NULL, NULL,
                      TO_DATE ('12/31/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                      NULL, 10, 16562, 1, 0, 1,
                      NULL, i.cdivisa, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;

      BEGIN
         INSERT INTO imprec
                     (cconcep, nconcep, cempres, cforpag, cramo, cmodali,
                      ctipseg, ccolect, cactivi, cgarant,
                      finivig,
                      ffinvig, ctipcon, nvalcon, cfracci, cbonifi, crecfra,
                      climite, cmoneda, cderreg
                     )
              VALUES (4, (SELECT MAX (nconcep) + 1
                             FROM imprec), 24, NULL, i.cramo, i.cmodali,
                      i.ctipseg, i.ccolect, NULL, NULL,
                      TO_DATE ('12/31/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'),
                      NULL, 5, 16562, 1, 0, 0,
                      NULL, i.cdivisa, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
   END LOOP;

   COMMIT;
END;
/