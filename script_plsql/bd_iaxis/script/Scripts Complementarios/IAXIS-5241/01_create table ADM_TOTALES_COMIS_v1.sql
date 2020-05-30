declare
verror number;
begin
verror:= pac_skip_ora.f_comprovadrop('ADM_TOTALES_COMIS','TABLE');
dbms_output.put_line(verror);
end;
/

  CREATE TABLE ADM_TOTALES_COMIS
   (smovrec	NUMBER,
    norden NUMBER NOT NULL ENABLE,
	nit VARCHAR2(30 BYTE),    
	nrecibo NUMBER, 
	vlr_gestionado NUMBER, 
    comision NUMBER
    );
   COMMENT ON COLUMN ADM_TOTALES_COMIS.nit IS 'nit del outsourcing';    
   COMMENT ON COLUMN ADM_TOTALES_COMIS.vlr_gestionado IS 'sumatoria de los montos de adm_det_comisiones';
   COMMENT ON COLUMN ADM_TOTALES_COMIS.comision IS 'comision calculada, sobre total de montos ';
   /
   
   