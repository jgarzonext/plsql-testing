/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-3602 INFORME TECNICO 
   IAXIS-3602 -  INFORME TECNICO 30/04/2019 SHUBHENDU
***********************************************************************************************************************/ 
Drop table Sin_Informe_Tecnico;
--
CREATE TABLE Sin_Informe_Tecnico( 
  nsinies varchar2(1000),
  Detalles_Plazo varchar2(1000),
  Interventor varchar2(1000),
  Supervisor varchar2(1000),
  Numero_De_Tramitation varchar2(1000),
  falta date,CUSUALT varchar2(1000),
  FMODIFI date,CUSUMOD varchar2(1000),
  Fecha_Elaboracion DATE,
  Fuente_de_info varchar2(1000) );
-- Add comments to the columns 
comment on column Sin_Informe_Tecnico.nsinies
  is 'Numero de siniesdtro';
comment on column Sin_Informe_Tecnico.Detalles_Plazo
  is 'Detalle de plazo';
comment on column Sin_Informe_Tecnico.Interventor
  is 'Intenventor';
comment on column Sin_Informe_Tecnico.Supervisor
  is 'Supervisor'; 
comment on column Sin_Informe_Tecnico.Numero_De_Tramitation
  is 'Numero de tramitacion';   
comment on column Sin_Informe_Tecnico.falta
  is 'Fecha de alta';  
comment on column Sin_Informe_Tecnico.FMODIFI
  is 'Fecha de Modificacion';  
comment on column Sin_Informe_Tecnico.Fecha_Elaboracion
  is 'Fecha de elaboracion'; 
--  
create or replace synonym AXIS00.SIN_INFORME_TECNICO
  for AXIS.SIN_INFORME_TECNICO; 
--

/* granting access to user for select , insert and all operations*/

GRANT SELECT, INSERT, UPDATE, DELETE ON  sin_informe_tecnico TO r_axis;
/