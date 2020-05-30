update parempresas set nvalpar = 1
where cparam = 'CONTAB_ONLINE';
update parempresas set nvalpar = 1
where cparam = 'RESERVA_ONLINE';
delete map_xml
where CTABLAFILLS in (100313,100314,100315,100316);
delete map_xml
where cmapead = 'I031S' and norden in (220,221,222,223,224,225,226,227,228,229,230,231);
delete map_tabla
where CTABLA in (100313,100314,100315,100316);
delete map_det_tratar
where cmapead = 'I031S' and norden in (220,221,222,223,224,225,226,227,228,229,230,231);
delete map_detalle
where cmapead = 'I031S' and norden in (220,221,222,223,224,225,226,227,228,229,230,231);

begin
Insert into MAP_TABLA
   (CTABLA, TFROM, TDESCRIP)
 Values
   (100313, '(SELECT max(nvl(PCOMCOA,0))|| ''|'' ||max(nvl(PCOMGAS,0)) linea FROM COACEDIDO WHERE SSEGURO = (select sseguro from seguros where npoliza = (SELECT     TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 258, 20))
              
   FROM contab_asient_interf a
  WHERE (   a.idpago =
                  pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'')
         OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL
        )
    AND a.sinterf = pac_map.f_valor_parametro (''|'', ''#lineaini'', 10, ''#cmapead'')
    AND a.ttippag = pac_map.f_valor_parametro (''|'', ''#lineaini'', 12, ''#cmapead'')
    AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf)
    )))', 'PORCENTAJES'); --|| ''|'' || NULL || ''|'' || NULL|| ''|'' ||
exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_TABLA
   (CTABLA, TFROM, TDESCRIP)
 Values
   (100314, '(SELECT CAGENTE || ''|'' ||CTIPCOM linea FROM SEGUROS WHERE SSEGURO = (select sseguro from seguros where npoliza = (SELECT     TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 258, 20))
              
   FROM contab_asient_interf a
  WHERE (   a.idpago =
                  pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'')
         OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL
        )
    AND a.sinterf = pac_map.f_valor_parametro (''|'', ''#lineaini'', 10, ''#cmapead'')
    AND a.ttippag = pac_map.f_valor_parametro (''|'', ''#lineaini'', 12, ''#cmapead'')
    AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf))))', 'INTERMEDIARIOS');
exception when dup_val_on_index then null;
end;
/
 begin
Insert into MAP_TABLA
   (CTABLA, TFROM, TDESCRIP)
 Values
   (100315, '(select b.sperson|| ''|'' ||b.pparticipacion linea from tomadores a, per_personas_rel b where a.sseguro = ((select sseguro from seguros where npoliza = (SELECT     TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 258, 20))
              
   FROM contab_asient_interf a
  WHERE (   a.idpago =
                  pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'')
         OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL
        )
    AND a.sinterf = pac_map.f_valor_parametro (''|'', ''#lineaini'', 10, ''#cmapead'')
    AND a.ttippag = pac_map.f_valor_parametro (''|'', ''#lineaini'', 12, ''#cmapead'')
    AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf)))) and a.sperson = b.sperson and a.cagrupa = b.cagrupa )', 'CONSORCIOS');
exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_TABLA
   (CTABLA, TFROM, TDESCRIP)
 Values
   (100316, '(SELECT (select sperson from companias where ccompani = coacedido.ccompan)|| ''|'' ||PCESCOA linea FROM coACEDIDO WHERE SSEGURO = (select sseguro from seguros where npoliza = (SELECT     TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 257, 20))
              
   FROM contab_asient_interf a
  WHERE (   a.idpago =
                  pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'')
         OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL
        )
    AND a.sinterf = pac_map.f_valor_parametro (''|'', ''#lineaini'', 10, ''#cmapead'')
    AND a.ttippag = pac_map.f_valor_parametro (''|'', ''#lineaini'', 12, ''#cmapead'')
    AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf)
    )))', 'COASEGUROS'); --|| ''|'' || NULL || ''|'' || NULL|| ''|'' ||
exception when dup_val_on_index then null;
end;
/
delete map_xml
where tpare ='porcentaje';


/

begin

Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'contab_out', 70, 'porcentajes', NULL, 
    100313, NULL);
exception when dup_val_on_index then null;
end;
/
begin
  Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'porcentajes', 1, 'PorcComisionNegocio', NULL, 
    null, 221);
    exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 221, 1, 1, 'PorcComisionNegocio');
   exception when dup_val_on_index then null;
end;
/

