update detgaranformula
set norden = 26
where SPRODUC = 80007
 AND NORDEN <> 26
 AND CCONCEP = 'TASASUPL';
 
 commit;