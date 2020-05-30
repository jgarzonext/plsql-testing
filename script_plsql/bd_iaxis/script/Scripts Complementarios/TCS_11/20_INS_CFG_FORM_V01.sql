/*
  TCS_11;IAXIS-2119 - JLTS - Se elimina y crea la propiedad de dependencia para el campo CFOTORUT                       
*/
DELETE cfg_form_property c
 WHERE c.cempres = 24
   AND c.cidcfg = 1
   AND c.cprpty = 4
   AND c.citem = 'CFOTORUT'
   AND c.cform = 'AXISFIC002'
/
INSERT INTO cfg_form_property
  (cempres, cidcfg, cform, citem, cprpty, cvalue)
VALUES
  (24, 1, 'AXISFIC002', 'CFOTORUT', 4, 99840287)
/
