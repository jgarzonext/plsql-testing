DECLARE
  v_contexto NUMBER := 0;
BEGIN

  v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));

delete DET_LANZAR_INFORMES where cmap = 'Reporte_Pre-Cierres_Siniestros_Pagos';

insert into det_lanzar_informes 
values (24, 'Reporte_Pre-Cierres_Siniestros_Pagos', 8, 'REPORTE DE SINIESTROS - PAGOS', 'Reporte_Pre-Cierres_Siniestros_Pagos.jasper');
  
  COMMIT;

END;
