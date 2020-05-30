create or replace FUNCTION ff_calcula_valor (pnrecibo IN number, ptipo number, pvalorTotal number, pvalorPrima number, pvalorImp number, pvalorGasto number)
RETURN number  IS
    retorno number;
    valor_prima number;
    valor_impuesto number;
    valor_gasto number;
    valor_suma number;
    valor_aux_prima number;
    valor_aux_imp number;
    valor_aux_gasto number;
    valor_total number;
    valor_aux_total number;
    valor_aux_valores number;
    
BEGIN

    SELECT NVL (SUM (b.iconcep_monpol), 0) into valor_prima 
           FROM detmovrecibo a, detmovrecibo_parcial b
          WHERE a.nrecibo = pnrecibo
            AND a.nrecibo = b.nrecibo
            AND a.smovrec = (SELECT MAX (b.smovrec)
                               FROM detmovrecibo b
                              WHERE b.nrecibo = a.nrecibo)
            AND a.norden = b.norden
            AND b.cconcep IN (0);
            
    SELECT NVL (SUM (b.iconcep_monpol), 0) into valor_impuesto 
           FROM detmovrecibo a, detmovrecibo_parcial b
          WHERE a.nrecibo = pnrecibo
            AND a.nrecibo = b.nrecibo
            AND a.smovrec = (SELECT MAX (b.smovrec)
                               FROM detmovrecibo b
                              WHERE b.nrecibo = a.nrecibo)
            AND a.norden = b.norden
            AND b.cconcep IN (4,86);

    SELECT NVL (SUM (b.iconcep_monpol), 0) into valor_gasto 
           FROM detmovrecibo a, detmovrecibo_parcial b
          WHERE a.nrecibo = pnrecibo
            AND a.nrecibo = b.nrecibo
            AND a.smovrec = (SELECT MAX (b.smovrec)
                               FROM detmovrecibo b
                              WHERE b.nrecibo = a.nrecibo)
            AND a.norden = b.norden
            AND b.cconcep IN (14);
            
    valor_aux_prima := pvalorPrima - valor_prima;
    valor_aux_imp := pvalorImp - valor_impuesto;
    valor_aux_gasto := pvalorGasto - valor_gasto;
    valor_suma:= valor_prima+valor_impuesto+valor_gasto;
    valor_aux_total := pvalorTotal - valor_suma;

    if ptipo = 1 then 
        retorno := pvalorTotal - valor_suma;
    elsif ptipo = 2 then 
        valor_total := valor_aux_prima+valor_aux_imp+valor_aux_gasto;
        valor_aux_valores := valor_aux_total - valor_total;
        retorno := valor_aux_valores + valor_aux_prima;
    elsif ptipo = 3 then 
        retorno := valor_aux_imp;   
    elsif ptipo = 4 then 
        retorno := valor_aux_gasto;
    else
        retorno := 0;
    end if;

    RETURN retorno;
EXCEPTION
    WHEN others THEN
        RETURN 0;  
END;

create or replace synonym AXIS00.ff_calcula_valor for AXIS.ff_calcula_valor; 

GRANT SELECT, INSERT, UPDATE, DELETE ON  ff_calcula_valor TO r_axis;

commit;
/
