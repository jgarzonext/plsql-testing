delete from CFG_LANZAR_INFORMES_PARAMS
where cmap like 'LpolvenApp';

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values ('24','AXISLIST003','LpolvenApp','GENERAL','0','GENERAL','PSUCUR','3','9909330','2','1','SELECT:select 0 V , ''TODAS'' D FROM dual UNION SELECT AG.CAGENTE V, pac_redcomercial.ff_desagente(ag.cagente,8 ,8) d FROM redcomercial rc,agentes ag  WHERE rc.cagente = ag.cagente AND rc.ctipage   in (2,3) AND rc.cempres   = 24');

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR)
values ('24','AXISLIST003','LpolvenApp','GENERAL','0','GENERAL','CRAMO','4','100784','2','1',
'SELECT:select 0 V, ''TODOS'' D FROM DUAL UNION select r.cramo v, r.tramo d from codiram c, ramos r, productos p 
where r.cidioma = 8 and r.cramo = p.cramo and c.CRAMO = r.CRAMO and c.CEMPRES = 24 order by V');

--Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
--values ('24','AXISLIST003','LpolvenApp','GENERAL','0','GENERAL','CPRODUC','3','100829','2','1','SELECT:select 0 V, ''TODOS'' D from dual union SELECT pp.sproduc V,(SELECT ttitulo FROM titulopro WHERE cramo = pp.cramo AND cmodali = pp.cmodali AND ctipseg = pp.ctipseg AND ccolect = pp.ccolect AND cidioma = 8) D FROM  productos pp WHERE pp.sproduc = NVL(NULL, pp.sproduc)order by V');

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values ('24','AXISLIST003','LpolvenApp','GENERAL','0','GENERAL','NIT','5','9905773','1','0',null);

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values ('24','AXISLIST003','LpolvenApp','GENERAL','0','GENERAL','PFINICIO','1','9902360','3','1',null);

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values ('24','AXISLIST003','LpolvenApp','GENERAL','0','GENERAL','PFFIN','2','9000527','3','1',null);

commit;
/