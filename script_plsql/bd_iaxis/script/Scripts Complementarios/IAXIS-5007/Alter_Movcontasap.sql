/* cambios en 4703 tarea */
     
ALTER TABLE movcontasap
  ADD nsinies NUMBER;
   
ALTER TABLE movcontasap
  ADD cconcep NUMBER;
    
grant select, insert, update, delete on axis.MOVCONTASAP to AXIS00; 