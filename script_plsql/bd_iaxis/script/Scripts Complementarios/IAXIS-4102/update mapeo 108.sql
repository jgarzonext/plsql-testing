update gca_cargaconc_mapeo 
   set tcolori = 'to_number(trim(DECODE(campo14,''0'',replace(replace(campo15,''.''),'',''), replace(replace(campo14,''.''),'',''))))'
 where cfichero = 108 and tcoldest = 'IMOVIMI_MONCIA';  
update gca_cargaconc_mapeo 
   set tcolori = 'campo08'
 where cfichero = 108 and tcoldest = 'NNUMIDECLI';  
 commit;
 /