/* Formatted on 2020/02/24 16:41 (Formatter Plus v4.8.8) */
UPDATE det_lanzar_informes
   SET cinforme = 'Trazabilidad1.jasper'
 WHERE cinforme LIKE '%jr%' AND cmap = 'Trazabilidad';
COMMIT ;