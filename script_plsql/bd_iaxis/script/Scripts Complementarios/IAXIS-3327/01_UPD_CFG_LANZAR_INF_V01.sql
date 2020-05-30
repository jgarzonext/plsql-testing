-- IAXIS-3327 - Se ajustan los parámetros de la consulta y la consulta de productos
UPDATE cfg_lanzar_informes_params c 
  SET c.notnull = (case when c.norder in (3,4) then 0 else c.notnull end)
	   ,c.lvalor = (case when c.norder = 4 then 'SELECT:SELECT DISTINCT p.cactivi v, p.CGRUPO||'' - ''|| s.ttitulo d
  FROM activiprod p, titulopro s
 WHERE nvl(p.cactivo, 1) = 1
   AND p.cmodali = s.cmodali
   AND p.cramo = s.cramo
	 AND p.ctipseg = s.ctipseg
	 AND p.ccolect = s.ccolect
   AND s.cidioma = pac_md_common.f_get_cxtidioma
   AND p.CGRUPO IS NOT NULL
order by 2' else c.lvalor end)
where c.cempres = 24
  and c.cform = 'AXISLIST003'
	and c.cmap = 'reporteRangoDian';
COMMIT
/