begin
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'PorcComisionNegocio', 
    '1', NULL, 221, 'E');
     exception when dup_val_on_index then null;
end;
/
begin
  Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'porcentajes', 2, 'PorcAdmonCoaseguro', NULL, 
    null, 222);
    exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 222, 1, 1, 'PorcAdmonCoaseguro');
   exception when dup_val_on_index then null;
end;
/

begin
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'PorcAdmonCoaseguro', 
    '1', NULL, 222, 'E');
     exception when dup_val_on_index then null;
end;
/
begin
  Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'porcentajes', 3, 'intermediarios', NULL, 
    0, 223);
    exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 223, 1, 3, 'intermediarios');
   exception when dup_val_on_index then null;
end;
/

begin
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'intermediarios', 
    '1', NULL, 223, 'E');
     exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'intermediarios', 1, 'intermediario', NULL, 
     100314, NULL);
         exception when dup_val_on_index then null;
end;
/

begin
    Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'intermediario', 1, 'CodigoIntermediario', NULL, 
    null, 224);
        exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 224, 0, 1, 'CodigoIntermediario');
   exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'CodigoIntermediario', 
    '1', NULL, 224, 'E');
     exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'intermediario', 2, 'PorcPartcIntermediario', NULL, 
   null, 225);
        exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 225, 1, 1, 'PorcPartcIntermediario');
   exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'PorcPartcIntermediario', 
    '1', NULL, 225, 'E');
     exception when dup_val_on_index then null;
end;
/
----
begin
  Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'porcentajes', 4, 'Coaseguros', NULL, 
    0, 226);
    exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 226, 1, 4, 'Coaseguros');
   exception when dup_val_on_index then null;
end;
/

begin
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Coaseguros', 
    '1', NULL, 226, 'E');
     exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'Coaseguros', 1, 'Coaseguro', NULL, 
     100316, NULL);
         exception when dup_val_on_index then null;
end;
/

begin
    Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'Coaseguro', 1, 'CodigoCoaseguro', NULL, 
    null, 227);
        exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 227, 0, 1, 'CodigoCoaseguro');
   exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'CodigoCoaseguro', 
    '1', NULL, 227, 'E');
     exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'Coaseguro', 2, 'PorcPartcCoaseguro', NULL, 
   null, 228);
        exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 228, 1, 1, 'PorcPartcCoaseguro');
   exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'PorcPartcCoaseguro', 
    '1', NULL, 228, 'E');
     exception when dup_val_on_index then null;
end;
/

----
begin
  Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'porcentajes', 5, 'Consorcio', NULL, 
    0, 229);
    exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 229, 1, 5, 'Consorcio');
   exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Consorcio', 
    '1', NULL, 229, 'E');
     exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'Consorcio', 1, 'consorcio', NULL, 
     100315, NULL);
         exception when dup_val_on_index then null;
end;
/
begin
    Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'consorcio', 1, 'PersonaRel', NULL, 
    null, 230);
        exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 230, 0, 1, 'PersonaRel');
   exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'PersonaRel', 
    '1', NULL, 230, 'E');
     exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'consorcio', 2, 'PorcPartcConsorc', NULL, 
    null, 231);
        exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 231, 1, 1, 'PorcPartcConsorc');
   exception when dup_val_on_index then null;
end;
/
begin
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'PorcPartcConsorc', 
    '1', NULL, 231, 'E');
     exception when dup_val_on_index then null;
end;
/


delete MAP_DET_TRATAR
where cmapead = 'I031S'
 and  norden >= 130 and norden <= 194;
delete map_detalle
where cmapead = 'I031S'
 and  norden >= 130 and norden <= 194;
