/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-4186 TABLA PAGO CON SOLIDARIDAD SINIESTROS
   IAXIS-4186 -  TABLA PAGO CON SOLIDARIDAD SINIESTROS 02/07/2019 AABC
***********************************************************************************************************************/ 
BEGIN
pac_skip_ora.p_comprovadrop('SIN_SOLIDARIDAD_PAGO','TABLE');
END;
--
CREATE TABLE SIN_SOLIDARIDAD_PAGO(
  tliquida  NUMBER, 
  sseguro   NUMBER,
  nsinies   NUMBER,
  sperson   NUMBER,
  sidepag   NUMBER,
  cmoneda   VARCHAR2(5),
  nsucursal NUMBER,
  ipago     NUMBER,
  fcontab   DATE);
-- Add comments to the columns 
comment on column SIN_SOLIDARIDAD_PAGO.tliquida
  is 'Numero de liquidacion';
comment on column SIN_SOLIDARIDAD_PAGO.sseguro
  is 'Numero de sseguro';
comment on column SIN_SOLIDARIDAD_PAGO.nsinies
  is 'Numero de siniestro';
comment on column SIN_SOLIDARIDAD_PAGO.sperson
  is 'Numero de sperson'; 
comment on column SIN_SOLIDARIDAD_PAGO.sidepag
  is 'Numero de sidepag';   
comment on column SIN_SOLIDARIDAD_PAGO.cmoneda
  is 'Moneda de pago';  
comment on column SIN_SOLIDARIDAD_PAGO.nsucursal
  is 'Numero de sucursal';  
comment on column SIN_SOLIDARIDAD_PAGO.ipago
  is 'Valor de pago'; 
comment on column SIN_SOLIDARIDAD_PAGO.fcontab
  is 'Fecha de contabilidad';   
/
