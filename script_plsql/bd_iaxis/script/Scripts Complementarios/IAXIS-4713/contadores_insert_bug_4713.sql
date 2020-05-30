DELETE FROM contadores WHERE  ccontad = '0180012' AND ncontad=1;
DELETE FROM contadores WHERE  ccontad = '0180038' AND ncontad=1;
DELETE FROM contadores WHERE  ccontad = '0180039' AND ncontad=1;
DELETE FROM contadores WHERE  ccontad = '0180040' AND ncontad=1;
DELETE FROM contadores WHERE  ccontad = '0180041' AND ncontad=1;
DELETE FROM contadores WHERE  ccontad = '0180042' AND ncontad=1;
DELETE FROM contadores WHERE  ccontad = '0180043' AND ncontad=1;
DELETE FROM contadores WHERE  ccontad = '0180044' AND ncontad=1;


INSERT INTO contadores  (ccontad, ncontad) VALUES ('0180044',1);
INSERT INTO contadores  (ccontad, ncontad) VALUES ('0180043',1);
INSERT INTO contadores  (ccontad, ncontad) VALUES ('0180042',1);
INSERT INTO contadores  (ccontad, ncontad) VALUES ('0180041',1);
INSERT INTO contadores  (ccontad, ncontad) VALUES ('0180040',1);
INSERT INTO contadores  (ccontad, ncontad) VALUES ('0180039',1);
INSERT INTO contadores  (ccontad, ncontad) VALUES ('0180038',1);
INSERT INTO contadores  (ccontad, ncontad) VALUES ('0180012',1);




COMMIT;