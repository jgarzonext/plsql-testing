BEGIN
delete from POBLACIONES where CPROVIN=115;
commit;
Insert into POBLACIONES (CPROVIN,CPOBLAC,TPOBLAC,CPOBINE,CCOMARCAS,CMUNCOR,CFUENTE,TMUNBUS,CVALMUN,NPUNDEP) values (115,1,'Chuquisaca',null,null,null,null,'BO-H',null,null);
Insert into POBLACIONES (CPROVIN,CPOBLAC,TPOBLAC,CPOBINE,CCOMARCAS,CMUNCOR,CFUENTE,TMUNBUS,CVALMUN,NPUNDEP) values (115,2,'Cochabamba',null,null,null,null,'BO-C',null,null);
Insert into POBLACIONES (CPROVIN,CPOBLAC,TPOBLAC,CPOBINE,CCOMARCAS,CMUNCOR,CFUENTE,TMUNBUS,CVALMUN,NPUNDEP) values (115,3,'El Beni',null,null,null,null,'BO-B',null,null);
Insert into POBLACIONES (CPROVIN,CPOBLAC,TPOBLAC,CPOBINE,CCOMARCAS,CMUNCOR,CFUENTE,TMUNBUS,CVALMUN,NPUNDEP) values (115,4,'La Paz',null,null,null,null,'BO-L',null,null);
Insert into POBLACIONES (CPROVIN,CPOBLAC,TPOBLAC,CPOBINE,CCOMARCAS,CMUNCOR,CFUENTE,TMUNBUS,CVALMUN,NPUNDEP) values (115,5,'Oruro',null,null,null,null,'BO-O',null,null);
Insert into POBLACIONES (CPROVIN,CPOBLAC,TPOBLAC,CPOBINE,CCOMARCAS,CMUNCOR,CFUENTE,TMUNBUS,CVALMUN,NPUNDEP) values (115,6,'Pando',null,null,null,null,'BO-N',null,null);
Insert into POBLACIONES (CPROVIN,CPOBLAC,TPOBLAC,CPOBINE,CCOMARCAS,CMUNCOR,CFUENTE,TMUNBUS,CVALMUN,NPUNDEP) values (115,7,'Potosí',null,null,null,null,'BO-P',null,null);
Insert into POBLACIONES (CPROVIN,CPOBLAC,TPOBLAC,CPOBINE,CCOMARCAS,CMUNCOR,CFUENTE,TMUNBUS,CVALMUN,NPUNDEP) values (115,8,'Santa Cruz',null,null,null,null,'BO-S',null,null);
Insert into POBLACIONES (CPROVIN,CPOBLAC,TPOBLAC,CPOBINE,CCOMARCAS,CMUNCOR,CFUENTE,TMUNBUS,CVALMUN,NPUNDEP) values (115,9,'Tarija',null,null,null,null,'BO-T',null,null);
commit;
exception
when others then
dbms_output.put_line('error--->'||sqlerrm);
end;