delete map_xml
where cmapead = 'I031S' and  norden >= 130 and norden <= 194;
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 1, 'tipo', NULL, 
    NULL, 130);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 2, 'numdeudorcuenta', NULL, 
    NULL, 131);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 3, 'imp_moneda_extr', NULL, 
    NULL, 132);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 4, 'imp_moneda_local', NULL, 
    NULL, 133);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 5, 'ind_impuesto', NULL, 
    NULL, 134);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 6, 'importe_iva', NULL, 
    NULL, 135);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 7, 'importe_iva_cop', NULL, 
    NULL, 136);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 8, 'importe_base_iva', NULL, 
    NULL, 137);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 9, 'cond_pago', NULL, 
    NULL, 138);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 10, 'fecha_base', NULL, 
    NULL, 139);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 11, 'via_pago', NULL, 
    NULL, 140);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 12, 'bloqueo_pago', NULL, 
    NULL, 141);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 13, 'ind_retencion', NULL, 
    NULL, 142);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 14, 'imp_base_reten', NULL, 
    NULL, 143);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 15, 'imp_base_ret_l', NULL, 
    NULL, 144);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 16, 'imp_retencion', NULL, 
    NULL, 145);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 17, 'imp_ret_mon_l', NULL, 
    NULL, 146);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 18, 'retenciontipo', NULL, 
    NULL, 147);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 19, 'pos_doc', NULL, 
    NULL, 148);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 20, 'grupocentrocosto', NULL, 
    NULL, 149);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 21, 'centrocosto', NULL, 
    NULL, 150);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 22, 'centrobeneficio', NULL, 
    NULL, 151);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 23, 'division', NULL, 
    NULL, 152);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 24, 'codigomaterial', NULL, 
    NULL, 153);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 25, 'punto', NULL, 
    NULL, 154);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 26, 'numpoliza', NULL, 
    NULL, 155);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 27, 'numsimulacion', NULL, 
    NULL, 156);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 28, 'cdp', NULL, 
    NULL, 157);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 29, 'crp', NULL, 
    NULL, 158);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 30, 'elemento_pep', NULL, 
    NULL, 159);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 31, 'numinversion', NULL, 
    NULL, 160);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 32, 'tercero', NULL, 
    NULL, 161);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 33, 'sucursal', NULL, 
    NULL, 162);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 34, 'tdescri', NULL, 
    NULL, 163);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 35, 'deposito', NULL, 
    NULL, 164);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 36, 'asignacion', NULL, 
    NULL, 165);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 37, 'poscrp', NULL, 
    NULL, 166);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 38, 'pospres', NULL, 
    NULL, 167);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 39, 'cgestor', NULL, 
    NULL, 168);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 40, 'referencia3', NULL, 
    NULL, 169);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 41, 'ctabancaria', NULL, 
    NULL, 170);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 42, 'codbanco', NULL, 
    NULL, 171);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 43, 'codsucursalbanc', NULL, 
    NULL, 172);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 44, 'ciudad', NULL, 
    NULL, 173);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 45, 'PagadorAlt', NULL, 
    NULL, 174);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 46, 'Signo', NULL, 
    NULL, 175);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 47, 'ImpBaseRetE', NULL, 
    NULL, 176);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 48, 'ImpRetMonE', NULL, 
    NULL, 177);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 49, 'Segmento', NULL, 
    NULL, 178);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 50, 'Referencia1', NULL, 
    NULL, 179);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 51, 'Referencia2', NULL, 
    NULL, 180);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 52, 'Zzcliente', NULL, 
    NULL, 181);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 53, 'Zzproved', NULL, 
    NULL, 182);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 54, 'Zzfipoliza', NULL, 
    NULL, 183);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 55, 'Zzregion', NULL, 
    NULL, 184);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 56, 'Zzproducto', NULL, 
    NULL, 185);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 57, 'Zzbegda', NULL, 
    NULL, 186);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 58, 'Zzsiniestr', NULL, 
    NULL, 187);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 59, 'Zzcertific', NULL, 
    NULL, 188);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 60, 'Posicion', NULL, 
    NULL, 189);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 61, 'Compensar', NULL, 
    NULL, 190);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 62, 'Cme', NULL, 
    NULL, 191);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 63, 'RetAplica', NULL, 
    NULL, 192);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 64, 'ClaveConta', NULL, 
    NULL, 193);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'detalle', 65, 'Zzxref1', NULL, 
    NULL, 194);
