Declare
  cursor t is select sperson,tusunom,cusuari from usuarios  where usuarios.cusuari in
('EARIAS','CAVARGAS','CARODRIGUEZ','CLAUDIAGARCIA','ECALDERON','FPARRA','ICARDONA','JPENA','LBMURCIA','MBUITRAGO','NMONCAYO','PGARCIA','ECHEVERR','PSANCHEZ'
             ,'DGARCIA','JJGONZALEZ','MCRUZ','MOSORIOGUALTEROS','RORDONEZ'
             ,'GGARCIA','MGUTIERREZ','RCASTRO'
             ,'JGONZALEZ'
             ,'GNAVAS','JMENDOZA','NDELGADO','NTOUS');
begin
UPDATE USUARIOS SET SPERSON = 4057203, FBAJA = NULL WHERE CUSUARI = 'CARODRIGUEZ';
update SIN_CODTRAMITADOR set cusuari='PSANCHEZ' where ctramitad='T511';
update SIN_CODTRAMITADOR set cusuari='ECALDERON' where  ctramitad='T516';
  for t1 in t loop 
      execute immediate 'update SIN_CODTRAMITADOR set ttramitad= '''|| t1.tusunom || '''  where cusuari='''|| t1.cusuari || ''''; -- Ejecuta el update a nuestras tablas segun nuestro cursor
      execute immediate 'update per_detper set tnombre1=null,tnombre2=null, tnombre= '''|| t1.tusunom || '''  where sperson='''|| t1.sperson || ''''; -- Ejecuta el update a nuestras tablas segun nuestro cursor
  end loop;
    commit;     
exception when others then 
    rollback; 
end;