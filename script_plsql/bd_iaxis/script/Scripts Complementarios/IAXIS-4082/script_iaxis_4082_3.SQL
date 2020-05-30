/* Formatted on 2019/08/22 16:45 (Formatter Plus v4.8.8) */
BEGIN
   INSERT INTO cfg_avisos
               (cempres, cform, cmodo, ccfgavis, cramo, sproduc,
                cidrel, cusuari, falta, cusumod, fmodifi
               )
        VALUES (24, 'AXISCTR004', 'ALTA_POLIZA', 'CFG_FO', 802, 80038,
                733708, f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO cfg_avisos
               (cempres, cform, cmodo, ccfgavis, cramo, sproduc,
                cidrel, cusuari, falta, cusumod, fmodifi
               )
        VALUES (24, 'AXISCTR004', 'ALTA_POLIZA', 'CFG_CENTRAL', 802, 80038,
                733708, f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO cfg_avisos
               (cempres, cform, cmodo, ccfgavis, cramo, sproduc,
                cidrel, cusuari, falta, cusumod, fmodifi
               )
        VALUES (24, 'AXISCTR004', 'ALTA_POLIZA', 'CFG_FO', 802, 80039,
                733708, f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO cfg_avisos
               (cempres, cform, cmodo, ccfgavis, cramo, sproduc,
                cidrel, cusuari, falta, cusumod, fmodifi
               )
        VALUES (24, 'AXISCTR004', 'ALTA_POLIZA', 'CFG_CENTRAL', 802, 80039,
                733708, f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO cfg_avisos
               (cempres, cform, cmodo, ccfgavis, cramo, sproduc,
                cidrel, cusuari, falta, cusumod, fmodifi
               )
        VALUES (24, 'AXISCTR004', 'ALTA_POLIZA', 'CFG_FO', 802, 80040,
                733708, f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO cfg_avisos
               (cempres, cform, cmodo, ccfgavis, cramo, sproduc,
                cidrel, cusuari, falta, cusumod, fmodifi
               )
        VALUES (24, 'AXISCTR004', 'ALTA_POLIZA', 'CFG_CENTRAL', 802, 80040,
                733708, f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO cfg_avisos
               (cempres, cform, cmodo, ccfgavis, cramo, sproduc,
                cidrel, cusuari, falta, cusumod, fmodifi
               )
        VALUES (24, 'AXISCTR004', 'ALTA_POLIZA', 'CFG_FO', 802, 80041,
                733708, f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO cfg_avisos
               (cempres, cform, cmodo, ccfgavis, cramo, sproduc,
                cidrel, cusuari, falta, cusumod, fmodifi
               )
        VALUES (24, 'AXISCTR004', 'ALTA_POLIZA', 'CFG_CENTRAL', 802, 80041,
                733708, f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO cfg_avisos
               (cempres, cform, cmodo, ccfgavis, cramo, sproduc,
                cidrel, cusuari, falta, cusumod, fmodifi
               )
        VALUES (24, 'AXISCTR004', 'ALTA_POLIZA', 'CFG_FO', 802, 80042,
                733708, f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO cfg_avisos
               (cempres, cform, cmodo, ccfgavis, cramo, sproduc,
                cidrel, cusuari, falta, cusumod, fmodifi
               )
        VALUES (24, 'AXISCTR004', 'ALTA_POLIZA', 'CFG_CENTRAL', 802, 80042,
                733708, f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO cfg_avisos
               (cempres, cform, cmodo, ccfgavis, cramo, sproduc,
                cidrel, cusuari, falta, cusumod, fmodifi
               )
        VALUES (24, 'AXISCTR004', 'ALTA_POLIZA', 'CFG_FO', 802, 80043,
                733708, f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO cfg_avisos
               (cempres, cform, cmodo, ccfgavis, cramo, sproduc,
                cidrel, cusuari, falta, cusumod, fmodifi
               )
        VALUES (24, 'AXISCTR004', 'ALTA_POLIZA', 'CFG_CENTRAL', 802, 80043,
                733708, f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin

INSERT INTO axis_codliterales
               (slitera, clitera
               )
        VALUES (89907050, 2
               );
               EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin
Insert into AXIS_LITERALES
   (CIDIOMA, SLITERA, TLITERA)
 Values
   (1, 89907050, 'Verificar la pregunta 2913 -> Conveni grans beneficiaris. Ha de correspondre amb lagent i NIT del contractista seleccionats');
   EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin
Insert into AXIS_LITERALES
   (CIDIOMA, SLITERA, TLITERA)
 Values
   (2, 89907050, 'Verificar la pregunta 2913 --> Convenio grandes beneficiarios. Debe corresponder con el Agente y al NIT del Contratante seleccionados');
   EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin
Insert into AXIS_LITERALES
   (CIDIOMA, SLITERA, TLITERA)
 Values
   (8, 89907050, 'Verificar la pregunta 2913 --> Convenio grandes beneficiarios. Debe corresponder con el Agente y al NIT del Contratante seleccionados');
   EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

COMMIT;
/
begin
Insert into CFG_REL_AVISOS
   (CEMPRES, CIDREL, CAVISO, CBLOQUEO, NORDEN, 
    CUSUARI, FALTA)
 Values
   (24, 733708, 733719, 1, 1, 
    f_user, f_sysdate);
COMMIT;
 EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin
Insert into CODPARAM
   (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, 
    COBLIGA, TDEFECTO, CVISIBLE)
 Values
   ('CONV_CONTRATANTE', 1, 2, 'GEN', 201, 
    0, NULL, 1);
COMMIT;
 EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin
Insert into DESPARAM
   (CPARAM, CIDIOMA, TPARAM)
 Values
   ('CONV_CONTRATANTE', 1, 'Parametre convenio Contratante RC');
   COMMIT;
 EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin
Insert into DESPARAM
   (CPARAM, CIDIOMA, TPARAM)
 Values
   ('CONV_CONTRATANTE', 2, 'Parametre convenio Contratante RC');
   COMMIT;
 EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin
Insert into DESPARAM
   (CPARAM, CIDIOMA, TPARAM)
 Values
   ('CONV_CONTRATANTE', 8, 'Parametre convenio Contratante RC');
   COMMIT;
 EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin

Insert into PARPRODUCTOS
   (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, 
    FVALPAR)
 Values
   (80038, 'CONV_CONTRATANTE', 1, NULL, NULL, 
    NULL);
COMMIT;
 EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin
Insert into PARPRODUCTOS
   (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, 
    FVALPAR)
 Values
   (80039, 'CONV_CONTRATANTE', 1, NULL, NULL, 
    NULL);
COMMIT;
 EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin
Insert into PARPRODUCTOS
   (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, 
    FVALPAR)
 Values
   (80040, 'CONV_CONTRATANTE', 1, NULL, NULL, 
    NULL);
COMMIT;
 EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin
Insert into PARPRODUCTOS
   (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, 
    FVALPAR)
 Values
   (80041, 'CONV_CONTRATANTE', 1, NULL, NULL, 
    NULL);
COMMIT;
 EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin
Insert into PARPRODUCTOS
   (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, 
    FVALPAR)
 Values
   (80042, 'CONV_CONTRATANTE', 1, NULL, NULL, 
    NULL);
COMMIT;
 EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin
Insert into PARPRODUCTOS
   (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, 
    FVALPAR)
 Values
   (80043, 'CONV_CONTRATANTE', 1, NULL, NULL, 
    NULL);
COMMIT;
 EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
declare
cursor c_prod is
select cmodali, ccolect, cramo, ctipseg,
                      sproduc from productos
                      where sproduc in (80038,80039,80040,80041,80042,80043);
begin
for i in c_prod loop


BEGIN
         INSERT INTO pregunpro
                     (cpregun, cmodali, ccolect, cramo, ctipseg,
                      sproduc, cpretip, npreord,
                      tprefor, cpreobl, npreimp,
                      cresdef, cofersn, ctabla, tvalfor, cmodo, cnivel,
                      ctarpol, cvisible, esccero, visiblecol, visiblecert,
                      crecarg, ccalcular, tmodalidad, ctipconv
                     )
              VALUES (6556, i.cmodali, i.ccolect, i.cramo, i.ctipseg,
                      i.sproduc, 2, 16,
                      'pac_propio_albsgt_conf.f_recupera_comision()', 1, 6,
                      NULL, 1, NULL, NULL, 'T', 'R',
                      1, 2, 0, 1, 1,
                      0, 1, NULL, NULL
                     );

         COMMIT;
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;


end loop;
end;
/