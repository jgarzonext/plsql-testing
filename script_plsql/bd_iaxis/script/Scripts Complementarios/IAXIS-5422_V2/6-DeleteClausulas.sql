--select * from CLAUSUGEN where TCLATIT = 'Asegurado Adicional'; --4442, 4444

--select * from CLAUSUGEN where TCLATIT = 'Beneficiacion Adicional'; --4443, 4445

--select * from clausugen where  sclagen in (4442,4443,4444,4445);

--select * from clausupro where sclagen in (4442,4443,4444,4445);

--select * from CODICLAUSUGEN where sclagen in (4442,4443,4444,4445);

delete from clausugen where  sclagen in (4442,4443,4444,4445);

delete from clausupro where  sclagen in (4442,4443,4444,4445);

delete from CODICLAUSUGEN where  sclagen in (4442,4443,4444,4445);