/*
  TCS_11;IAXIS-2119 - JLTS - 10/03/2019 - Creación de la seuencia SEQ_FIN_GEN_DET para la tabla FIN_GENERAL_DET                         
*/
BEGIN
  PAC_SKIP_ORA.p_comprovadrop('SEQ_FIN_GEN_DET','SEQUENCE');
END;
/
-- Create sequence 
create sequence SEQ_FIN_GEN_DET
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
nocache
/
