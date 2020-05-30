--SGM IAXIS 5241 Marcacion con fecha gestion outsourcing
    --se altera tabla para agregar columna  
    
BEGIN
  PAC_SKIP_ORA.p_comprovacolumn('RECIBOS','FMARCAGEST');
END;
/
    
ALTER TABLE RECIBOS
ADD FMARCAGEST DATE;
COMMIT;
/

COMMENT ON COLUMN RECIBOS.FMARCAGEST 
     IS 'guarda la fecha donde el recibo se marca para ser gestionado por Outsourcing (cgescar = 2)';