/* Formatted on 13/11/2018 17:00 (Formatter Plus v.1.0)*/
/* **************************** 13/11/2018 17:00 **********************************************************************
Versión           Descripción
01.               -Se configura el parámetro por producto DUMMY_REC para permitir crear un recibo de muestra no contabilizado
                  -que permitirá saber el tipo de recibo que finalmente se creará y se contabilizará.
IAXIS-7179         13/11/2018 Daniel Rodríguez
***********************************************************************************************************************/
--
BEGIN
  -- Configuración del parámetro por producto DUMMY_REC
  DELETE FROM parproductos WHERE sproduc IN (80001,80002,80003,80004,80005,80006,80007,80008,80009,80010,80011,80012,80038,80039,80040,80041,80042,80043,80044) AND cparpro = 'DUMMY_REC';
  DELETE FROM desparam WHERE cparam = 'DUMMY_REC';
  DELETE FROM codparam WHERE cparam = 'DUMMY_REC';
  --
  INSERT INTO codparam (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
  VALUES ('DUMMY_REC', 1, 2, 'GEN', 0, 0, null, 1);
  --
  INSERT INTO desparam (CPARAM, CIDIOMA, TPARAM)
  VALUES ('DUMMY_REC', 1, 'Indica si per la transacció sha de crear un rebut de mostra per identificar el seu tipus i fijárselo a lreal');
  --
  INSERT INTO desparam (CPARAM, CIDIOMA, TPARAM)
  VALUES ('DUMMY_REC', 2, 'Indica si para la transacción se debe crear un recibo de muestra para identificar su tipo y fijárselo al real.');
  --
  INSERT INTO desparam (CPARAM, CIDIOMA, TPARAM)
  VALUES ('DUMMY_REC', 8, 'Indica si para la transacción se debe crear un recibo de muestra para identificar su tipo y fijárselo al real.');
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80001, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80002, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80003, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80004, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80005, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80006, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80007, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80008, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80009, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80010, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80011, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80012, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80038, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80039, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80040, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80041, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80042, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80043, 'DUMMY_REC', 1, null, null, null);
  --
  INSERT INTO parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
  VALUES (80044, 'DUMMY_REC', 1, null, null, null);
  --
  COMMIT;
  -- 
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    dbms_output.put_line('Error mientras se insertaba un nuevo parámetro por producto: ' || SQLERRM);
    -- 
END;
/ 