COMMIT;

Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 130, 0, 1, 'tipo');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 131, 1, 1, 'numdeudorcuenta');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 132, 1, 2, 'imp_moneda_extr');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 133, 1, 3, 'imp_moneda_local');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 134, 1, 4, 'ind_impuesto');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 135, 1, 5, 'importe_iva');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 136, 1, 6, 'importe_iva_cop');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 137, 1, 7, 'importe_base_iva');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 138, 1, 8, 'cond_pago');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 139, 1, 9, 'fecha_base');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 140, 1, 10, 'via_pago');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 141, 1, 11, 'bloqueo_pago');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 142, 1, 12, 'ind_retencion');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 143, 1, 13, 'imp_base_reten');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 144, 1, 14, 'imp_base_ret_l');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 145, 1, 15, 'imp_retencion');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 146, 1, 16, 'imp_ret_mon_l');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 147, 1, 17, 'retenciontipo');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 148, 1, 18, 'pos_doc');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 149, 1, 19, 'grupocentrocosto');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 150, 1, 20, 'centrocosto');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 151, 1, 21, 'centrobeneficio');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 152, 1, 22, 'division');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 153, 1, 23, 'codigomaterial');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 154, 1, 24, 'punto');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 155, 1, 25, 'numpoliza');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 156, 1, 26, 'numsimulacion');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 157, 1, 27, 'cdp');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 158, 1, 28, 'crp');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 159, 1, 29, 'elemento_pep');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 160, 1, 30, 'numinversion');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 161, 1, 31, 'tercero');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 162, 1, 32, 'sucursal');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 163, 1, 33, 'tdescri');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 164, 1, 34, 'deposito');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 165, 1, 35, 'asignacion');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 166, 1, 36, 'poscrp');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 167, 1, 37, 'pospres');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 168, 1, 38, 'cgestor');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 169, 1, 39, 'referencia3');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 170, 1, 40, 'ctabancaria');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 171, 1, 41, 'codbanco');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 172, 1, 42, 'codsucursalbanc');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 173, 1, 43, 'ciudad');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 174, 1, 44, 'PagadorAlt');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 175, 1, 45, 'Signo');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 176, 1, 46, 'ImpBaseRetE');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 177, 1, 47, 'ImpRetMonE');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 178, 1, 48, 'Segmento');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 179, 1, 49, 'Referencia1');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 180, 1, 50, 'Referencia2');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 181, 1, 51, 'Zzcliente');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 182, 1, 52, 'Zzproved');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 183, 1, 53, 'Zzfipoliza');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 184, 1, 54, 'Zzregion');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 185, 1, 55, 'Zzproducto');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 186, 1, 56, 'Zzbegda');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 187, 1, 57, 'Zzsiniestr');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 188, 1, 58, 'Zzcertific');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 189, 1, 59, 'Posicion');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 190, 1, 60, 'Compensar');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 191, 1, 61, 'Cme');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 192, 1, 62, 'RetAplica');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 193, 1, 63, 'ClaveConta');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 194, 1, 64, 'Zzxref1');

Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'numdeudorcuenta', 
    '1', NULL, 131, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'numinversion', 
    '1', NULL, 160, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'numpoliza', 
    '1', NULL, 155, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'numsimulacion', 
    '1', NULL, 156, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'PagadorAlt', 
    '1', NULL, 174, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'poscrp', 
    '1', NULL, 166, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'pos_doc', 
    '1', NULL, 148, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Posicion', 
    '1', NULL, 189, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'pospres', 
    '1', NULL, 167, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'punto', 
    '1', NULL, 154, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Referencia1', 
    '1', NULL, 179, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Referencia2', 
    '1', NULL, 180, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'referencia3', 
    '1', NULL, 169, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'RetAplica', 
    '1', NULL, 192, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'retenciontipo', 
    '1', NULL, 147, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Segmento', 
    '1', NULL, 178, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Signo', 
    '1', NULL, 175, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'sucursal', 
    '1', NULL, 162, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'tdescri', 
    '1', NULL, 163, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'tercero', 
    '1', NULL, 161, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'tipo', 
    '1', NULL, 130, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'via_pago', 
    '1', NULL, 140, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Zzbegda', 
    '1', NULL, 186, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'asignacion', 
    '1', NULL, 165, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'bloqueo_pago', 
    '1', NULL, 141, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'cdp', 
    '1', NULL, 157, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'centrobeneficio', 
    '1', NULL, 151, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'centrocosto', 
    '1', NULL, 150, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'cgestor', 
    '1', NULL, 168, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'ciudad', 
    '1', NULL, 173, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'ClaveConta', 
    '1', NULL, 193, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Cme', 
    '1', NULL, 191, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'codbanco', 
    '1', NULL, 171, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'codigomaterial', 
    '1', NULL, 153, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'codsucursalbanc', 
    '1', NULL, 172, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Compensar', 
    '1', NULL, 190, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'cond_pago', 
    '1', NULL, 138, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'crp', 
    '1', NULL, 158, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'ctabancaria', 
    '1', NULL, 170, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'deposito', 
    '1', NULL, 164, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'division', 
    '1', NULL, 152, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'elemento_pep', 
    '1', NULL, 159, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'fecha_base', 
    '1', NULL, 139, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'grupocentrocosto', 
    '1', NULL, 149, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'ImpBaseRetE', 
    '1', NULL, 176, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'imp_base_reten', 
    '1', NULL, 143, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'imp_base_ret_l', 
    '1', NULL, 144, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'imp_moneda_extr', 
    '1', NULL, 132, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'imp_moneda_local', 
    '1', NULL, 133, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'importe_base_iva', 
    '1', NULL, 137, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'importe_iva', 
    '1', NULL, 135, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'importe_iva_cop', 
    '1', NULL, 136, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'imp_retencion', 
    '1', NULL, 145, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'ImpRetMonE', 
    '1', NULL, 177, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'imp_ret_mon_l', 
    '1', NULL, 146, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'ind_impuesto', 
    '1', NULL, 134, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'ind_retencion', 
    '1', NULL, 142, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Zzcertific', 
    '1', NULL, 188, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Zzcliente', 
    '1', NULL, 181, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Zzfipoliza', 
    '1', NULL, 183, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Zzproducto', 
    '1', NULL, 185, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Zzproved', 
    '1', NULL, 182, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Zzregion', 
    '1', NULL, 184, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Zzsiniestr', 
    '1', NULL, 187, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Zzxref1', 
    '1', NULL, 194, 'E');



