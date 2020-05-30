update cfg_lanzar_informes_params f set f.lvalor = 'SELECT:SELECT 0 V , ''TODAS'' D FROM dual UNION SELECT AG.CAGENTE V, pac_redcomercial.ff_desagente(ag.cagente,8 ,8) d FROM redcomercial rc,agentes ag  WHERE rc.cagente = ag.cagente AND rc.ctipage in (2,3) AND rc.cempres   = 24'
 where f.cmap = 'VerifiClientNuevos'
 and f.tparam = 'PSUCUR'
 and f.slitera = 9910690; 
 
 Commit;
 /