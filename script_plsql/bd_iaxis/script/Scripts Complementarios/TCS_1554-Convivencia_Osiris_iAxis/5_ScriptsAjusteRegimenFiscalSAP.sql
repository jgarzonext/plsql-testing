DELETE REGIMEN_FISCAL;
DELETE DETVALORES
WHERE CVALOR = '1045'; 
COMMIT;

INSERT INTO DETVALORES VALUES (1045,1,1,'Régimen Común');
INSERT INTO DETVALORES VALUES (1045,1,2,'Régimen Simplificado');
INSERT INTO DETVALORES VALUES (1045,1,3,'Régimen Gran Contribuyente');
INSERT INTO DETVALORES VALUES (1045,1,4,'Régimen Gran Contribuyente - Autorret.');
INSERT INTO DETVALORES VALUES (1045,1,5,'Régimen Especial');
INSERT INTO DETVALORES VALUES (1045,1,6,'Régimen Empresa del Estado');
INSERT INTO DETVALORES VALUES (1045,1,7,'Régimen Empresas del exterior');
INSERT INTO DETVALORES VALUES (1045,2,1,'Régimen Común');
INSERT INTO DETVALORES VALUES (1045,2,2,'Régimen Simplificado');
INSERT INTO DETVALORES VALUES (1045,2,3,'Régimen Gran Contribuyente');
INSERT INTO DETVALORES VALUES (1045,2,4,'Régimen Gran Contribuyente - Autorret.');
INSERT INTO DETVALORES VALUES (1045,2,5,'Régimen Especial');
INSERT INTO DETVALORES VALUES (1045,2,6,'Régimen Empresa del Estado');
INSERT INTO DETVALORES VALUES (1045,2,7,'Régimen Empresas del exterior');
INSERT INTO DETVALORES VALUES (1045,8,1,'Régimen Común');
INSERT INTO DETVALORES VALUES (1045,8,2,'Régimen Simplificado');
INSERT INTO DETVALORES VALUES (1045,8,3,'Régimen Gran Contribuyente');
INSERT INTO DETVALORES VALUES (1045,8,4,'Régimen Gran Contribuyente - Autorret.');
INSERT INTO DETVALORES VALUES (1045,8,5,'Régimen Especial');
INSERT INTO DETVALORES VALUES (1045,8,6,'Régimen Empresa del Estado');
INSERT INTO DETVALORES VALUES (1045,8,7,'Régimen Empresas del exterior');
COMMIT;
INSERT INTO REGIMEN_FISCAL VALUES (1,1,NULL);
INSERT INTO REGIMEN_FISCAL VALUES (1,2,NULL);
INSERT INTO REGIMEN_FISCAL VALUES (1,3,NULL);
INSERT INTO REGIMEN_FISCAL VALUES (1,4,NULL);
INSERT INTO REGIMEN_FISCAL VALUES (2,1,NULL);
INSERT INTO REGIMEN_FISCAL VALUES (2,3,NULL);
INSERT INTO REGIMEN_FISCAL VALUES (2,4,NULL);
INSERT INTO REGIMEN_FISCAL VALUES (2,5,NULL);
INSERT INTO REGIMEN_FISCAL VALUES (2,6,NULL);
INSERT INTO REGIMEN_FISCAL VALUES (2,7,NULL);
COMMIT;


UPDATE MAP_TABLA
SET TFROM =
 '(select a.ccindid || ''|'' || a.cindsap || ''|'' || LPAD(d.cregfiscal,2,''0'') || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL linea
from tipos_indicadores a, per_personas b, per_indicadores c, per_regimenfiscal d
where b.sperson = pac_map.f_valor_parametro(''|'',''#lineaini'',101,''#cmapead'') AND c.sperson(+) = b.sperson AND c.ctipind = a.ctipind AND d.sperson(+) = b.sperson)'
WHERE CTABLA = '101705'; 
COMMIT;
/