commit;    

COMMIT;
delete MAP_DET_TRATAR
where cmapead = 'I031S' and norden  >= 102 and norden <= 118;
delete map_detalle
where cmapead = 'I031S' and norden  >= 102 and norden <= 118;
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 102, 0, 1, 'tiporegistro');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 103, 1, 1, 'fecha');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 104, 1, 2, 'fechadocumento');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 105, 1, 3, 'sociedad');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 106, 1, 4, 'fechacontab');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 107, 1, 5, 'moneda');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 108, 1, 6, 'referencia');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 109, 1, 7, 'cabeceradoc');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 110, 1, 8, 'motivoanulacion');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 111, 1, 9, 'ejercicio');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 112, 1, 10, 'fecha_base');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 113, 1, 11, 'compensar');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 114, 1, 12, 'Norma');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 115, 1, 13, 'Kursf');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 116, 1, 14, 'Xref1Hd');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 117, 1, 15, 'Xref2Hd');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 118, 1, 16, 'Origen');
COMMIT;

Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'moneda', 
    '1', NULL, 107, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'motivoanulacion', 
    '1', NULL, 110, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Norma', 
    '1', NULL, 114, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Origen', 
    '1', NULL, 118, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'referencia', 
    '1', NULL, 108, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'sociedad', 
    '1', NULL, 105, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'tiporegistro', 
    '1', NULL, 102, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Xref1Hd', 
    '1', NULL, 116, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Xref2Hd', 
    '1', NULL, 117, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'cabeceradoc', 
    '1', NULL, 109, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'compensar', 
    '1', NULL, 113, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'ejercicio', 
    '1', NULL, 111, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'fecha', 
    '1', NULL, 103, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'fecha_base', 
    '1', NULL, 112, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'fechacontab', 
    '1', NULL, 106, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'fechadocumento', 
    '1', NULL, 104, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'Kursf', 
    '1', NULL, 115, 'E');
COMMIT;
delete map_xml
where cmapead = 'I031S' and norden  >= 102 and norden <= 118;
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 4, 'tiporegistro', NULL, 
    NULL, 102);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 5, 'fecha', NULL, 
    NULL, 103);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 6, 'fechadocumento', NULL, 
    NULL, 104);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 7, 'sociedad', NULL, 
    NULL, 105);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 8, 'fechacontab', NULL, 
    NULL, 106);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 9, 'moneda', NULL, 
    NULL, 107);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 10, 'referencia', NULL, 
    NULL, 108);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 11, 'cabeceradoc', NULL, 
    NULL, 109);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 12, 'motivoanulacion', NULL, 
    NULL, 110);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 13, 'ejercicio', NULL, 
    NULL, 111);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 14, 'fecha_base', NULL, 
    NULL, 112);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 15, 'compensar', NULL, 
    NULL, 113);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 16, 'Norma', NULL, 
    NULL, 114);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 17, 'Kursf', NULL, 
    NULL, 115);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 18, 'Xref1Hd', NULL, 
    NULL, 116);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 19, 'Xref2Hd', NULL, 
    NULL, 117);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 20, 'Origen', NULL, 
    NULL, 118);
COMMIT;
delete MAP_DET_TRATAR
where cmapead = 'I031S'
and NORDEN in (116,117);

delete MAP_DETALLE
where cmapead = 'I031S'
and NORDEN in (116,117);
delete MAP_XML
where cmapead = 'I031S'
and nordfill in (18,19);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 18, 'TasPac', NULL, 
    NULL, 116);
