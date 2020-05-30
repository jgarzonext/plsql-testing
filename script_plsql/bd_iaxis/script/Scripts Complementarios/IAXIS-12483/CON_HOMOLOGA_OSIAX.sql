UPDATE CON_HOMOLOGA_OSIAX O
SET O.QUERY_INSERT = 'select a.sperson||PAC_CONVIVENCIA.f_convivencia_osiris(a.sperson, 2)  || '''''','''''' || SUBSTR(f_nombre(a.sperson, 4, ''''),1,20)
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
||'''''','''''' ||case when a.ctipper = 1 then DECODE(A.CSEXPER, 1, 2, 2, 1, 0) else null end
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
 WHERE O.TIAXIS = 'PER_PERSONAS'
   AND O.NORDEN = 1
   AND O.TOSIRIS = 'S03500';
   
commit;
/   