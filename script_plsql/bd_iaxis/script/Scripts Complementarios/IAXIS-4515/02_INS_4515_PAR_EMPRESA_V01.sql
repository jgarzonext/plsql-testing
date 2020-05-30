-- PAREMPRESAS
DELETE parempresas p
 WHERE p.cempres = 24
   AND p.cparam = 'TOLERANCIA_COP';
   
-- DESPARAM
DELETE desparam d WHERE d.cparam = 'TOLERANCIA_COP';

-- CODPARAM
DELETE codparam c WHERE c.cparam = 'TOLERANCIA_COP';
-- INSERT
INSERT INTO codparam
  (cparam, cutili, ctipo, cgrppar, norden, cobliga, tdefecto, cvisible)
VALUES
  ('TOLERANCIA_COP', '5', '2', 'GEN', '200', '0', NULL, '1');
  
INSERT INTO desparam
  (cparam, cidioma, tparam)
VALUES
  ('TOLERANCIA_COP', '1', 'Tolerancia en pesos para los productos de moneda extranjera');

INSERT INTO desparam
  (cparam, cidioma, tparam)
VALUES
  ('TOLERANCIA_COP', '2', 'Tolerancia en pesos para los productos de moneda extranjera');

INSERT INTO desparam
  (cparam, cidioma, tparam)
VALUES
  ('TOLERANCIA_COP', '8', 'Tolerancia en pesos para los productos de moneda extranjera');

INSERT INTO parempresas (cempres, cparam, nvalpar, tvalpar, fvalpar) VALUES ('24', 'TOLERANCIA_COP', '100', NULL, NULL);

COMMIT
/
