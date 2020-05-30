/* cambios en 4703 tarea */
  
ALTER TABLE movcontasap
  ADD fecha_solicitud DATE;  
  
ALTER TABLE movcontasap
  ADD numunico_sap VARCHAR2(50);  
  
grant select, insert, update, delete on AXIS.MOVCONTASAP to AXIS00;
