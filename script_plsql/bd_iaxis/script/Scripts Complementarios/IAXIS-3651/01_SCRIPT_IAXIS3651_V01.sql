/* Formatted on 09/07/2019 11:09*/
/* **************************** 09/07/2019 11:09 **********************************************************************
Versión           Descripción
01.               -Script de creación de la tabla adm_det_comisiones que contiente el detalle de lo comisionado por el 
                   outsourcing por pago/recibo/abono.
IAXIS-3651         09/07/2019 Daniel Rodríguez
***********************************************************************************************************************/
DROP TABLE adm_det_comisiones;
--  
  CREATE TABLE adm_det_comisiones
   (smovrec        NUMBER,
    nnumordabo     NUMBER,
    norden         NUMBER NOT NULL ENABLE,
    nit            VARCHAR2(30 BYTE),    
    nrecibo        NUMBER, 
    vlr_gestionado NUMBER, 
    comision       NUMBER,
    fini           DATE,
    ffin           DATE,
    pagoid         NUMBER, 
    fpago          DATE);
   -- 
   COMMENT ON COLUMN ADM_DET_COMISIONES.smovrec IS 'Secuencia del movimiento del recibo';    
   COMMENT ON COLUMN ADM_DET_COMISIONES.nnumordabo IS 'Identificador del abono (Diferente de 0 para pagos parciales)';    
   COMMENT ON COLUMN ADM_DET_COMISIONES.nit IS 'nit del outsourcing';    
   COMMENT ON COLUMN ADM_DET_COMISIONES.fini IS 'fecha primera gestion del outsourcing';
   COMMENT ON COLUMN ADM_DET_COMISIONES.ffin IS 'fecha de calculo de la comision';
   COMMENT ON COLUMN ADM_DET_COMISIONES.vlr_gestionado IS 'valor pagado por el cliente';
   COMMENT ON COLUMN ADM_DET_COMISIONES.comision IS 'comision calculada'; 
   /
  