Insert into MAP_XML
   (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, 
    CTABLAFILLS, NORDEN)
 Values
   ('I031S', 'cabecera', 19, 'MonUsd', NULL, 
    NULL, 117);

Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 116, 1, 14, 'TasPac');
Insert into MAP_DETALLE
   (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
 Values
   ('I031S', 117, 1, 15, 'MonUsd');



Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'TasPac', 
    '1', NULL, 116, 'E');
Insert into MAP_DET_TRATAR
   (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, 
    CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
 Values
   ('I031S', '0', 0, 1, 'MonUsd', 
    '1', NULL, 117, 'E');

update map_xml
set ttag = 'CodEscenario'
where cmapead = 'I031S' and 
ttag = 'tiporegistro';

update map_xml
set ttag = 'FecDoc'
where cmapead = 'I031S' and 
ttag = 'fechadocumento';

update map_xml
set ttag = 'FecContable'
where cmapead = 'I031S' and 
ttag = 'fechacontab';

update map_xml
set ttag = 'RefUniPago'
where cmapead = 'I031S' and 
ttag = 'referencia';

update map_xml
set ttag = 'NumUnico'
where cmapead = 'I031S' and 
ttag = 'cabeceradoc';

update map_xml
set ttag = 'CondPago'
where cmapead = 'I031S' and 
ttag = 'cond_pago';

update map_xml
set ttag = 'ViaPago'
where cmapead = 'I031S' and 
ttag = 'via_pago';

update map_xml
set ttag = 'Division'
where cmapead = 'I031S' and 
ttag = 'division';


update map_xml
set ttag = 'Tercero'
where cmapead = 'I031S' and 
ttag = 'tercero';

update map_xml
set ttag = 'IndicadorIva'
where cmapead = 'I031S' and 
ttag = 'ind_impuesto';

update map_xml
set ttag = 'BaseRet'
where cmapead = 'I031S' and 
ttag = 'imp_base_reten';

update map_xml
set ttag = 'TipoLiquidacion'
where cmapead = 'I031S' and 
ttag = 'tipo';

update map_xml
set ttag = 'Valor'
where cmapead = 'I031S' and 
ttag = 'imp_moneda_local';

update map_xml
set ttag = 'NumUnico'
where cmapead = 'I031S' and 
ttag = 'asignacion';

update map_xml
set ttag = 'NaturalezaContable'
where cmapead = 'I031S' and 
ttag = 'Signo';


update map_xml
set ttag = 'Poliza'
where cmapead = 'I031S' and 
ttag = 'Zzfipoliza';



update map_xml
set ttag = 'Region'
where cmapead = 'I031S' and 
ttag = 'Zzregion';


update map_xml
set ttag = 'Producto'
where cmapead = 'I031S' and 
ttag = 'Zzproducto';

update map_xml
set ttag = 'FecIniPol'
where cmapead = 'I031S' and 
ttag = 'Zzbegda';

update map_xml
set ttag = 'Certificado'
where cmapead = 'I031S' and 
ttag = 'Zzcertific';

update map_xml
set ttag = 'MonUsd'
where cmapead = 'I031S' and 
ttag ='imp_moneda_extr';

update map_xml
set ttag = 'Siniestro'
where cmapead = 'I031S' and 
ttag = 'Zzsiniestr';
commit;

  
      
update MAP_TABLA
set  TFROM =  '( SELECT
    linea
FROM
    (
        SELECT substr(otros,1,3)
             || ''|''
             || TO_CHAR(f_sysdate,''yyyy-MM-dd'')
             || ''|''
             || TO_CHAR(fefeadm,''yyyy-MM-dd'')
             || ''|''
             || TRIM(LEADING ''0'' FROM substr(otros,4,4) )
             || ''|''
             || TO_CHAR(fefeadm,''yyyy-MM-dd'')
             || ''|''
             || TRIM(LEADING ''0'' FROM substr(otros,9,4) )
             || ''|''
             || substr(idpago,7,9)
             || ''|''
             || substr(idpago,7,9)
             || ''|''
             || NULL
             || ''|''
             || TRIM(LEADING ''0'' FROM substr(otros,14,4) )
             || ''|''
             || NULL
             || ''|''
             || NULL
             || ''|''
             || tlibro
             || ''|''
             || TRIM(LEADING ''0'' FROM substr(otros,18,15) )
             || ''|''
             || pac_eco_tipocambio.f_cambio((SELECT ec.cmoneda  FROM monedas m, eco_codmonedas ec WHERE m.cidioma = 8 AND m.cmonint = ec.cmoneda AND m.cmoneda = (SELECT cmoneda FROM codidivisa WHERE cdivisa = (select cdivisa from productos where sproduc = (select sproduc from seguros WHERE SSEGURO = (select sseguro from seguros where npoliza = TRIM (LEADING ''0'' FROM SUBSTR (otros, 258, 20))))))), TRIM(LEADING ''0'' FROM substr(otros,9,4) ), fefeadm)
             || ''|''
             ||(SELECT ec.cmoneda  FROM monedas m, eco_codmonedas ec WHERE m.cidioma = pac_md_common.f_get_cxtidioma AND m.cmonint = ec.cmoneda AND m.cmoneda = (SELECT cmoneda FROM codidivisa WHERE cdivisa = (select cdivisa from productos where sproduc = (select sproduc from seguros WHERE SSEGURO = (select sseguro from seguros where npoliza = TRIM (LEADING ''0'' FROM SUBSTR (otros, 258, 20)))))))
             || ''|'' 
             || TRIM(LEADING ''0'' FROM substr(otros,57,13) ) linea
        FROM
            contab_asient_interf c
        WHERE
            (
                    idpago = pac_map.f_valor_parametro(
                        ''|'',
                        ''#lineaini'',
                        14,
                        ''#cmapead''
                    )
                OR
                    pac_map.f_valor_parametro(
                        ''|'',
                        ''#lineaini'',
                        14,
                        ''#cmapead''
                    ) IS NULL
            ) AND
                sinterf = pac_map.f_valor_parametro(
                    ''|'',
                    ''#lineaini'',
                    10,
                    ''#cmapead''
                )
            AND
                ttippag = pac_map.f_valor_parametro(
                    ''|'',
                    ''#lineaini'',
                    12,
                    ''#cmapead''
                )
        ORDER BY fefeadm
    ) a
WHERE
    ROWNUM = 1
)'
where ctabla = 100311;
COMMIT;
/
UPDATE map_tabla
   SET tfrom =
          '(SELECT (SELECT TIPLIQ FROM TIPO_LIQUIDACION WHERE CUENTA =  ccuenta || ccoletilla ) || ''|'' || NULL || ''|'' || NULL || ''|'' || iapunte || ''|'' || decode(TRIM(leading ''0'' FROM SUBSTR(otros, 91, 2)),null,null,''K8'') || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 116, 23)) || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 93, 23)) || ''|'' || SUBSTR(otros, 139, 4) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 153, 1)) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 156, 2)) || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 158, 23)) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 181, 23)) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 154, 2)) || ''|'' || NULL || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 222, 10)) || ''|'' || NULL || ''|'' || SUBSTR(otros, 242, 4) || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 71, 10)) || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 81, 10)) || ''|'' || tapunte || ''|'' || NULL || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 232, 10)) || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 258, 20)) || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 278, 2)) || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 280, 18)) || ''|'' || TO_CHAR(fconta, ''yyyy-mm-dd'') || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 298, 15)) || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 313, 10)) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 323, 1)) || ''|'' || NULL || ''|'' || PAC_ADM.F_GET_POSICION_RETAPLICA_SAP(TRIM(leading ''0'' FROM SUBSTR(otros, 324, 17))) || ''|'' || NULL || ''|'' || NULL linea FROM contab_asient_interf WHERE (idpago = pac_map.f_valor_parametro(''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro(''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL) AND sinterf = pac_map.f_valor_parametro(''|'', ''#lineaini'', 10, ''#cmapead'') AND ttippag = pac_map.f_valor_parametro(''|'', ''#lineaini'', 12, ''#cmapead'')) '
