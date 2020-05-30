
delete from map_det_tratar where cmapead = 'I031S' ;
delete from map_xml where cmapead = 'I031S' ;
delete from map_detalle where cmapead = 'I031S' ;
commit;
-----------------------------------------------
--Cambis de 20 Aug-2019
alter table MOVCONTASAP add SINTERF number;
-----------------------------------------------

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 10, 0, 1, 'sinterf');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 11, 1, 1, 'cempres');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 12, 0, 1, 'codEscenario');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 13, 1, 1, 'refUniPago');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 14, 1, 2, 'numUnico');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 15, 1, 3, 'sociedad');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 16, 1, 4, 'fecContable');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 17, 1, 5, 'fecDoc');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 18, 1, 6, 'moneda');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 19, 1, 7, 'tasPac');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 20, 1, 8, 'monUsd');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 21, 1, 9, 'origen');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 22, 1, 10, 'ledger');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 23, 0, 1, 'tipoLiquidacion');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 24, 1, 1, 'tercero');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 25, 1, 2, 'segmento');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 26, 1, 3, 'division');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 27, 1, 4, 'poliza');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 28, 1, 5, 'certificado');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 29, 1, 6, 'nroSiniestro');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 30, 1, 7, 'pventa');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 31, 1, 8, 'region');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 32, 1, 9, 'producto');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 33, 1, 10, 'fecIniPol');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 34, 1, 11, 'naturalezaContable');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 35, 1, 12, 'indicadorIva');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 36, 1, 13, 'valor');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 37, 1, 14, 'sucursal');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 38, 1, 15, 'viaPago');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 39, 1, 16, 'condPago');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 40, 1, 17, 'baseRet');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 41, 0, 1, 'porcComisionNegocio');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 42, 1, 1, 'porcAdmonCoaseguro');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 43, 0, 1, 'codigoIntermediario');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 44, 1, 1, 'porcPartcIntermediario');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 45, 1, 2, 'tipoInterm');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 46, 1, 3, 'regimen');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 47, 0, 1, 'codigoCoaseguro');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 48, 1, 1, 'porcPartcCoaseguro');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 49, 0, 1, 'personaRel');

insert into map_detalle (CMAPEAD, NORDEN, NPOSICION, NLONGITUD, TTAG)
values ('I031S', 50, 1, 1, 'porcPartcConsorc');

commit;
-----------------------------------------------

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', '0', 1, 'contab_out', null, 100310, null);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'contab_out', 2, 'sinterf', null, null, 10);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'contab_out', 3, 'cempres', null, null, 11);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'contab_out', 4, 'cabecera', null, 100311, null);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'cabecera', 1, 'codEscenario', null, null, 12);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'cabecera', 2, 'refUniPago', null, null, 13);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'cabecera', 3, 'numUnico', null, null, 14);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'cabecera', 4, 'sociedad', null, null, 15);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'cabecera', 5, 'fecContable', null, null, 16);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'cabecera', 6, 'fecDoc', null, null, 17);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'cabecera', 7, 'moneda', null, null, 18);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'cabecera', 8, 'tasPac', null, null, 19);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'cabecera', 9, 'monUsd', null, null, 20);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'cabecera', 10, 'origen', null, null, 21);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'cabecera', 11, 'ledger', null, null, 22);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'contab_out', 5, 'detalle', null, 100312, null);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 1, 'tipoLiquidacion', null, null, 23);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 2, 'tercero', null, null, 24);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 3, 'segmento', null, null, 25);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 4, 'division', null, null, 26);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 5, 'poliza', null, null, 27);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 6, 'certificado', null, null, 28);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 7, 'nroSiniestro', null, null, 29);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 8, 'pventa', null, null, 30);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 9, 'region', null, null, 31);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 10, 'producto', null, null, 32);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 11, 'fecIniPol', null, null, 33);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 12, 'naturalezaContable', null, null, 34);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 13, 'indicadorIva', null, null, 35);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 14, 'valor', null, null, 36);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 15, 'sucursal', null, null, 37);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 16, 'viaPago', null, null, 38);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 17, 'condPago', null, null, 39);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'detalle', 18, 'baseRet', null, null, 40);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'contab_out', 6, 'porcentajes', null, 100313, null);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'porcentajes', 1, 'porcComisionNegocio', null, null, 41);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'porcentajes', 2, 'porcAdmonCoaseguro', null, null, 42);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'porcentajes', 7, 'intermediario', null, 100314, null);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'intermediario', 1, 'codigoIntermediario', null, null, 43);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'intermediario', 2, 'porcPartcIntermediario', null, null, 44);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'intermediario', 3, 'tipoInterm', null, null, 45);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'intermediario', 4, 'regimen', null, null, 46);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'porcentajes', 8, 'coaseguro', null, 100316, null);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'coaseguro', 1, 'codigoCoaseguro', null, null, 47);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'coaseguro', 2, 'porcPartcCoaseguro', null, null, 48);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'porcentajes', 9, 'consorcio', null, 100315, null);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'consorcio', 1, 'personaRel', null, null, 49);

