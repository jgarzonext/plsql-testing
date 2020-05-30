/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-4663 proceso judial 
   IAXIS-4663 - 06/05/2019  proceso judicial
***********************************************************************************************************************/ 
--
begin
   --
   update ECO_CODMONEDAS
      set bdefecto = 1
    where cmoneda = 'USD';
   --
   commit;
   --
end;
/