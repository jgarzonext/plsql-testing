/* Formatted on 28/01/2020 17:30*/
/* **************************** 28/01/2020 17:30 **********************************************************************
Versión           Descripción
01.               -Este script restablece las transiciones para pagos de siniestros a la configuración base de iAxis.
                   --
                   **Pendiente → Aceptado
                   **Aceptado → Remesado
                   **Remesado → Pagado
                   **Pagado → Reversado
                   **Reversado → Pendiente
                   **Pendiente → Anulado
                   --
                   **Pendiente → Anulado
                   --
                   **Pendiente → Aceptado
                   **Aceptado → Remesado
                   **Remesado → Reversado
                   **Reversado → Pendiente
                   **Pendiente → Anulado
                   --
IAXIS-10516       28/01/2020 Daniel Rodríguez
***********************************************************************************************************************/
--
BEGIN
 --
 DELETE FROM sin_transiciones s
  WHERE s.cempres = 24
    AND s.cnivper IN (1, 2, 3)
    AND s.ctiptra = 1;
  --
  -- Transiciones base de iAxis
  --
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 1, 1, NULL, NULL, 0, 0, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 2, 1, NULL, NULL, 0, 1, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 3, 1, 0, 0, 8, 0, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 4, 1, 0, 1, 1, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 5, 1, 0, 0, 1, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 6, 1, 1, 1, 8, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 7, 1, 1, 1, 9, 1, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 9, 1, 9, 1, 0, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 10, 1, 9, 1, 2, 1, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 11, 1, 0, 0, 0, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 12, 1, 9, 1, 8, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 13, 1, 0, 1, 8, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 16, 1, 2, NULL, 0, NULL, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 18, 1, 9, NULL, 8, NULL, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 24, 1, 2, NULL, 8, NULL, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 1, 1, NULL, NULL, 0, 0, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 2, 1, NULL, NULL, 0, 1, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 3, 1, 0, 0, 8, 0, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 4, 1, 0, 1, 1, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 5, 1, 0, 0, 1, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 6, 1, 1, 1, 8, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 7, 1, 1, 1, 9, 1, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 9, 1, 9, 1, 0, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 10, 1, 9, 1, 2, 1, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 11, 1, 0, 0, 0, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 12, 1, 9, 1, 8, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 13, 1, 0, 1, 8, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 16, 1, 2, NULL, 0, NULL, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 18, 1, 9, NULL, 8, NULL, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 24, 1, 2, NULL, 8, NULL, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 1, 1, NULL, NULL, 0, 0, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 2, 1, NULL, NULL, 0, 1, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 3, 1, 0, 0, 8, 0, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 4, 1, 0, 1, 1, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 5, 1, 0, 0, 1, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 6, 1, 1, 1, 8, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 7, 1, 1, 1, 9, 1, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 9, 1, 9, 1, 0, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 10, 1, 9, 1, 2, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 11, 1, 0, 0, 0, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 12, 1, 9, 1, 8, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 13, 1, 0, 1, 8, 1, NULL, 1);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 16, 1, 2, NULL, 0, NULL, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 18, 1, 9, NULL, 8, NULL, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 24, 1, 2, NULL, 8, NULL, NULL, 0);
  --
  -- Transiciones Listener (Exclusivas Listener) se dejan ocultos.
  --
  -- Pagado -> Reversado
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 28, 1, 2, NULL, 3, NULL, NULL, 0);
  
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 28, 1, 2, NULL, 3, NULL, NULL, 0);
  
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 28, 1, 2, NULL, 3, NULL, NULL, 0);
  --
  -- Reversado -> Pendiente
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 32, 1, 3, NULL, 0, NULL, NULL, 0);
  
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 32, 1, 3, NULL, 0, NULL, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 32, 1, 3, NULL, 0, NULL, NULL, 0);
  --
  -- Remesado -> Reversado
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 1, 36, 1, 9, NULL, 3, NULL, NULL, 0);
  
  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 2, 36, 1, 9, NULL, 3, NULL, NULL, 0);

  INSERT INTO sin_transiciones (CEMPRES, CNIVPER, CNORDEN, CTIPTRA, CESTANT, CSUBANT, CESTSIG, CSUBSIG, COTROS, CVISIBLE)
  values (24, 3, 36, 1, 9, NULL, 3, NULL, NULL, 0);  
  --
  -- Ocultamos el estado Pagado (exclusivo Listener)
  -- Por el momento se deja visible a los usuarios. Se activará cuando se defina la parte del listener.
  -- 
  /*UPDATE sin_transiciones s
     SET s.cvisible = 0
   WHERE s.cempres = 24
     AND s.ctiptra = 1
     AND s.cestant = 9;*/
  --
  COMMIT;
  --
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURRED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURRED-->'||DBMS_UTILITY.format_error_backtrace);
     ROLLBACK;
End;
/




