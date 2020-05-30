update map_xml mx
   set mx.ctablafills = ''
 where mx.cmapead = 'I017S'
   and mx.norden in (280, 281, 282);