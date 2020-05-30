/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       Actualizaion del codigo acreedor y deudor para pruebas en integracion 
   TC1560 - 11/02/2019 - Angelo Benavides
***********************************************************************************************************************/ 
declare
vnumide2 per_personas.nnumide%type;
vnumide per_personas.nnumide%type;
begin 
  --
  BEGIN
  for x in (SELECT * 
  FROM S03502@Preproduccion 
   where coddet = '00002378'
     and codigo in (SELECT codigo FROM s03500@Preproduccion where nit in (select nnumide from per_personas) )) loop
     --
     select nit
       into vnumide2
      from s03500@Preproduccion 
      where codigo = x.codigo;
      
     update per_personas p
        set p.sperson_deud = to_number(x.valstring)
      where nnumide = vnumide2;    
     --   
  end loop;   
  --
  commit;
  --
  END;
  --
  begin 
  --
     for x in (SELECT * 
         FROM S03502@Preproduccion 
        where coddet = '00002379'
          and codigo in (SELECT codigo FROM s03500@Preproduccion where nit in (select nnumide from per_personas) )) loop
        --
        select nit
          into vnumide
          from s03500@Preproduccion 
         where codigo = x.codigo;
        --
        update per_personas p
           set p.sperson_acre = to_number(x.valstring)
         where nnumide = vnumide;    
        --   
     end loop;   
     --
     commit;
     --     
  END;
  --       
END;  


