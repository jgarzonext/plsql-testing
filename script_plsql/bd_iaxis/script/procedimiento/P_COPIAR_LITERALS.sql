--------------------------------------------------------
--  DDL for Procedure P_COPIAR_LITERALS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_COPIAR_LITERALS" IS

 num        number:=0;
 tiplitera  number:=0;

  cursor c1 is
        select distinct rtrim(replace(  substr(ltrim(replace(substr(rtrim(ltrim(text)),7),';')),1,6) ,chr(10) )  ) numero
        from all_source
        where rtrim(ltrim(text)) like 'RETURN%'
        and instr(ltrim(text,' RETURN0123456789'),';')= 1
        and decode( translate ( rtrim( replace(      substr(ltrim(replace(substr(rtrim(ltrim(text)),7),';')),1,6) ,chr(10) ) )
         ,' 0123456789',' ')   ,null,1,0)=1
        and rtrim(replace(  substr(ltrim(replace(substr(rtrim(ltrim(text)),7),';')),1,6) ,chr(10) )  )  != '0'
        order by 1
        ;

  cursor d1 (numlit number) is
        select *
        FROM LITERALES
        WHERE SLITERA =numlit;

BEGIN
  for c in c1 loop
      --mirem si ja hi és
      SELECT count(*)
        INTO num
        FROM AXIS_LITERALES
       WHERE SLITERA = c.numero;

       if num=0 then --no hi és a axis_literales, continuem
             SELECT count(*)
             INTO num
             FROM LITERALES
             WHERE SLITERA = c.numero;

             if num>0 then --existeix a literales però no a AXIS_LITERALES


                 for d in d1(c.numero) loop

                     --segurament tampoc hi serà a axis_codliterales...però ho comprovem
                     SELECT count(*)
                     INTO num
                     FROM AXIS_CODLITERALES
                     WHERE SLITERA = d.SLITERA;

                     if num=0 then
                        SELECT clitera
                         INTO tiplitera
                         FROM CODLITERALES
                         WHERE SLITERA = d.SLITERA;

                        INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA)
                            VALUES (d.SLITERA,tiplitera);
                     end if;

                     --on no era segur és a axis_literales
                     INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA)
                     VALUES (d.CIDIOMA,d.SLITERA,d.TLITERA);

                 END LOOP;

             end if;
        end if;
  END LOOP;
END P_COPIAR_LITERALS;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_COPIAR_LITERALS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_COPIAR_LITERALS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_COPIAR_LITERALS" TO "PROGRAMADORESCSI";
