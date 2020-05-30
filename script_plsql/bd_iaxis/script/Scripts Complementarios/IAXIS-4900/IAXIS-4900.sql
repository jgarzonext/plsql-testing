DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));

DELETE MAP_COMODIN
WHERE CMAPEAD = '546'; 

DELETE MAP_DET_TRATAR
WHERE CMAPEAD = '546'; 

DELETE MAP_DETALLE
WHERE CMAPEAD = '546'; 

DELETE MAP_XML     
WHERE CMAPEAD = '546';  

DELETE MAP_CAB_TRATAR
WHERE CMAPEAD = '546';  

DELETE MAP_CABECERA
WHERE CMAPEAD = '546'; 

DELETE MAP_TABLA
WHERE CTABLA = '546002'; 

insert into MAP_CABECERA    
values ('546', 'Reserva_sin_rea_facult.csv', 'INFORMES', 2, ';', '''0'', ''3''', 'D', 'Reservas de Siniestros Reaseguro Facultativo', 'Companyia|Empresa|Fecha_Fin(AAAAMMDD)|Idioma /* |1|31122011|2 */', 0, null);

insert into MAP_COMODIN values ('546', '0');
insert into MAP_COMODIN values ('546', '546');

Insert into MAP_DETALLE (CMAPEAD,NORDEN,NPOSICION,NLONGITUD,TTAG) values ('546',1,0,1,'Companyia');
Insert into MAP_DETALLE (CMAPEAD,NORDEN,NPOSICION,NLONGITUD,TTAG) values ('546',2,1,1,'Empresa');
Insert into MAP_DETALLE (CMAPEAD,NORDEN,NPOSICION,NLONGITUD,TTAG) values ('546',3,1,2,'FechaFin');
Insert into MAP_DETALLE (CMAPEAD,NORDEN,NPOSICION,NLONGITUD,TTAG) values ('546',4,1,3,'Idioma');
Insert into MAP_DETALLE (CMAPEAD,NORDEN,NPOSICION,NLONGITUD,TTAG) values ('546',100,null,null,'Titols');
Insert into MAP_DETALLE (CMAPEAD,NORDEN,NPOSICION,NLONGITUD,TTAG) values ('546',110,null,null,'Select Principal');

Insert into MAP_TABLA (CTABLA,TFROM,TDESCRIP) values (546002,'PAC_INFORMES_REA.f_00546_det(
      pac_map.f_valor_parametro(''|'',''#lineaini'',1,#cmapead), -- compania
      pac_map.f_valor_parametro(''|'',''#lineaini'',2,#cmapead), -- empres
      pac_map.f_valor_parametro(''|'',''#lineaini'',3,#cmapead), -- ffinefe
      pac_map.f_valor_parametro(''|'',''#lineaini'',4,#cmapead)  -- cidioma 
      )','Select Dades');
      
Insert into MAP_DET_TRATAR (CMAPEAD,TCONDICION,CTABLA,NVECES,TCAMPO,CTIPCAMPO,TMASCARA,NORDEN,TSETWHERE)
values ('546','0',0,1,'Titulos','6','begin :resultado := PAC_INFORMES_REA.f_00546_cab(
      pac_map.f_valor_parametro(''|'',''#lineaini'',1,#cmapead), -- compania
      pac_map.f_valor_parametro(''|'',''#lineaini'',2,#cmapead), -- empres
      pac_map.f_valor_parametro(''|'',''#lineaini'',3,#cmapead), -- ffinefe
      pac_map.f_valor_parametro(''|'',''#lineaini'',4,#cmapead)  -- cidioma
      ); end;',100,'E');
Insert into MAP_DET_TRATAR (CMAPEAD,TCONDICION,CTABLA,NVECES,TCAMPO,CTIPCAMPO,TMASCARA,NORDEN,TSETWHERE)
values ('546','0',546002,1,'Resto',null,null,110,'E');


Insert into MAP_XML (CMAPEAD,TPARE,NORDFILL,TTAG,CATRIBUTS,CTABLAFILLS,NORDEN) values ('546','Datos',6,'Recibo',null,null,30);
Insert into MAP_XML (CMAPEAD,TPARE,NORDFILL,TTAG,CATRIBUTS,CTABLAFILLS,NORDEN) values ('546','Fecha',4,'Efecto',null,null,20);
Insert into MAP_XML (CMAPEAD,TPARE,NORDFILL,TTAG,CATRIBUTS,CTABLAFILLS,NORDEN) values ('546','TP',2,'Titulos',null,null,100);
Insert into MAP_XML (CMAPEAD,TPARE,NORDFILL,TTAG,CATRIBUTS,CTABLAFILLS,NORDEN) values ('546','TP',3,'Principal',null,null,110);


insert into MAP_CAB_TRATAR values (546, 546002, 1, 'S', null, null);

Insert Into DETVALORES Values (106, 8, 6, 'Facultativo');

update cfg_form_dep
set tvalue = 1
where ccfgdep = 355
and citdest = 'CTIPREA'
and tvalorig = '506';

   COMMIT;

END;