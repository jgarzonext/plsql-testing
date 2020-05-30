/*
  IAXIS-5420   JLTS     22/11/2019
  Se actualiza la opción para el producto de RC Clínicas (CFG_FORM_PROPERTY.CIFCFG=806301) para que muestre (despliegue) el bloque
  de Asegurados en la pantalla de contula de pólizas (AXISCTR020)
*/

update cfg_form_property p
   set p.cvalue = 1
 where p.cempres = 24
   and p.cidcfg = 806301
   and p.cform = 'AXISCTR020'
   and p.citem = 'DSP_ASEGURADOS'
   and p.cprpty = 1
   and p.cvalue = 0;
COMMIT
/