WHERE ctabla = 100312;
COMMIT;
DROP TABLE TIPO_LIQUIDACION;

create TABLE TIPO_LIQUIDACION
(CUENTA VARCHAR2(20), 
TIPLIQ number(3)
);

INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1630400100'	,	1	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1676880100'	,	10	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1682880100'	,	11	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1684050100'	,	12	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1684050200'	,	13	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1684050300'	,	14	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1684100100'	,	15	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1684150100'	,	16	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1684200100'	,	17	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1684200200'	,	18	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1684200300'	,	19	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1630400101'	,	2	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1904629900'	,	20	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1925100100'	,	21	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1925150100'	,	22	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2503400100'	,	23	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2503400400'	,	24	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2519053004'	,	25	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2519053005'	,	26	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2519053007'	,	27	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2519053014'	,	28	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2519055004'	,	29	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1630400103'	,	3	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2519055005'	,	30	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2519055007'	,	31	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2519056004'	,	32	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2519058001'	,	33	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2519058002'	,	34	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2519058006'	,	35	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2548100100'	,	36	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2549880100'	,	37	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2551880100'	,	38	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2552880100'	,	39	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1630400104'	,	4	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2554100200'	,	40	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2590700100'	,	41	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2630050100'	,	42	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2630100100'	,	43	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2820050200'	,	44	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4103050600'	,	45	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4121050101'	,	46	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4121400101'	,	47	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4121550101'	,	48	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4142400101'	,	49	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1630400107'	,	5	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4142500101'	,	50	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4144350101'	,	51	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4144400101'	,	52	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4144450101'	,	53	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4144550100'	,	54	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4144700101'	,	55	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4195300101'	,	56	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4195950100'	,	57	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5121050101'	,	58	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5121050102'	,	59	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1630400201'	,	6	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5151050100'	,	60	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5151600100'	,	61	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5151700100'	,	62	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5151800100'	,	63	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5151850100'	,	64	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5152100100'	,	65	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5152250100'	,	66	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5154050100'	,	67	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5154350100'	,	68	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5154350200'	,	69	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1630400206'	,	7	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5154550100'	,	70	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5154650100'	,	71	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5154800100'	,	72	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5154800300'	,	73	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4195250200'	,	74	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'4142800101'	,	75	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'2519053026'	,	76	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'5190600100'	,	77	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1630400210'	,	8	);
INSERT INTO TIPO_LIQUIDACION (CUENTA, TIPLIQ) VALUES (	'1675880100'	,	9	);

