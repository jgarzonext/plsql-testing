/* Formatted on 09/07/2019 11:09*/
/* **************************** 09/07/2019 11:09 **********************************************************************
Versión           Descripción
01.               -Script de creación de la tabla ADM_DET_NOCOMISIONA que contiene las razones por las cuales un recibo
                   no comisiona.
IAXIS-3651         09/07/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
DROP TABLE ADM_DET_NOCOMISIONA;
--
  CREATE TABLE ADM_DET_NOCOMISIONA
   (nrecibo NUMBER, 
    cmotivo NUMBER, 
    usuario VARCHAR2(30), 
    fecha   DATE);    
/   
  
