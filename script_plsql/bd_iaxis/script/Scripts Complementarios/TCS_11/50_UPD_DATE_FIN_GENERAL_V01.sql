/*
  TCS_11;IAXIS-2119 - JLTS - Se actualizan los campos de fecha FRUT y FCCOMER sin hora, minutos y segundos
*/
UPDATE fin_general f SET f.frut = trunc(f.frut), f.fccomer = trunc(f.fccomer)
/
