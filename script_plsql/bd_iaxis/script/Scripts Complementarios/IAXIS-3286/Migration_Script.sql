declare
  vExist number := 0;
  cursor cur_MigratePersona is(
    select p.SPERSON, p.CAGENTE from per_detper p);
begin
  FOR i IN cur_MigratePersona LOOP
    select count(*)
      into vExist
      from per_parpersonas pp
     where pp.cparam = 'UNIQUE_IDENTIFIER'
       and pp.sperson = i.sperson;
    if vExist = 0 then
      INSERT INTO PER_PARPERSONAS
        (CPARAM,
         SPERSON,
         CAGENTE,
         NVALPAR,
         TVALPAR,
         FVALPAR,
         CUSUARI,
         FMOVIMI)
      VALUES
        ('UNIQUE_IDENTIFIER',
         i.SPERSON,
         nvl(i.CAGENTE,'19000'),
         NULL,
         NULL,
         NULL,
         f_user,
         f_sysdate);
    end if;
  end loop;
  commit;
end;
