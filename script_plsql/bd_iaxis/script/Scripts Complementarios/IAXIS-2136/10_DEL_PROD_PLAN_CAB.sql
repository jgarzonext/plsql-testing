DELETE FROM prod_plant_cab
WHERE SPRODUC = 80001, 80002, 80003, 80004, 80005, 80006
and ctipo = 8
and ccodplan in ('SU-OD-05-06', 'SU-OD-38-03');

DELETE FROM prod_plant_cab
WHERE SPRODUC in (80009, 80010)
and ctipo = 8
and ccodplan =  'SU-OD-08-03';

DELETE FROM prod_plant_cab
WHERE SPRODUC = 80011
and ctipo = 8
and ccodplan =  'SU-OD-03-02';

COMMIT;
/

