update sin_descausa
set tcausin = 'Incumplimiento'
where ccausin = 9056
and cidioma = 8;

update detvalores 
set tatribu = 'Cuota Parte 2'
where catribu = 2
and cvalor = 105;
commit; 
/