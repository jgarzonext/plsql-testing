UPDATE MAP_TABLA MT
SET MT.TFROM = '(SELECT LINEA FROM ( SELECT LPAD(SUBSTR(OTROS,1,3),10,''0'')/*CODESCENARIO*/
|| ''|'' || ''0''||NVL(PAC_CONTA_SAP.GENERARUIDPARACOM(IDPAGO, TO_NUMBER(SUBSTR(OTROS,1,3)),PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'')),IDPAGO) /*REFUNIPAGO*/
|| ''|'' || DECODE(PAC_CONTA_SAP.F_POLIZA_MIGRADA(IDPAGO),''SI'',PAC_CONTA_SAP.F_BUSCA_NUMUNICO(TO_NUMBER(SUBSTR(OTROS,1,3)),IDPAGO,PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'')),''NO'',
          NVL(PAC_CONTA_SAP.GENERARUIDPARACOM(IDPAGO, TO_NUMBER(SUBSTR(OTROS,1,3)),PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'')),IDPAGO)) /*NUMUNICO*/
|| ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS,4,4) ) /*SOCIEDAD*/
|| ''|'' || DECODE(FF_BUSCADATOSINDSAP(12,LPAD(SUBSTR(OTROS,1,3),10,''0'')),0,TO_CHAR(FCONTA,''yyyy-MM-dd''),TO_CHAR(FEFEADM,''yyyy-MM-dd'')) /*FECCONTABLE*/
|| ''|'' || TO_CHAR(FCONTA,''yyyy-MM-dd'') /*FECDOC*/
|| ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS,9,4) ) /*MONEDA*/
|| ''|'' || DECODE(PAC_CONTA_SAP.F_APLI_DIVISA_SAP(c.idpago),''SI'',PAC_CONTA_SAP.F_DIVISA_PROD(IDPAGO,''COP'',FCONTA),''NO'','''')/*TASPAC*/
|| ''|'' || DECODE(PAC_CONTA_SAP.F_APLI_DIVISA_SAP(c.idpago),''SI'',(DECODE ((SELECT EC.CMONEDA  FROM MONEDAS M, ECO_CODMONEDAS EC WHERE M.CIDIOMA = PAC_MD_COMMON.F_GET_CXTIDIOMA AND M.CMONINT = EC.CMONEDA AND M.CMONEDA = (SELECT CMONEDA FROM CODIDIVISA WHERE CDIVISA = (SELECT CDIVISA FROM PRODUCTOS WHERE SPRODUC = (SELECT SPRODUC FROM SEGUROS WHERE SSEGURO = (SELECT SSEGURO FROM RECIBOS WHERE NRECIBO = IDPAGO))))), ''COP'', NULL, DECODE((SELECT EC.CMONEDA  FROM MONEDAS M, ECO_CODMONEDAS EC WHERE M.CIDIOMA = PAC_MD_COMMON.F_GET_CXTIDIOMA AND M.CMONINT = EC.CMONEDA AND M.CMONEDA = (SELECT CMONEDA FROM CODIDIVISA WHERE CDIVISA = (SELECT CDIVISA FROM PRODUCTOS WHERE SPRODUC = (SELECT SPRODUC FROM SEGUROS WHERE SSEGURO = (SELECT SSEGURO FROM RECIBOS WHERE NRECIBO = IDPAGO))))),''EUR'',''USD'',''USD''))),''NO'','''') /*MONUSD*/
|| ''|'' || TRIM(LEADING ''0'' FROM SUBSTR(OTROS,57,13)) /*ORIGEN*/
|| ''|'' || TLIBRO /*LEDGER*/ LINEA
FROM CONTAB_ASIENT_INTERF C
WHERE (IDPAGO = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16, ''#cmapead'') OR PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',16,''#cmapead'') IS NULL)
AND SINTERF = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',10,''#cmapead'') AND TTIPPAG = PAC_MAP.F_VALOR_PARAMETRO(''|'',''#lineaini'',14, ''#cmapead'') ORDER BY FEFEADM ) A
WHERE ROWNUM = 1)'
WHERE MT.CTABLA = 100311;

commit;
/