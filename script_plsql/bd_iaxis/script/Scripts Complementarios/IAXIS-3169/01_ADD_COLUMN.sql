
EXECUTE pac_skip_ora.p_comprovacolumn('RESPUESTAS','CACTIVI');
ALTER TABLE RESPUESTAS ADD CACTIVI NUMBER;
COMMENT ON COLUMN RESPUESTAS.CACTIVI IS 'Actividad de la poliza';
            
COMMIT;
/
