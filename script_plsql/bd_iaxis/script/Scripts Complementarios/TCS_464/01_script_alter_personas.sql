/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       TC464 Tener en cuenta para la integración con SAP que se deberá enviar un número de SPERSON diferente 
                   cuando la persona sea acreedor o deudor. Falta definiciòn de tabla y columnas
   TC464 - 11/02/2019 - Angelo Benavides
***********************************************************************************************************************/ 

  --Alter a las tablas per_personas y mig_personas para persona deudor y acreedor
   execute pac_skip_ora.p_comprovacolumn('PER_PERSONAS','SPERSON_DEUD');
   execute pac_skip_ora.p_comprovacolumn('PER_PERSONAS','SPERSON_ACRE');
  --
   execute pac_skip_ora.p_comprovacolumn('MIG_PERSONAS','NNUMIDE_DEUD');
   execute pac_skip_ora.p_comprovacolumn('MIG_PERSONAS','NNUMIDE_ACRE');
  --
   ALTER TABLE per_personas
     ADD sperson_deud     NUMBER(10);
   ALTER TABLE per_personas 
     ADD  sperson_acre    NUMBER(10);  
  -- 
   ALTER TABLE MIG_PERSONAS
     ADD nnumide_deud    NUMBER(10);
   ALTER TABLE MIG_PERSONAS 
     ADD nnumide_acre    NUMBER(10);
  --Comentarios para las tablas de per_personas y mig_personas de los campos alterados 
   comment on column PER_PERSONAS.sperson_deud
       is 'Secuencia de la persona deudora';
   comment on column PER_PERSONAS.sperson_acre
       is 'Secuencia de la persona deudora';
  --
   comment on column MIG_PERSONAS.nnumide_deud
        is 'Numero de la persona deudora';
   comment on column MIG_PERSONAS.nnumide_acre
       is 'Numero de la persona deudora';  