insert into map_xml (CMAPEAD, TPARE, NORDFILL, TTAG, CATRIBUTS, CTABLAFILLS, NORDEN)
values ('I031S', 'consorcio', 2, 'porcPartcConsorc', null, null, 50);

commit;
-----------------------------------------------

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'baseRet', '1', null, 40, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'cempres', '1', null, 11, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'certificado', '1', null, 28, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'codEscenario', '1', null, 12, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'codigoCoaseguro', '1', null, 47, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'codigoIntermediario', '1', null, 43, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'condPago', '1', null, 39, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'division', '1', null, 26, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'fecContable', '1', null, 16, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'fecDoc', '1', null, 17, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'fecIniPol', '1', null, 33, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'indicadorIva', '1', null, 35, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'ledger', '1', null, 22, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'monUsd', '1', null, 20, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'moneda', '1', null, 18, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'naturalezaContable', '1', null, 34, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'nroSiniestro', '1', null, 29, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'numUnico', '1', null, 14, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'origen', '1', null, 21, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'personaRel', '1', null, 49, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'poliza', '1', null, 27, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'porcAdmonCoaseguro', '1', null, 42, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'porcComisionNegocio', '1', null, 41, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'porcPartcCoaseguro', '1', null, 48, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'porcPartcConsorc', '1', null, 50, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'porcPartcIntermediario', '1', null, 44, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'producto', '1', null, 32, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'pventa', '1', null, 30, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'refUniPago', '1', null, 13, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'regimen', '1', null, 46, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'region', '1', null, 31, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'segmento', '1', null, 25, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'sinterf', '1', null, 10, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'sociedad', '1', null, 15, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'sucursal', '1', null, 37, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'tasPac', '1', null, 19, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'tercero', '1', null, 24, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'tipoInterm', '1', null, 45, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'tipoLiquidacion', '1', null, 23, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'valor', '1', null, 36, 'E');

insert into map_det_tratar (CMAPEAD, TCONDICION, CTABLA, NVECES, TCAMPO, CTIPCAMPO, TMASCARA, NORDEN, TSETWHERE)
values ('I031S', '0', 0, 1, 'viaPago', '1', null, 38, 'E');

commit;
----------------------------------------------------

