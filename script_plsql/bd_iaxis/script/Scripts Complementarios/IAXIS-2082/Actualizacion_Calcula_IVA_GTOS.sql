/* Actualización garantias del producto subsidio familiar */
UPDATE GARANPRO
SET CIMPIPS = 1, 
CDERREG = 1
WHERE SPRODUC = 80011
AND CGARANT IN (7017,7018);
COMMIT;