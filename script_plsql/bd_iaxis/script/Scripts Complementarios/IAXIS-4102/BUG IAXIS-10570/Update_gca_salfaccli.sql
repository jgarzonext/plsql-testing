--UPDATE gca_salfavcli - Tarea Iaxis-4102 - bug Iaxis-10570 - JRVG - 15/04/2020

UPDATE gca_salfavcli
   SET nnumideage = nnumidecli,
       tnomage    = f_nombre_persona((select distinct p.sperson
                                        from per_personas p, agentes a
                                       where a.sperson = p.sperson
                                         and p.nnumide = nnumidecli),1,null),
       tnomcli    = f_nombre_persona((select distinct p.sperson
                                        from per_personas p, agentes a
                                       where a.sperson = p.sperson
                                         and p.nnumide = nnumidecli),1,null)
 WHERE nnumidecli IN (SELECT nnumide
                        FROM agentes a, per_personas pp
                       WHERE a.sperson = pp.sperson);
COMMIT;
--
UPDATE gca_salfavcli
   SET tnomcli = f_nombre_persona((select max(p.sperson)
                                     from per_personas p
                                    where p.nnumide = nnumidecli),1,null)
 WHERE nnumidecli NOT IN (SELECT nnumide
                            FROM agentes a, per_personas pp
                           WHERE a.sperson = pp.sperson);
COMMIT;
/