update map_tabla mt 
set mt.tfrom ='(SELECT LINEA FROM (
SELECT LPAD(SUBSTR(OTROS,1,3),10,''0'')/*CODESCENARIO*/
|| ''|''
|| ''0''||NVL(PAC_CONTA_SAP.GENERARUIDPARACOM(IDPAGO, TO_NUMBER(SUBSTR(OTROS,1,3))),IDPAGO) /*REFUNIPAGO*/
|| ''|''
|| NVL(PAC_CONTA_SAP.GENERARUIDPARACOM(IDPAGO, TO_NUMBER(SUBSTR(OTROS,1,3))),IDPAGO) /*NUMUNICO*/     
|| ''|''
|| TRIM(LEADING ''0'' FROM SUBSTR(OTROS,4,4) ) /*SOCIEDAD*/
|| ''|''
|| DECODE(FF_BUSCADATOSINDSAP(12,LPAD(SUBSTR(OTROS,1,3),10,''0'')),0,TO_CHAR(FCONTA,''yyyy-MM-dd''),TO_CHAR(FEFEADM,''yyyy-MM-dd'')) /*FECCONTABLE*/
|| ''|''
|| TO_CHAR(FCONTA,''yyyy-MM-dd'') /*FECDOC*/
|| ''|''
|| TRIM(LEADING ''0'' FROM SUBSTR(OTROS,9,4) ) /*MONEDA*/
|| ''|''
|| DECODE (PAC_ECO_TIPOCAMBIO.F_CAMBIO((SELECT EC.CMONEDA  FROM MONEDAS M, ECO_CODMONEDAS EC WHERE M.CIDIOMA = 8 AND M.CMONINT = EC.CMONEDA AND M.CMONEDA = (SELECT CMONEDA FROM CODIDIVISA WHERE CDIVISA = (SELECT CDIVISA FROM PRODUCTOS WHERE SPRODUC = (SELECT SPRODUC FROM SEGUROS WHERE SSEGURO = (SELECT SSEGURO FROM SEGUROS WHERE NPOLIZA = TRIM (LEADING ''0'' FROM SUBSTR (OTROS, 259, 19))))))), TRIM(LEADING ''0'' FROM SUBSTR(OTROS,9,4) ), FEFEADM), 1, NULL, PAC_ECO_TIPOCAMBIO.F_CAMBIO((SELECT EC.CMONEDA  FROM MONEDAS M, ECO_CODMONEDAS EC WHERE M.CIDIOMA = 8 AND M.CMONINT = EC.CMONEDA AND M.CMONEDA = (SELECT CMONEDA FROM CODIDIVISA WHERE CDIVISA = (SELECT CDIVISA FROM PRODUCTOS WHERE SPRODUC = (SELECT SPRODUC FROM SEGUROS WHERE SSEGURO = (SELECT SSEGURO FROM SEGUROS WHERE NPOLIZA = TRIM (LEADING ''0'' FROM SUBSTR (OTROS, 259, 19))))))), TRIM(LEADING ''0'' FROM SUBSTR(OTROS,9,4) ), FEFEADM)) /*TASPAC*/
|| ''|''
||DECODE ((SELECT EC.CMONEDA  FROM MONEDAS M, ECO_CODMONEDAS EC WHERE M.CIDIOMA = PAC_MD_COMMON.F_GET_CXTIDIOMA AND M.CMONINT = EC.CMONEDA AND M.CMONEDA = (SELECT CMONEDA FROM CODIDIVISA WHERE CDIVISA = (SELECT CDIVISA FROM PRODUCTOS WHERE SPRODUC = (SELECT SPRODUC FROM SEGUROS WHERE SSEGURO = (SELECT SSEGURO FROM SEGUROS WHERE NPOLIZA = TRIM (LEADING ''0'' FROM SUBSTR (OTROS, 259, 19))))))), ''COP'', NULL,  DECODE((SELECT EC.CMONEDA  FROM MONEDAS M, ECO_CODMONEDAS EC WHERE M.CIDIOMA = PAC_MD_COMMON.F_GET_CXTIDIOMA AND M.CMONINT = EC.CMONEDA AND M.CMONEDA = (SELECT CMONEDA FROM CODIDIVISA WHERE CDIVISA = (SELECT CDIVISA FROM PRODUCTOS WHERE SPRODUC = (SELECT SPRODUC FROM SEGUROS WHERE SSEGURO = (SELECT SSEGURO FROM SEGUROS WHERE NPOLIZA = TRIM (LEADING ''0'' FROM SUBSTR (OTROS, 259, 19))))))),''EUR'',''USD'',''USD'')) /*MONUSD*/
|| ''|''
|| TRIM(LEADING ''0'' FROM SUBSTR(OTROS,57,13)) /*ORIGEN*/
|| ''|''
|| TLIBRO /*LEDGER*/
 LINEA
FROM CONTAB_ASIENT_INTERF C
WHERE (IDPAGO = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16, ''#cmapead'') OR PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16,''#cmapead'') IS NULL) 
AND SINTERF = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'')
AND TTIPPAG = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',14, ''#cmapead'') 
ORDER BY FEFEADM ) A
WHERE ROWNUM = 1
)',
mt.tdescrip = 'CABECERA'
where mt.ctabla = 100311;

