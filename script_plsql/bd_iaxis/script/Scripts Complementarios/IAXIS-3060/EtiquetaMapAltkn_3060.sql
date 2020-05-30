/*Actualizacion map_tabla  cawmbio longitud campo busqueda*/
update map_xml
   set ttag = 'altkn'
   where cmapead = 'I017S'
   and ttag = 'empfk';
   commit;
/