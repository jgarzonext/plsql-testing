--select * from CFG_LANZAR_INFORMES where cmap='CarteraDelima';
--select * from CFG_LANZAR_INFORMES where UPPER(LEXPORT) LIKE '%CSV%';
--select * from CFG_LANZAR_INFORMES where UPPER(LEXPORT) LIKE '%TXT%';

UPDATE CFG_LANZAR_INFORMES 
SET LEXPORT = 'XLSX'
where cmap='CarteraDelima';


--Select * from CFG_LANZAR_INFORMES_PARAMS where cmap = 'CarteraDelima';

Update CFG_LANZAR_INFORMES_PARAMS 
SET SLITERA='89908055'
where cmap = 'CarteraDelima';

commit;