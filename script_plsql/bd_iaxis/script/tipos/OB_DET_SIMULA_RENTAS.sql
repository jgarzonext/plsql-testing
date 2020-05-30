--------------------------------------------------------
--  DDL for Type OB_DET_SIMULA_RENTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_DET_SIMULA_RENTAS" 
   AUTHID CURRENT_USER
AS OBJECT
/******************************************************************************
   NOMBRE:  OB_DET_SIMULA_RENTAS
   PROPÓSITO:     Objeto para contener los datos simula rentas.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/02/2013   LCF                1. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
******************************************************************************/
(
   nanyo          NUMBER,   --NUMBER(13, 2),   -- Secuencia de tramo de simulación. Corresponderá a los periodos (RVI,LRC), tramos capital (RO) o la duración en RT.
   pinttec        NUMBER(5, 2),   -- % de interés aplicado en cada nanyo  (RVI,RO,RT,LRC,HI)
   pintteceq      NUMBER(5, 2),   -- % de interés bruto equivalente equivalente por n (RVI,RO,HI)
   fecha          DATE,   -- Fecha aniversario de cada ejercicio
   rentamensual   NUMBER,   --25803-- renta del periodo  (RVI,RO,RT,LRC,RVD,HI)
   retirpf        NUMBER,   --25803--importe de la retención aplicable a la renta (RO)
   rentaneta      NUMBER,   --25803-- renta neta del periodo (RO)
   provision      NUMBER,   --25803-- provisión a final del periodo (RVI,RO,RT,LRC,HI)
   icapfall       NUMBER,   --25803--capital de fallecimiento a esa fecha (RVI,RO,LRC)
   rentaminima    NUMBER,   --25803-- renta minima garantizada (RVI,RO,HI)
   rcm            NUMBER   --NUMBER(13, 2)   -- %  rendimiento del capital mobiliario (RO)
);

/

  GRANT EXECUTE ON "AXIS"."OB_DET_SIMULA_RENTAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_DET_SIMULA_RENTAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_DET_SIMULA_RENTAS" TO "PROGRAMADORESCSI";
