/* Actualizar sexo de las PN y PJ */
UPDATE CON_HOMOLOGA_OSIAX
SET QUERY_INSERT = 'select a.sperson||PAC_CONVIVENCIA.f_convivencia_osiris(a.sperson, 2)  || '''''','''''' || SUBSTR(f_nombre(a.sperson, 4, ''''),1,20)
||'''''','''''' || SUBSTR(f_nombre(a.sperson, 4, ''''),1,250)
||'''''','''''' || (CASE WHEN(A.CTIPIDE = ''37'') THEN  SUBSTR(A.NNUMIDE, 0, LENGTH(A.NNUMIDE)-1) ELSE A.NNUMIDE END)
||'''''','' || PAC_CONVIVENCIA.f_convivencia_osiris(a.sperson, 1)
||'','''''' ||a.cusualt
||'''''','''''' ||a.cusuari
||'''''','''''' ||a.falta
||'''''','''''' ||a.fmovimi
||'''''','''''' ||''''
||'''''','''''' ||''''
||'''''','''''' ||''''
||'''''','''''' ||a.fnacimi
||'''''','''''' ||DECODE(a.csexper, 1, 2, 2, 1, 0)
||'''''','' ||1
||'','''''' ||a.tdigitoide
||'''''','''''' ||b.tapelli1
||'''''','''''' ||b.tapelli2
||'''''','''''' ||b.tnombre1
||'''''','''''' ||b.tnombre1
||'''''','''''' ||''''
||'''''','''''' ||''''
||'''''','''''' ||''''
||'''''','''''' ||''''||''''''''
FROM per_personas a, per_detper b
where a.sperson = b.sperson
and a.sperson  = :PSPERSON'
WHERE TOSIRIS = 'S03500' AND LABEL_CAMPO_OSI = 'INSERT' ;
COMMIT;


UPDATE CON_HOMOLOGA_OSIAX
SET TIPVALOR_IAX = 'VARCHAR'
WHERE CAMPO_OSI IN ('00000012','00000111', '00000095');
COMMIT;

UPDATE CON_HOMOLOGA_OSIAX
SET QUERY_SELECT = 'SELECT lpad(CPROVIN,2,''0'') FROM PER_DIRECCIONES WHERE SPERSON = :PSPERSON AND CDOMICI = 1'
WHERE CAMPO_OSI IN ('00000111');
COMMIT;

UPDATE CON_HOMOLOGA_OSIAX
SET QUERY_SELECT = 'SELECT lpad(CPROVIN,2,''0'')||lpad(CPOBLAC,3,''0'') FROM PER_DIRECCIONES WHERE SPERSON = :PSPERSON AND CDOMICI = 1'
WHERE CAMPO_OSI IN ('00000095');
COMMIT;
/
