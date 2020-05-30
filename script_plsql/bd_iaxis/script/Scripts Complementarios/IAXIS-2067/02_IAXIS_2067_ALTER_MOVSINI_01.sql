/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-2067 TIPO DE SINIESTRO 
   IAXIS-2067 - 28/03/2019 - Angelo Benavides
***********************************************************************************************************************/ 

   --Alter a las tablas tabla sin_movsiniestro movimiento del siniestro.
      ALTER TABLE SIN_MOVSINIESTRO
              ADD CTIPSIN NUMBER(2);
  -- 
  --Comentarios para las tablas de sin_movsiniestro tipo de siniestro.
   comment on column SIN_MOVSINIESTRO.CTIPSIN
       is 'Tipo de siniestro (8002010)';
