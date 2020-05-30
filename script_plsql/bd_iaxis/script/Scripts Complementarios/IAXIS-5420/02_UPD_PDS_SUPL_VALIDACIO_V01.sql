/*
  IAXIS-5420   JLTS     22/11/2019
  Se actualiza la sentencia Nro 2 del producto 8062 para Modificación de preguntas de riesgo (685) ya que estaba fallando
*/

DECLARE
  v_contexto number := 0;
	v_select VARCHAR2(30000) := 'BEGIN
   SELECT COUNT(1)
     INTO :mi_cambio
     FROM (SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo
             FROM estpregunseg e, estseguros s, pregunpro p
            WHERE e.sseguro = :psseguro
              AND e.nmovimi = :pnmovimi
              AND e.cpregun NOT IN(1, 4049)
              AND e.nriesgo IN(SELECT r.nriesgo
                                 FROM riesgos r
                                WHERE r.sseguro = :pssegpol
                                  AND r.fanulac IS NULL)
              AND s.sseguro = e.sseguro
              AND s.sproduc = p.sproduc
              AND e.cpregun = p.cpregun
              AND((p.cpretip <> 2)
                  OR(p.cpretip = 2
                     AND p.esccero = 1))
    UNION
      SELECT e.cpregun as cepregun, 0 as crespue, TO_CHAR(e.nvalor) as trespue, e.nriesgo as nriesgo
             FROM estpregunsegtab e, estseguros s, pregunpro p
            WHERE e.sseguro = :psseguro
              AND e.nmovimi = :pnmovimi
              AND e.cpregun NOT IN(1, 4049)
              AND e.nriesgo IN(SELECT r.nriesgo
                                 FROM riesgos r
                                WHERE r.sseguro = :pssegpol
                                  AND r.fanulac IS NULL)
              AND s.sseguro = e.sseguro
              AND s.sproduc = p.sproduc
              AND e.cpregun = p.cpregun
              AND((p.cpretip <> 2)
                  OR(p.cpretip = 2
                     AND p.esccero = 1))
              AND e.nvalor not in (SELECT NVALOR FROM PREGUNSEGTAB WHERE SSEGURO = :pssegpol)              
           MINUS
           SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo
             FROM pregunseg e, seguros s, pregunpro p
            WHERE e.sseguro = :pssegpol
              AND e.cpregun NOT IN(1, 4049)
              AND e.nmovimi = (SELECT MAX(e1.nmovimi)
                                 FROM pregunseg e1
                                WHERE e1.sseguro = :pssegpol)
              AND e.nriesgo IN(SELECT r.nriesgo
                                 FROM estriesgos r
                                WHERE r.sseguro = :psseguro
                                  AND r.fanulac IS NULL)
              AND s.sseguro = e.sseguro
              AND s.sproduc = p.sproduc
              AND e.cpregun = p.cpregun
              AND((p.cpretip <> 2)
                  OR(p.cpretip = 2
                     AND p.esccero = 1))); END;';
BEGIN
	UPDATE pds_supl_validacio p
     SET p.tselect = v_select
   WHERE p.cconfig LIKE '%685%8062%'
     AND nselect = 2;
commit;
END;
/
