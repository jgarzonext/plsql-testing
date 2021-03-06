-- Cambios map_tabla - Anulacion Polizas Migradas - 20191211

update map_tabla mt 
set mt.tfrom = '(SELECT LINEA FROM ( SELECT LPAD(SUBSTR(OTROS,1,3),10,''0'')/*CODESCENARIO*/
|| ''|'' || ''0''||NVL(PAC_CONTA_SAP.GENERARUIDPARACOM(IDPAGO, TO_NUMBER(SUBSTR(OTROS,1,3)),PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'')),IDPAGO) /*REFUNIPAGO*/
|| ''|'' || DECODE(PAC_CONTA_SAP.F_POLIZA_MIGRADA(IDPAGO),''SI'',PAC_CONTA_SAP.F_BUSCA_NUMUNICO(TO_NUMBER(SUBSTR(OTROS,1,3)),IDPAGO,PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'')),''NO'',
          NVL(PAC_CONTA_SAP.GENERARUIDPARACOM(IDPAGO, TO_NUMBER(SUBSTR(OTROS,1,3)),PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'')),IDPAGO)) /*NUMUNICO*/
|| ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS,4,4) ) /*SOCIEDAD*/
|| ''|'' || DECODE(FF_BUSCADATOSINDSAP(12,LPAD(SUBSTR(OTROS,1,3),10,''0'')),0,TO_CHAR(FCONTA,''yyyy-MM-dd''),TO_CHAR(FEFEADM,''yyyy-MM-dd'')) /*FECCONTABLE*/
|| ''|'' || TO_CHAR(FCONTA,''yyyy-MM-dd'') /*FECDOC*/
|| ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS,9,4) ) /*MONEDA*/
|| ''|'' || DECODE(PAC_CONTA_SAP.F_APLI_DIVISA_SAP(c.idpago),''SI'',PAC_CONTA_SAP.F_DIVISA_PROD(IDPAGO,''COP'',FEFEADM),''NO'','''')/*TASPAC*/
|| ''|'' || DECODE(PAC_CONTA_SAP.F_APLI_DIVISA_SAP(c.idpago),''SI'',(DECODE ((SELECT EC.CMONEDA  FROM MONEDAS M, ECO_CODMONEDAS EC WHERE M.CIDIOMA = PAC_MD_COMMON.F_GET_CXTIDIOMA AND M.CMONINT = EC.CMONEDA AND M.CMONEDA = (SELECT CMONEDA FROM CODIDIVISA WHERE CDIVISA = (SELECT CDIVISA FROM PRODUCTOS WHERE SPRODUC = (SELECT SPRODUC FROM SEGUROS WHERE SSEGURO = (SELECT SSEGURO FROM RECIBOS WHERE NRECIBO = IDPAGO))))), ''COP'', NULL, DECODE((SELECT EC.CMONEDA  FROM MONEDAS M, ECO_CODMONEDAS EC WHERE M.CIDIOMA = PAC_MD_COMMON.F_GET_CXTIDIOMA AND M.CMONINT = EC.CMONEDA AND M.CMONEDA = (SELECT CMONEDA FROM CODIDIVISA WHERE CDIVISA = (SELECT CDIVISA FROM PRODUCTOS WHERE SPRODUC = (SELECT SPRODUC FROM SEGUROS WHERE SSEGURO = (SELECT SSEGURO FROM RECIBOS WHERE NRECIBO = IDPAGO))))),''EUR'',''USD'',''USD''))),''NO'','''') /*MONUSD*/
|| ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS,57,13)) /*ORIGEN*/
|| ''|'' || TLIBRO /*LEDGER*/ LINEA
FROM CONTAB_ASIENT_INTERF C
WHERE (IDPAGO = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16, ''#cmapead'') OR PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16,''#cmapead'') IS NULL)
AND SINTERF = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'') AND TTIPPAG = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',14, ''#cmapead'') ORDER BY FEFEADM ) A
WHERE ROWNUM = 1)',
mt.tdescrip = 'CABECERA'
where mt.ctabla = 100311;

