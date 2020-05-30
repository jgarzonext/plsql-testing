-- Operaciones en moneda extranjera
DELETE FROM detvalores d WHERE d.cvalor = 8002014 AND d.cidioma IN (1,2,8) AND d.catribu IN (1,2,3,4,5,6);
DELETE FROM valores v WHERE v.cvalor = 8002014 AND v.cidioma IN (1,2,8);
--
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (8002014, 1, 'Operacions moneda estrangera');
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (8002014, 2, 'Operaciones moneda extranjera');
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (8002014, 8, 'Operaciones moneda extranjera');
--
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 1, 1, 'Importaciones');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 1, 2, 'Exportacions');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 1, 3, 'Inversions');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 1, 4, 'Girs');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 1, 5, 'Préstecs');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 1, 6, 'Altres');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 2, 1, 'Importaciones');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 2, 2, 'Exportaciones');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 2, 3, 'Inversiones');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 2, 4, 'Giros');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 2, 5, 'Préstamos');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 2, 6, 'Otras');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 8, 1, 'Importaciones');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 8, 2, 'Exportaciones');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 8, 3, 'Inversiones');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 8, 4, 'Giros');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 8, 5, 'Préstamos');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002014, 8, 6, 'Otras');
-- Tipo de empresa sarlaft
DELETE FROM detvalores d WHERE d.cvalor = 8002015 AND d.cidioma IN (1,2,8) AND d.catribu IN (1,2,3,4,5,6,7);
DELETE FROM valores v WHERE v.cvalor = 8002015 AND v.cidioma IN (1,2,8);
--
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (8002015, 1, 'Tipus d empresa SARLAFT');
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (8002015, 2, 'Tipo de empresa SARLAFT');
INSERT INTO valores (CVALOR, CIDIOMA, TVALOR) VALUES (8002015, 8, 'Tipo de empresa SARLAFT');
--
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 1, 1, 'Mixta');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 1, 2, 'Oficina de representació');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 1, 3, 'Privada');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 1, 4, 'Pública');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 1, 5, 'Sense ànim de lucre');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 1, 6, 'Societat estrangera');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 1, 7, 'Altra');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 2, 1, 'Mixta');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 2, 2, 'Oficina de representación');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 2, 3, 'Privada');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 2, 4, 'Pública');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 2, 5, 'Sin ánimo de lucro');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 2, 6, 'Sociedad extranjera');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 2, 7, 'Otra');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 8, 1, 'Mixta');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 8, 2, 'Oficina de representación');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 8, 3, 'Privada');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 8, 4, 'Pública');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 8, 5, 'Sin ánimo de lucro');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 8, 6, 'Sociedad extranjera');
INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) VALUES (8002015, 8, 7, 'Otra');
-- Sector de la economía
DELETE FROM detvalores d WHERE d.cvalor = 790002 AND d.cidioma IN (1,2,8);
--
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 1, 1, 'Agropecuari');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 1, 2, 'Comerç');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 1, 3, 'Construcció');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 1, 4, 'Financer');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 1, 5, 'Industrial');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 1, 6, 'Miner I Energètic');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 1, 7, 'Serveis');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 1, 8, 'Solidari');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 1, 9, 'Transport');
--
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 2, 1, 'Agropecuario');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 2, 2, 'Comercio');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 2, 3, 'Construcción');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 2, 4, 'Financiero');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 2, 5, 'Industrial');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 2, 6, 'Minero Y Energético');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 2, 7, 'Servicios');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 2, 8, 'Solidario');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 2, 9, 'Transporte');
--
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 8, 1, 'Agropecuario');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 8, 2, 'Comercio'); 
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 8, 3, 'Construcción');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 8, 4, 'Financiero');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 8, 5, 'Industrial');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 8, 6, 'Minero Y Energético');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 8, 7, 'Servicios');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 8, 8, 'Solidario');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU) values (790002, 8, 9, 'Transporte');
--
COMMIT;
/
