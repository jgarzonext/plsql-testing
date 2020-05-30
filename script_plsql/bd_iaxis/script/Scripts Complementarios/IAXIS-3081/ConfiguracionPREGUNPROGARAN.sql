/*Campo "Valor Asegurado Fijo" es obligatorio para el producto Subsidio Familiar de Vivienda */
UPDATE PREGUNPROGARAN
SET CPREOBL = 1
WHERE CPREGUN = 2893
AND SPRODUC = 80011;
COMMIT;