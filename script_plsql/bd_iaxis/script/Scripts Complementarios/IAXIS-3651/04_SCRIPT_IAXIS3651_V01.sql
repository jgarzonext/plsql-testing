/* Formatted on 09/07/2019 11:09*/
/* **************************** 09/07/2019 11:09 **********************************************************************
Versión           Descripción
01.               -Script de creación de la tabla ADM_INFORMACION_PAGOS que contiene la información consolidada de la 
                   gestión.
IAXIS-3651         09/07/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
DROP TABLE ADM_INFORMACION_PAGOS;
--
  CREATE TABLE ADM_INFORMACION_PAGOS 
   (norden       NUMBER NOT NULL primary key,
    forden       DATE, 
    totalbruto   NUMBER,
    nit          VARCHAR2(30 BYTE),
    estadopago   NUMBER(1), 
    nprocesoerp  NUMBER,
    fpago        DATE,
    vlrpagadoerp NUMBER,
    totalneto    NUMBER,
    iva          NUMBER,
    retefuente   NUMBER,
    reteiva      NUMBER, 
    reteica      NUMBER);
/   
  
