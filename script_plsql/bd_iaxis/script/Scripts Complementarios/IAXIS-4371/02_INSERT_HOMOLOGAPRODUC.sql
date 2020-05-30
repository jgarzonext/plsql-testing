INSERT INTO AXIS.HOMOLOGAPRODUC select  p.SPRODUC, g.cgarant, g.cactivi, gn.tgarant, t.ttitulo, hm.codpla, hm.codigogarantia, hm.codram
from AXIS.productos p, AXIS.titulopro t, AXIS.GARANPRO G, AXIS.GARANGEN gn, AXIS.homologagar hm
where p.sproduc = g.sproduc  
and p.cramo = t.cramo 
and p.cmodali = t.cmodali  
and p.ctipseg = t.ctipseg  
and p.ccolect = t.ccolect 
and g.cgarant = gn.cgarant
and t.cidioma = gn.cidioma
and gn.cidioma = 8
and hm.idiaxis = g.cgarant
and hm.cactivi = g.cactivi
;
COMMIT;
/