update map_tabla mt 
set mt.tfrom ='(SELECT (SELECT TIPLIQ FROM TIPO_LIQUIDACION WHERE CUENTA = CCUENTA || CCOLETILLA) /*tipoLiquidacion*/
     || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, ff_buscadatosSAP(3, ccuenta || ccoletilla), 10)) /*tercero*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, FF_BUSCADATOSSAP(4, CCUENTA || CCOLETILLA), 10)) /*segmento*/
     || ''|'' || SUBSTR(OTROS, FF_BUSCADATOSSAP(2, CCUENTA || CCOLETILLA), 4) /*division*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, FF_BUSCADATOSSAP(5, CCUENTA || CCOLETILLA), 20)) /*poliza*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, FF_BUSCADATOSSAP(12, CCUENTA || CCOLETILLA), 10)) /*certificado*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, 298, 15)) /*nroSiniestro*/
     || ''|'' || '''' /*pventa -- this will go blank*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, FF_BUSCADATOSSAP(6, CCUENTA || CCOLETILLA), 2)) /*region*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, FF_BUSCADATOSSAP(7, CCUENTA || CCOLETILLA), 18)) /*producto*/ 
     || ''|'' || TO_CHAR(FEFEADM, ''yyyy-mm-dd'') /*fecIniPol*/
     || ''|'' || '''' /*naturalezaContable -- this will go blank*/    
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, FF_BUSCADATOSSAP(10, CCUENTA || CCOLETILLA), 2)) /*indicadorIva */      
     || ''|'' || IAPUNTE /*valor*/
     || ''|'' ||  '''' /*sucursal -- for now this will go blank(Agente sugursal based on scenario)*/   
     || ''|'' || ''C'' /*viaPago  -- Always ''E'' */
     || ''|'' || SUBSTR(OTROS, FF_BUSCADATOSSAP(1, CCUENTA || CCOLETILLA), 4) /*condPago*/
     || ''|'' || '''' /*baseRet  -- for now this will go blank  */                       
  LINEA