update map_tabla mt 
set mt.tfrom = '(SELECT (SELECT TIPLIQ FROM TIPO_LIQUIDACION WHERE CUENTA = CCUENTA || CCOLETILLA) /*TIPOLIQUIDACION*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, FF_BUSCADATOSSAP(3, CCUENTA || CCOLETILLA), 10)) /*TERCERO*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, FF_BUSCADATOSSAP(4, CCUENTA || CCOLETILLA), 10)) /*SEGMENTO*/
     || ''|'' || DECODE(PAC_CONTA_SAP.F_SUCURSAL_SAP(CCUENTA || CCOLETILLA),''SI'',NVL(PAC_CONTA_SAP.F_DIVISON_SAP(PAC_MAP.F_VALOR_PARAMETRO(''|'', ''#lineaini'', 16, ''#cmapead''),PAC_MAP.F_VALOR_PARAMETRO(''|'', ''#lineaini'', 10, ''#cmapead'')),''''),''NO'',SUBSTR(OTROS, FF_BUSCADATOSSAP(2, CCUENTA || CCOLETILLA), 4)) /*DIVISION*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, FF_BUSCADATOSSAP(5, CCUENTA || CCOLETILLA), 20)) /*POLIZA*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, FF_BUSCADATOSSAP(12, CCUENTA || CCOLETILLA), 10)) /*CERTIFICADO*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, 298, 15)) /*NROSINIESTRO*/
     || ''|'' || '''' /*PVENTA -- THIS WILL GO BLANK*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, FF_BUSCADATOSSAP(6, CCUENTA || CCOLETILLA), 2)) /*REGION*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, FF_BUSCADATOSSAP(7, CCUENTA || CCOLETILLA), 18)) /*PRODUCTO*/
     || ''|'' || DECODE(FF_BUSCADATOSINDSAP(12,SUBSTR(OTROS,1,3)),0,TO_CHAR(FCONTA,''yyyy-MM-dd''),TO_CHAR(FEFEADM,''yyyy-MM-dd'')) /*FECINIPOL*/
     || ''|'' || '''' /*NATURALEZACONTABLE -- THIS WILL GO BLANK*/
     || ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS, FF_BUSCADATOSSAP(10, CCUENTA || CCOLETILLA), 2)) /*INDICADORIVA */
     || ''|'' || IAPUNTE /*VALOR*/
     || ''|'' || DECODE(PAC_CONTA_SAP.F_SUCURSAL_SAP(CCUENTA || CCOLETILLA),''SI'',DECODE(PAC_CONTA_SAP.F_SUCURSAL_PROD(CCUENTA || CCOLETILLA),''SI'',
     NVL(PAC_CONTA_SAP.F_DIVISON_SAP(PAC_MAP.F_VALOR_PARAMETRO(''|'', ''#lineaini'', 16, ''#cmapead''),PAC_MAP.F_VALOR_PARAMETRO(''|'', ''#lineaini'', 10, ''#cmapead'')),''''),''NO'',SUBSTR(OTROS, FF_BUSCADATOSSAP(2, CCUENTA || CCOLETILLA),4)),''NO'','''') /*SUCURSAL PRODUCCION -- THIS WILL USE ONLY FOR TIPO LIQ : 44 */
     || ''|'' || ''C'' /*VIAPAGO  -- ALWAYS ''C'' */
     || ''|'' || SUBSTR(OTROS, FF_BUSCADATOSSAP(1, CCUENTA || CCOLETILLA), 4) /*CONDPAGO*/
     || ''|'' || DECODE(PAC_CONTA_SAP.F_APLICA_BASERET_SAP(CCUENTA || CCOLETILLA),''SI'',PAC_CONTA_SAP.F_BASERET_SAP(PAC_MAP.F_VALOR_PARAMETRO(''|'', ''#lineaini'', 16, ''#cmapead''),PAC_MAP.F_VALOR_PARAMETRO(''|'', ''#lineaini'', 10, ''#cmapead'')),''NO'','''') /*BASERET  -- THIS WILL USE ONLY FOR TIPO LIQ : 44 */
  LINEA
FROM CONTAB_ASIENT_INTERF
WHERE (IDPAGO =PAC_MAP.F_VALOR_PARAMETRO(''|'', ''#lineaini'', 16, ''#cmapead'') OR PAC_MAP.F_VALOR_PARAMETRO(''|'', ''#lineaini'', 16, ''#cmapead'') IS NULL)
AND SINTERF = PAC_MAP.F_VALOR_PARAMETRO(''|'', ''#lineaini'', 10, ''#cmapead'')
AND TTIPPAG = PAC_MAP.F_VALOR_PARAMETRO(''|'', ''#lineaini'', 14, ''#cmapead''))',
mt.tdescrip = 'DETALLE'
where mt.ctabla = 100312;

commit;
/