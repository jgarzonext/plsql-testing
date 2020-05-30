set serveroutput on
declare
  -- Non-scalar parameters require additional processing 
  mensajes t_iax_mensajes;
  v_contexto number := 0; 
  v_resultado NUMBER;
begin
  -- Call the function
  v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
  --v_contexto := pac_contexto.f_inicializarctx('YESCOBAR');
  v_resultado := pac_iax_adm_cobparcial.f_cobro_parcial_recibo(pnrecibo => 900003968,
                                                           pctipcob => 18,
                                                           piparcial => 300000000,
                                                           pcmoneda => 8,
                                                           mensajes => mensajes,
                                                           pnrecsap => 5,
                                                           pcususap => 5,
                                                           pnreccaj => NULL,
                                                           pcmreca => NULL);
   p_control_error('SPV','procesos_recibo_SIT','resultado '||v_resultado);
  IF mensajes is not null THEN
    FOR i IN mensajes.first .. mensajes.last LOOP
      dbms_output.put_line('*********MENSAJES*********');
      dbms_output.put_line('mensaje('||i||')=' || mensajes(i).terror);
    END LOOP;
  END IF;
EXCEPTION WHEN OTHERS THEN  
  --
  p_control_error('SPV','procesos_recibo_SIT','Se presentó el error '||SQLERRM);
  --
end;
/

