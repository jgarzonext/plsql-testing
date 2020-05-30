/* Formatted on 12/12/2019 18:30*/
/* **************************** 12/12/2019 18:30 **********************************************************************
Versión           Descripción
01.               -Este script calcula las comisiones e IVA para dichas comisiones para las pólizas cuyas comisiones fueron
                   borradas.
IAXIS-7983         12/12/2019 Daniel Rodríguez
***********************************************************************************************************************/
DECLARE
  vsseguro NUMBER;
  vnerror  NUMBER;
  vnriesgo NUMBER := 1;
  vnpoliza NUMBER;
  vntraza  NUMBER;
  vnrecibo NUMBER;
  e EXCEPTION;
BEGIN
  --
  FOR i IN (SELECT r.nrecibo, s.*
              FROM seguros s, recibos r
             WHERE s.sseguro = r.sseguro
               AND s.femisio >= to_date('01/10/2019', 'DD/MM/YYYY')
               AND r.creccia IS NULL
               AND NOT EXISTS
             (SELECT 1 FROM comrecibo c WHERE c.nrecibo = r.nrecibo)
             ORDER BY s.npoliza ASC) LOOP
    BEGIN
      --
      vntraza := 1;
      --
      vsseguro := i.sseguro;
      vnrecibo := i.nrecibo;
      vnpoliza := i.npoliza;
      --
      vnerror := f_comis_corre_coa(psseguro => vsseguro,
                                   pnrecibo => vnrecibo,
                                   pnriesgo => vnriesgo);
      --
      vntraza := 2;
      --                             
      IF vnerror <> 0 THEN
        --
        vntraza := 3;
        --
        RAISE e;
        --
      END IF;
      --
      vntraza := 4;
      --
      vnerror := f_intermediarios_iva(pnrecibo => vnrecibo);
      --
      vntraza := 5;
      --
      IF vnerror <> 0 THEN
        --
        vntraza := 6;
        --
        RAISE e;
        --
      END IF;
    
    EXCEPTION
      WHEN e THEN
        dbms_output.put_line('ERROR ' || vnerror || ' en ' || vntraza ||
                             ' mientras se procesaban las comisiones del recibo -> ' ||
                             vnrecibo || ' para la póliza ' || vnpoliza ||
                             ' y seguro ' || vsseguro);
      WHEN OTHERS THEN
        dbms_output.put_line('ERROR ' || SQLERRM ||
                             ' mientras se procesaban las comisiones del recibo -> ' ||
                             vnrecibo || ' para la póliza ' || vnpoliza ||
                             ' y seguro ' || vsseguro);
    END;
  END LOOP;
  --
  COMMIT;
  --
EXCEPTION
  --
  WHEN OTHERS THEN
    ROLLBACK;
    dbms_output.put_line('ERROR INCONTROLADO');
    --
END;
/