FROM contab_asient_interf
WHERE (idpago =pac_map.f_valor_parametro(''|'', ''#lineaini'', 16, ''#cmapead'') OR pac_map.f_valor_parametro(''|'', ''#lineaini'', 16, ''#cmapead'') IS NULL) 
AND sinterf = pac_map.f_valor_parametro(''|'', ''#lineaini'', 10, ''#cmapead'') 
AND ttippag = pac_map.f_valor_parametro(''|'', ''#lineaini'', 14, ''#cmapead''))',
mt.tdescrip = 'DETALLE'
where mt.ctabla = 100312;

commit;

----------------------------------------------------
--20-Aug-2019 : Changes
update map_tabla mt 
set mt.tfrom ='(SELECT FF_BUSCADATOSINDSAP(3,M.SSEGURO) LINEA FROM MOVCONTASAP M,CONTAB_ASIENT_INTERF CAI
WHERE (CAI.IDPAGO = M.NRECIBO AND CAI.CCUENTA NOT IN (''163040'',''192515'',''282005'',''515210'',''830505'',''819595'',''515225'',''512105'',''167688'',''255288''))
   AND M.NRECIBO = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16,''#cmapead'')
   AND M.SINTERF = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead''))',
mt.tdescrip = 'PORCENTAJES'
where mt.ctabla = 100313;
----------------------------------------------------
update map_tabla mt 
set mt.tfrom ='(SELECT DECODE(PAC_CONTA_SAP.F_INTERMEDIARIO_SAP(),
''AC'',
(SELECT DISTINCT P.SPERSON_ACRE||''|''||AC.PPARTICI||''|''||DECODE(PAC_CONTA_SAP.F_TIPO_AGENTE_SAP(PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16,''#cmapead''),PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'')),3,''A'',5,''A'',6,''A'',7,''A'',4,''C'')||''|''||DECODE(PR.CREGFISCAL, 1, ''S'', ''C'') LINEA
 FROM PER_PERSONAS P,PER_REGIMENFISCAL PR, AGE_CORRETAJE AC,MOVCONTASAP M,CONTAB_ASIENT_INTERF CAI
WHERE P.SPERSON = PR.SPERSON
AND PR.CAGENTE = AC.CAGENTE
AND AC.SSEGURO = M.SSEGURO 
AND (CAI.IDPAGO = M.NRECIBO AND CAI.CCUENTA NOT IN (''163040'',''192515'',''282005'',''515210'',''830505'',''819595'',''515225'',''512105'',''167688'',''255288''))
AND M.NRECIBO = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16,''#cmapead'')
AND M.SINTERF = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'')),
''A'',
(SELECT DISTINCT P.SPERSON_ACRE||''|''||NVL(PAC_CONTA_SAP.F_AGENTECOM(PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16,''#cmapead''),PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'')),0)||''|''||DECODE(A.CTIPAGE,3,''A'',5,''A'',6,''A'',7,''A'',4,''C'')||''|''||DECODE(PR.CREGFISCAL, 1, ''S'', ''C'') LINEA
 FROM PER_PERSONAS P,PER_REGIMENFISCAL PR, AGENTES A,MOVCONTASAP M,CONTAB_ASIENT_INTERF CAI
WHERE P.SPERSON = A.SPERSON 
AND PR.CAGENTE = A.CAGENTE
AND A.CAGENTE = M.CAGENTE
AND (CAI.IDPAGO = M.NRECIBO AND CAI.CCUENTA NOT IN (''163040'',''192515'',''282005'',''515210'',''830505'',''819595'',''515225'',''512105'',''167688'',''255288''))
AND M.NRECIBO = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16,''#cmapead'')
AND M.SINTERF = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'')),
''NO'','') LINEA FROM DUAL)',
mt.tdescrip = 'INTERMEDIARIO'
where mt.ctabla = 100314;
----------------------------------------------------
update map_tabla mt 
set mt.tfrom ='(SELECT P.SPERSON_ACRE || ''|'' || B.PCESCOA LINEA
  FROM COMPANIAS A, COACEDIDO B, PER_PERSONAS P,MOVCONTASAP M,CONTAB_ASIENT_INTERF CAI
 WHERE P.SPERSON  = A.SPERSON
   AND A.CCOMPANI = B.CCOMPAN
   AND B.SSEGURO  = M.SSEGURO
   AND (CAI.IDPAGO = M.NRECIBO AND CAI.CCUENTA NOT IN (''163040'',''192515'',''282005'',''515210'',''830505'',''819595'',''515225'',''512105'',''167688'',''255288''))
   AND M.NRECIBO = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16,''#cmapead'')
   AND M.SINTERF = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'')  
UNION
SELECT P.SPERSON_ACRE || ''|'' || (100 - B.PLOCCOA) LINEA
  FROM COMPANIAS A, COACUADRO B, PER_PERSONAS P,MOVCONTASAP M,CONTAB_ASIENT_INTERF CAI
 WHERE P.SPERSON  = A.SPERSON
   AND A.CCOMPANI = B.CCOMPAN  
   AND B.SSEGURO  = M.SSEGURO
   AND (CAI.IDPAGO = M.NRECIBO AND CAI.CCUENTA NOT IN (''163040'',''192515'',''282005'',''515210'',''830505'',''819595'',''515225'',''512105'',''167688'',''255288''))
   AND M.NRECIBO = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16,''#cmapead'')
   AND M.SINTERF = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead''))',
mt.tdescrip = 'CONSORCIO'
where mt.ctabla = 100315;
----------------------------------------------------
update map_tabla mt 
set mt.tfrom ='(SELECT P.SPERSON_DEUD ||''|''|| B.PPARTICIPACION LINEA
  FROM TOMADORES A, PER_PERSONAS_REL B, PER_PERSONAS P,MOVCONTASAP M,CONTAB_ASIENT_INTERF CAI
 WHERE P.SPERSON = B.SPERSON_REL
   AND A.SPERSON = B.SPERSON
   AND A.CAGRUPA = B.CAGRUPA
   AND B.CAGRUPA <> 0
   AND A.SSEGURO = M.SSEGURO
   AND (CAI.IDPAGO = M.NRECIBO AND CAI.CCUENTA NOT IN (''163040'',''192515'',''282005'',''515210'',''830505'',''819595'',''515225'',''512105'',''167688'',''255288''))  
   AND M.NRECIBO = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16,''#cmapead'')
   AND M.SINTERF = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead''))',
mt.tdescrip = 'COASEGURO'
where mt.ctabla = 100316;

commit;

