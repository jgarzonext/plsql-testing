delete from detvalores where cvalor = 8002026;
delete from valores where cvalor = 8002026;
delete from CFG_LANZAR_INFORMES_PARAMS where cmap = 'CancelPorNoPago' and norder in (4,5,6);

INSERT INTO VALORES values(8002026,1,'tipo de anotacion impago');
INSERT INTO VALORES values(8002026,2,'tipo de anotacion impago');
INSERT INTO VALORES values(8002026,8,'tipo de anotacion impago');

Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('8002026','1','1','canceladas por impago');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('8002026','2','1','canceladas por impago');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('8002026','8','1','canceladas por impago');

Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('8002026','1','2','prevencion cancelacion');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('8002026','2','2','prevencion cancelacion');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('8002026','8','2','prevencion cancelacion');

Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('8002026','1','3','todas');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('8002026','2','3','todas');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('8002026','8','3','todas');

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) values ('24','AXISLIST003','CancelPorNoPago','GENERAL','0','GENERAL','SDESDE','4','9910689','2','0','SELECT:select a.cagente v, a.cagente || ''.'' || PAC_REDCOMERCIAL.ff_desagente (a.cagente, f_usu_idioma ,4 ) d
                FROM agentes a, redcomercial r WHERE a.ctipage = 2  AND r.cagente = a.cagente  AND r.fmovfin IS NULL  ORDER BY 1');
Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) values ('24','AXISLIST003','CancelPorNoPago','GENERAL','0','GENERAL','SHASTA','5','9910690','2','0','SELECT:select a.cagente v, a.cagente || ''.'' || PAC_REDCOMERCIAL.ff_desagente (a.cagente, f_usu_idioma ,4 ) d
                FROM agentes a, redcomercial r WHERE a.ctipage = 2  AND r.cagente = a.cagente  AND r.fmovfin IS NULL  ORDER BY 1');
Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) values ('24','AXISLIST003','CancelPorNoPago','GENERAL','0','GENERAL','CESTADO','6','100587','2','1','SELECT:select catribu v, tatribu d from detvalores where cvalor = 8002026 and cidioma = 8');

update AXIS_LITERALES set tlitera = 'Sucursal desde' WHERE SLITERA = 9910689;
update AXIS_LITERALES set tlitera = 'sucursal hasta' WHERE SLITERA = 9910690;

commit;
/
