-- IAXIS BUG-6149 recibos que tienen reversiones

BEGIN
  PAC_SKIP_ORA.p_comprovacolumn('ADM_DET_COMISIONES','COMISION');
END;
/

BEGIN
  PAC_SKIP_ORA.p_comprovacolumn('ADM_DET_COMISIONES','NRECCAJ');
END;
/
    
ALTER TABLE ADM_DET_COMISIONES
ADD NRECCAJ VARCHAR2(100 BYTE);

COMMENT ON COLUMN ADM_DET_COMISIONES.NRECCAJ 
     IS 'Recibo de caja de la tabla detmovrecibo';
COMMIT;
/     