commit; 


update detmodconta_interf
set tseldia = replace(tseldia,'   LPAD (07, 2, ''0'')','   LPAD (30, 2, ''0'')')
where tseldia like '%314%';


update detmodconta_interf
set tseldia = replace(tseldia,'   LPAD (07, 2, ''0'')','   LPAD (30, 2, ''0'')')
where tseldia like '%314%';

update detmodconta_interf
set tseldia = replace(tseldia,'   LPAD (01, 2, ''0'')','   LPAD (260, 2, ''0'')')
where  tseldia like '%   LPAD (01, 2, ''0'')%'
and nlinea = 8;

update detmodconta_interf
set tseldia = replace(tseldia,'   LPAD (01, 2, ''0'')','   LPAD (260, 2, ''0'')')
where  tseldia like '%   LPAD (01, 2, ''0'')%'
and nlinea = 201;

update detmodconta_interf
set tseldia = replace(tseldia,'   LPAD (01, 2, ''0'')','   LPAD (260, 2, ''0'')')
where  tseldia like '%   LPAD (01, 2, ''0'')%'
and nlinea = 2;

update detmodconta_interf
set tseldia = replace(tseldia,'   LPAD (01, 2, ''0'')','   LPAD (258, 2, ''0'')')
where  tseldia like '%   LPAD (01, 2, ''0'')%'
and nlinea = 205;

update detmodconta_interf
set tseldia = replace(tseldia,'   LPAD (15, 2, ''0'')','   LPAD (255, 2, ''0'')')
where  tseldia like '%   LPAD (15, 2, ''0'')%'
and nlinea = 15;

update detmodconta_interf
set tseldia = replace(tseldia,'   LPAD (15, 2, ''0'')','   LPAD (255, 2, ''0'')')
where  tseldia like '%   LPAD (15, 2, ''0'')%'
and nlinea = 243;
update detmodconta_interf
set tseldia = replace(tseldia,'   LPAD (15, 2, ''0'')','   LPAD (255, 2, ''0'')')
where  tseldia like '%   LPAD (15, 2, ''0'')%'
and nlinea = 244;
update detmodconta_interf
set tseldia = replace(tseldia,'   LPAD (15, 2, ''0'')','   LPAD (255, 2, ''0'')')
where  tseldia like '%   LPAD (15, 2, ''0'')%'
and nlinea = 245;
update detmodconta_interf
set tseldia = replace(tseldia,'   LPAD (01, 2, ''0'')','   LPAD (260, 2, ''0'')')
where  tseldia like '%   LPAD (01, 2, ''0'')%'
and nlinea = 1;

update detmodconta_interf
set tseldia = replace(tseldia,'   LPAD (260, 2, ''0'')','   LPAD (260, 3, ''0'')')
where  tseldia like '%   LPAD (260, 2, ''0'')%';
commit;
/