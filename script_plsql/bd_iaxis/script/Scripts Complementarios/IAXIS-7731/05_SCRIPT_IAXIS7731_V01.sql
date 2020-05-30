/* Formatted on 19/12/2019 17:30*/
/* **************************** 19/12/2019 17:30 **********************************************************************
Versión           Descripción
01.               -Este script restablece las transiciones para pagos de siniestros.
                   **Pendiente → Pagado
                   **Pagado → Reversado
                   **Reversado → Pendiente
                   **Pendiente → Anulado
                   **Pagado → Anulado
IAXIS-7731         19/12/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
BEGIN
 --
  DELETE FROM sin_transiciones s
   WHERE s.cempres = 24
     AND s.cnivper IN (1, 2, 3)
     AND s.ctiptra = 1;
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 1, 6, 1, 0, NULL, 2, NULL, NULL, 0);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 2, 6, 1, 0, NULL, 2, NULL, NULL, 0);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 3, 6, 1, 0, NULL, 2, NULL, NULL, 0);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 1, 4, 1, 2, NULL, 3, NULL, NULL, 0); 
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 2, 4, 1, 2, NULL, 3, NULL, NULL, 0);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 3, 4, 1, 2, NULL, 3, NULL, NULL, 0);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 1, 5, 1, 3, NULL, 0, NULL, NULL, 0);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 2, 5, 1, 3, NULL, 0, NULL, NULL, 0);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 3, 5, 1, 3, NULL, 0, NULL, NULL, 0);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 1, 1, 1, 0, 0, 8, 0, NULL, 1);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 1, 2, 1, 0, 1, 8, 1, NULL, 1);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 2, 1, 1, 0, 0, 8, 0, NULL, 1);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 2, 2, 1, 0, 1, 8, 1, NULL, 1);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 3, 1, 1, 0, 0, 8, 0, NULL, 1);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 3, 2, 1, 0, 1, 8, 1, NULL, 1);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 1, 3, 1, 2, NULL, 8, NULL, NULL, 1);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 2, 3, 1, 2, NULL, 8, NULL, NULL, 1);
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  VALUES (24, 3, 3, 1, 2, NULL, 8, NULL, NULL, 1);   
  --
COMMIT;
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURRED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURRED-->'||DBMS_UTILITY.format_error_backtrace);
     ROLLBACK;
End;
/
  



