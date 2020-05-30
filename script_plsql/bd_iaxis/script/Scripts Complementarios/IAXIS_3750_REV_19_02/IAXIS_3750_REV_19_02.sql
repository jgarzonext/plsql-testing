select pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD')) FROM dual;
/
declare


begin
    
--  
  DELETE parproductos WHERE cparpro = 'AVISO_USF_F' AND sproduc in (80007, 80008);
  DELETE desparam WHERE cparam = 'AVISO_USF_F';
  DELETE codparam WHERE cparam = 'AVISO_USF_F';

  INSERT INTO codparam (cparam, cutili, ctipo, cgrppar, cobliga, tdefecto, cvisible) VALUES ('AVISO_USF_F', 1, 2, 'GEN', 0, 0, 1);

  INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('AVISO_USF_F', 1, 'Aviso usf fijo valor mayor indicado ');
  INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('AVISO_USF_F', 2, 'Aviso usf fijo valor mayor indicado');
  INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('AVISO_USF_F', 8, 'Aviso usf fijo valor mayor indicado');

  INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80007, 'AVISO_USF_F', 1);
  INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80008, 'AVISO_USF_F', 1);
  

--  
  DELETE parproductos WHERE cparpro = 'AVISO_USF' AND sproduc IN(80001, 80002, 80003, 80004,80005, 80006, 80009, 80010, 80011, 80012);
  DELETE desparam WHERE cparam = 'AVISO_USF';
  DELETE codparam WHERE cparam = 'AVISO_USF';

  INSERT INTO codparam (cparam, cutili, ctipo, cgrppar, cobliga, tdefecto, cvisible) VALUES ('AVISO_USF', 1, 2, 'GEN', 0, 0, 1);

  INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('AVISO_USF', 1, 'Aviso usf valor mayor indicado');
  INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('AVISO_USF', 2, 'Aviso usf valor mayor indicado');
  INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('AVISO_USF', 8, 'Aviso usf valor mayor indicado');

  INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80001, 'AVISO_USF', 1);
  INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80002, 'AVISO_USF', 1);
        INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80003, 'AVISO_USF', 1);
  INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80004, 'AVISO_USF', 1);
    INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80005, 'AVISO_USF', 1);
        INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80006, 'AVISO_USF', 1);
  INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80011, 'AVISO_USF', 1);
  INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80012, 'AVISO_USF', 1);
        INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80009, 'AVISO_USF', 1);
  INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80010, 'AVISO_USF', 1);


delete PROD_PLANT_CAB
where ccodplan like 'CONF_BUREAU_GENERICA';

delete  detplantillas
where ccodplan like 'CONF_BUREAU_GENERICA';

delete  codiplantillas
where ccodplan like 'CONF_BUREAU_GENERICA';
   
 commit;
 
end;
