delete from BF_DESGRUP where cgrup IN (200038,200039,200040,200041,200042,200043,200044,200045);
delete from BF_DESGRUPSUBGRUP where cgrup IN (200038,200039,200040,200041,200042,200043,200044,200045);
delete from bf_desnivel WHERE cgrup IN (200038,200039,200040,200041,200042,200043,200044,200045);
delete from bf_detnivel WHERE cgrup IN (200038,200039,200040,200041,200042,200043,200044,200045);
delete from bf_grupsubgrup where cgrup IN (200038,200039,200040,200041,200042,200043,200044,200045);
delete from BF_CODGRUP where cgrup IN (200038,200039,200040,200041,200042,200043,200044,200045);
delete from BF_VERSIONGRUP where cgrup IN (200038,200039,200040,200041,200042,200043,200044,200045);

delete from bf_proactgrup 
where cgrup IN (200038,200039,200040,200041,200042,200043,200044,200045);

delete from bf_progarangrup
where codgrup IN (200038,200039,200040,200041,200042,200043,200044,200045);



Insert into BF_VERSIONGRUP(CEMPRES,CGRUP,CVERSION,FDESDE,FHASTA,CUSUALT,FALTA)VALUES (24,200038,1,to_date('05-FEB-17','DD-MON-RR'),NULL,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into BF_CODGRUP (CEMPRES,CGRUP,CVERSION,CTIPGRUP,CTIPVISGRUP,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,2,0,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),null,null);
Insert into BF_DESGRUP VALUES (24,200038,1,1,'Perjuicios Patrim Daño Emergente/Vigencia','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200038,1,2,'Perjuicios Patrim Daño Emergente/Vigencia','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200038,1,8,'Perjuicios Patrim Daño Emergente/Vigencia','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));

Insert into bf_grupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CTIPGRUPSUBGRUP,CUSUALT,FALTA) values (24,200038,1,1,1,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200038,1,1,1,'E','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200038,1,1,2,'E','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200038,1,1,8,'E','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));

Insert into BF_VERSIONGRUP(CEMPRES,CGRUP,CVERSION,FDESDE,FHASTA,CUSUALT,FALTA)VALUES (24,200039,1,to_date('05-FEB-17','DD-MON-RR'),NULL,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into BF_CODGRUP (CEMPRES,CGRUP,CVERSION,CTIPGRUP,CTIPVISGRUP,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,2,0,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),null,null);
Insert into BF_DESGRUP VALUES (24,200039,1,1,'Perjuicios Patrim Daño Emergente/Evento','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200039,1,2,'Perjuicios Patrim Daño Emergente/Evento','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200039,1,8,'Perjuicios Patrim Daño Emergente/Evento','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));

Insert into bf_grupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CTIPGRUPSUBGRUP,CUSUALT,FALTA) values (24,200039,1,1,1,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200039,1,1,1,'F','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200039,1,1,2,'F','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200039,1,1,8,'F','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));

Insert into BF_VERSIONGRUP(CEMPRES,CGRUP,CVERSION,FDESDE,FHASTA,CUSUALT,FALTA)VALUES (24,200040,1,to_date('05-FEB-17','DD-MON-RR'),NULL,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into BF_CODGRUP (CEMPRES,CGRUP,CVERSION,CTIPGRUP,CTIPVISGRUP,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,2,0,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),null,null);
Insert into BF_DESGRUP VALUES (24,200040,1,1,'Culpa Grave/Vigencia','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200040,1,2,'Culpa Grave/Vigencia','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200040,1,8,'Culpa Grave/Vigencia','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));

Insert into bf_grupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CTIPGRUPSUBGRUP,CUSUALT,FALTA) values (24,200040,1,1,1,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200040,1,1,1,'e','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200040,1,1,2,'e','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200040,1,1,8,'e','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));

Insert into BF_VERSIONGRUP(CEMPRES,CGRUP,CVERSION,FDESDE,FHASTA,CUSUALT,FALTA)VALUES (24,200041,1,to_date('05-FEB-17','DD-MON-RR'),NULL,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into BF_CODGRUP (CEMPRES,CGRUP,CVERSION,CTIPGRUP,CTIPVISGRUP,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,2,0,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),null,null);
Insert into BF_DESGRUP VALUES (24,200041,1,1,'Culpa Grave/Evento','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200041,1,2,'Culpa Grave/Evento','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200041,1,8,'Culpa Grave/Evento','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));

Insert into bf_grupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CTIPGRUPSUBGRUP,CUSUALT,FALTA) values (24,200041,1,1,1,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200041,1,1,1,'f','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200041,1,1,2,'f','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200041,1,1,8,'f','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));

Insert into BF_VERSIONGRUP(CEMPRES,CGRUP,CVERSION,FDESDE,FHASTA,CUSUALT,FALTA)VALUES (24,200042,1,to_date('05-FEB-17','DD-MON-RR'),NULL,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into BF_CODGRUP (CEMPRES,CGRUP,CVERSION,CTIPGRUP,CTIPVISGRUP,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,2,0,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),null,null);
Insert into BF_DESGRUP VALUES (24,200042,1,1,'Resp Civil Productos/Vigencia','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200042,1,2,'Resp Civil Productos/Vigencia','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200042,1,8,'Resp Civil Productos/Vigencia','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));

Insert into bf_grupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CTIPGRUPSUBGRUP,CUSUALT,FALTA) values (24,200042,1,1,1,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200042,1,1,1,'ee','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200042,1,1,2,'ee','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200042,1,1,8,'ee','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));

Insert into BF_VERSIONGRUP(CEMPRES,CGRUP,CVERSION,FDESDE,FHASTA,CUSUALT,FALTA)VALUES (24,200043,1,to_date('05-FEB-17','DD-MON-RR'),NULL,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into BF_CODGRUP (CEMPRES,CGRUP,CVERSION,CTIPGRUP,CTIPVISGRUP,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,2,0,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),null,null);
Insert into BF_DESGRUP VALUES (24,200043,1,1,'Resp Civil Productos/Evento','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200043,1,2,'Resp Civil Productos/Evento','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200043,1,8,'Resp Civil Productos/Evento','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));

Insert into bf_grupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CTIPGRUPSUBGRUP,CUSUALT,FALTA) values (24,200043,1,1,1,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200043,1,1,1,'ff','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200043,1,1,2,'ff','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200043,1,1,8,'ff','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));


Insert into BF_VERSIONGRUP(CEMPRES,CGRUP,CVERSION,FDESDE,FHASTA,CUSUALT,FALTA)VALUES (24,200044,1,to_date('05-FEB-17','DD-MON-RR'),NULL,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into BF_CODGRUP (CEMPRES,CGRUP,CVERSION,CTIPGRUP,CTIPVISGRUP,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,2,0,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),null,null);
Insert into BF_DESGRUP VALUES (24,200044,1,1,'RC Uso Y Manejo Parqueaderos/Vigencia','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200044,1,2,'RC Uso Y Manejo Parqueaderos/Vigencia','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200044,1,8,'RC Uso Y Manejo Parqueaderos/Vigencia','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));

Insert into bf_grupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CTIPGRUPSUBGRUP,CUSUALT,FALTA) values (24,200044,1,1,1,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200044,1,1,1,'eee','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200044,1,1,2,'eee','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200044,1,1,8,'eee','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));

Insert into BF_VERSIONGRUP(CEMPRES,CGRUP,CVERSION,FDESDE,FHASTA,CUSUALT,FALTA)VALUES (24,200045,1,to_date('05-FEB-17','DD-MON-RR'),NULL,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into BF_CODGRUP (CEMPRES,CGRUP,CVERSION,CTIPGRUP,CTIPVISGRUP,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,2,0,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),null,null);
Insert into BF_DESGRUP VALUES (24,200045,1,1,'RC Uso Y Manejo Parqueaderos/Evento','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200045,1,2,'RC Uso Y Manejo Parqueaderos/Evento','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));
Insert into BF_DESGRUP VALUES (24,200045,1,8,'RC Uso Y Manejo Parqueaderos/Evento','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('01-JUL-19','DD-MON-RR'));

Insert into bf_grupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CTIPGRUPSUBGRUP,CUSUALT,FALTA) values (24,200045,1,1,1,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200045,1,1,1,'fff','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200045,1,1,2,'fff','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));
Insert into bf_desgrupsubgrup (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CIDIOMA,TGRUPSUBGRUP,CUSUALT,FALTA) values (24,200045,1,1,8,'fff','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'));

--Actividad 0
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,0,7783,to_date('01-FEB-16','DD-MON-RR'),200038,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,0,7783,to_date('01-FEB-16','DD-MON-RR'),200038,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,0,7783,to_date('01-FEB-16','DD-MON-RR'),200038,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,0,7783,to_date('01-FEB-16','DD-MON-RR'),200038,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,0,7783,to_date('01-FEB-16','DD-MON-RR'),200038,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,0,7783,to_date('01-FEB-16','DD-MON-RR'),200038,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,0,7784,to_date('01-FEB-16','DD-MON-RR'),200039,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,0,7784,to_date('01-FEB-16','DD-MON-RR'),200039,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,0,7784,to_date('01-FEB-16','DD-MON-RR'),200039,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,0,7784,to_date('01-FEB-16','DD-MON-RR'),200039,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,0,7784,to_date('01-FEB-16','DD-MON-RR'),200039,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,0,7784,to_date('01-FEB-16','DD-MON-RR'),200039,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,0,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,0,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,0,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,0,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,0,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,0,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,0,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,0,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,0,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,0,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,0,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,0,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,0,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,0,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,0,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,0,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,0,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,0,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,0,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,0,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,0,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,0,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,0,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,0,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,0,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,0,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,0,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,0,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,0,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,0,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,0,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,0,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,0,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,0,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,0,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,0,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                                 
--Actividad 1
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,1,7783,to_date('01-FEB-16','DD-MON-RR'),200038,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,1,7783,to_date('01-FEB-16','DD-MON-RR'),200038,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,1,7783,to_date('01-FEB-16','DD-MON-RR'),200038,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,1,7783,to_date('01-FEB-16','DD-MON-RR'),200038,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,1,7783,to_date('01-FEB-16','DD-MON-RR'),200038,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,1,7783,to_date('01-FEB-16','DD-MON-RR'),200038,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,1,7784,to_date('01-FEB-16','DD-MON-RR'),200039,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,1,7784,to_date('01-FEB-16','DD-MON-RR'),200039,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,1,7784,to_date('01-FEB-16','DD-MON-RR'),200039,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,1,7784,to_date('01-FEB-16','DD-MON-RR'),200039,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,1,7784,to_date('01-FEB-16','DD-MON-RR'),200039,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,1,7784,to_date('01-FEB-16','DD-MON-RR'),200039,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                        
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,1,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,1,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,1,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,1,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,1,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,1,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,1,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,1,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,1,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,1,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,1,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,1,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,1,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,1,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,1,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,1,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,1,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,1,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,1,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,1,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,1,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,1,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,1,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,1,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,1,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,1,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,1,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,1,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,1,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,1,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80038,1,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80039,1,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80040,1,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80041,1,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80042,1,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80043,1,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);	
                        
                            
--Actividad 0
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,0,to_date('01-FEB-16','DD-MON-RR'),200038,'N',null,1,3,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,0,to_date('01-FEB-16','DD-MON-RR'),200038,'N',null,1,3,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,0,to_date('01-FEB-16','DD-MON-RR'),200038,'N',null,1,3,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,0,to_date('01-FEB-16','DD-MON-RR'),200038,'N',null,1,3,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,0,to_date('01-FEB-16','DD-MON-RR'),200038,'N',null,1,3,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,0,to_date('01-FEB-16','DD-MON-RR'),200038,'N',null,1,3,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
						   
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,0,to_date('01-FEB-16','DD-MON-RR'),200039,'N',null,1,4,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,0,to_date('01-FEB-16','DD-MON-RR'),200039,'N',null,1,4,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,0,to_date('01-FEB-16','DD-MON-RR'),200039,'N',null,1,4,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,0,to_date('01-FEB-16','DD-MON-RR'),200039,'N',null,1,4,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,0,to_date('01-FEB-16','DD-MON-RR'),200039,'N',null,1,4,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,0,to_date('01-FEB-16','DD-MON-RR'),200039,'N',null,1,4,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
						   
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,0,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,13,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,0,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,13,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,0,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,13,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,0,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,13,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,0,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,13,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,0,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,13,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
						   
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,0,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,14,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,0,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,14,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,0,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,14,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,0,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,14,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,0,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,14,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,0,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,14,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
						   
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,0,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,23,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,0,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,23,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,0,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,23,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,0,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,23,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,0,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,23,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,0,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,23,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
						   
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,0,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,24,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,0,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,24,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,0,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,24,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,0,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,24,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,0,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,24,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,0,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,24,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
						   
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,0,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,31,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,0,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,31,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,0,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,31,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,0,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,31,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,0,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,31,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,0,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,31,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
						   
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,0,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,32,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,0,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,32,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,0,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,32,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,0,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,32,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,0,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,32,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,0,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,32,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);	
                           
--Actividad 1
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,1,to_date('01-FEB-16','DD-MON-RR'),200038,'N',null,1,3,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,1,to_date('01-FEB-16','DD-MON-RR'),200038,'N',null,1,3,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,1,to_date('01-FEB-16','DD-MON-RR'),200038,'N',null,1,3,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,1,to_date('01-FEB-16','DD-MON-RR'),200038,'N',null,1,3,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,1,to_date('01-FEB-16','DD-MON-RR'),200038,'N',null,1,3,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,1,to_date('01-FEB-16','DD-MON-RR'),200038,'N',null,1,3,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);


Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,1,to_date('01-FEB-16','DD-MON-RR'),200039,'N',null,1,4,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,1,to_date('01-FEB-16','DD-MON-RR'),200039,'N',null,1,4,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,1,to_date('01-FEB-16','DD-MON-RR'),200039,'N',null,1,4,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,1,to_date('01-FEB-16','DD-MON-RR'),200039,'N',null,1,4,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,1,to_date('01-FEB-16','DD-MON-RR'),200039,'N',null,1,4,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,1,to_date('01-FEB-16','DD-MON-RR'),200039,'N',null,1,4,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
						   
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,1,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,13,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,1,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,13,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,1,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,13,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,1,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,13,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,1,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,13,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,1,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,13,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);


Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,1,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,14,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,1,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,14,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,1,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,14,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,1,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,14,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,1,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,14,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,1,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,14,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,1,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,23,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,1,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,23,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,1,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,23,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,1,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,23,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,1,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,23,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,1,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,23,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);


Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,1,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,24,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,1,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,24,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,1,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,24,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,1,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,24,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,1,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,24,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,1,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,24,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
						   
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,1,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,31,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,1,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,31,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,1,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,31,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,1,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,31,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,1,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,31,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,1,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,31,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);


Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80038,1,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,32,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80039,1,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,32,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80040,1,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,32,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80041,1,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,32,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80042,1,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,32,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80043,1,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,32,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);	
                                                 
--Caso RCE Generales						   
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,2,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,3,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,4,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,5,7793,to_date('01-FEB-16','DD-MON-RR'),200040,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,2,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,3,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,4,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,5,7794,to_date('01-FEB-16','DD-MON-RR'),200041,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,2,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,15,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,3,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,15,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);


Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,4,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,15,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,5,to_date('01-FEB-16','DD-MON-RR'),200040,'N',null,1,15,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
						   
						   
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,2,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,16,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,3,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,16,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);


Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,4,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,16,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,5,to_date('01-FEB-16','DD-MON-RR'),200041,'N',null,1,16,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,2,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,3,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,4,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,5,7785,to_date('01-FEB-16','DD-MON-RR'),200042,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,2,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,3,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,4,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,5,7786,to_date('01-FEB-16','DD-MON-RR'),200043,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,2,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,19,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,3,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,19,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);


Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,4,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,19,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,5,to_date('01-FEB-16','DD-MON-RR'),200042,'N',null,1,19,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
						   
						   
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,2,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,20,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,3,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,20,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);


Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,4,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,20,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,5,to_date('01-FEB-16','DD-MON-RR'),200043,'N',null,1,20,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
						   
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,2,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,3,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,4,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,5,7789,to_date('01-FEB-16','DD-MON-RR'),200044,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
							
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,2,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,3,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,4,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);
                            
Insert into BF_PROGARANGRUP (CEMPRES,SPRODUC,CACTIVI,CGARANT,FFECINI,CODGRUP,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
                            (24,80044,5,7790,to_date('01-FEB-16','DD-MON-RR'),200045,null,'AXIS',to_date('21-MAR-17','DD-MON-RR'),null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,2,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,25,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,3,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,25,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);


Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,4,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,25,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,5,to_date('01-FEB-16','DD-MON-RR'),200044,'N',null,1,25,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
						   
						   
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,2,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,26,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);
                           
                           
Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,3,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,26,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);


Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,4,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,26,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);

Insert into BF_PROACTGRUP (CEMPRES,SPRODUC,CACTIVI,FFECINI,CGRUP,COBLIGA,CFORMULASUB,CSUBGRUPUNIC,NORDEN,TECCONTRA,FFECFIN,CUSUALT,FALTA,CUSUMOD,FMODIFI,FORMULADEFECTO) values 
                           (24,80044,5,to_date('01-FEB-16','DD-MON-RR'),200045,'N',null,1,26,'C',null,'AXIS_CONF',to_date('27-FEB-17','DD-MON-RR'),null,null,null);	

Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,1,3,2,null,null,null,1,1,0,null,null,2,300000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,2,3,2,null,null,null,1,1,5,null,null,2,500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,3,3,2,null,null,null,1,1,10,null,null,2,100000,null,null,'S','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS_CONF',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,4,3,2,null,null,null,1,1,15,null,null,2,1500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,5,3,2,null,null,null,1,1,20,null,null,2,2500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,6,3,2,null,null,null,1,1,10,null,null,2,3000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,7,3,2,null,null,null,1,1,10,null,null,2,5000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,8,3,2,null,null,null,1,1,10,null,null,2,6000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,9,3,2,null,null,null,1,1,10,null,null,2,7000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,10,3,2,null,null,null,1,1,10,null,null,2,12000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,11,3,2,null,null,null,1,1,10,null,null,2,15000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,12,3,2,null,null,null,1,1,10,null,null,2,17000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,13,3,2,null,null,null,1,1,10,null,null,2,20000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,14,3,2,null,null,null,1,1,10,null,null,4,0.5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,15,3,2,null,null,null,1,1,10,null,null,4,1,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,16,3,2,null,null,null,1,1,10,null,null,4,2,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,17,3,2,null,null,null,1,1,10,null,null,4,3,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,18,3,2,null,null,null,1,1,10,null,null,4,4,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,19,3,2,null,null,null,1,1,10,null,null,4,5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,20,3,2,null,null,null,1,1,10,null,null,4,8,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,21,3,2,null,null,null,1,1,10,null,null,4,9,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,22,3,2,null,null,null,1,1,10,null,null,4,11,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200038,1,1,23,3,2,null,null,null,1,1,10,null,null,4,19,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);


Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,1,1,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,1,2,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,1,8,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,2,1,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,2,2,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,2,8,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,3,1,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,3,2,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,3,8,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,4,1,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,4,2,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,4,8,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,5,1,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,5,2,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200038,1,1,5,8,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));

Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,1,4,2,null,null,null,1,1,0,null,null,2,300000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,2,4,2,null,null,null,1,1,5,null,null,2,500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,3,4,2,null,null,null,1,1,10,null,null,2,100000,null,null,'S','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS_CONF',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,4,4,2,null,null,null,1,1,15,null,null,2,1500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,5,4,2,null,null,null,1,1,20,null,null,2,2500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,6,4,2,null,null,null,1,1,10,null,null,2,3000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,7,4,2,null,null,null,1,1,10,null,null,2,5000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,8,4,2,null,null,null,1,1,10,null,null,2,6000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,9,4,2,null,null,null,1,1,10,null,null,2,7000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,10,4,2,null,null,null,1,1,10,null,null,2,12000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,11,4,2,null,null,null,1,1,10,null,null,2,15000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,12,4,2,null,null,null,1,1,10,null,null,2,17000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,13,4,2,null,null,null,1,1,10,null,null,2,20000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,14,4,2,null,null,null,1,1,10,null,null,4,0.5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,15,4,2,null,null,null,1,1,10,null,null,4,1,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,16,4,2,null,null,null,1,1,10,null,null,4,2,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,17,4,2,null,null,null,1,1,10,null,null,4,3,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,18,4,2,null,null,null,1,1,10,null,null,4,4,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,19,4,2,null,null,null,1,1,10,null,null,4,5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,20,4,2,null,null,null,1,1,10,null,null,4,8,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,21,4,2,null,null,null,1,1,10,null,null,4,9,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,22,4,2,null,null,null,1,1,10,null,null,4,11,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200039,1,1,23,4,2,null,null,null,1,1,10,null,null,4,19,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);


Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,1,1,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,1,2,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,1,8,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,2,1,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,2,2,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,2,8,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,3,1,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,3,2,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,3,8,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,4,1,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,4,2,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,4,8,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,5,1,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,5,2,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200039,1,1,5,8,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));


Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,1,13,2,null,null,null,1,1,0,null,null,2,300000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,2,13,2,null,null,null,1,1,5,null,null,2,500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,3,13,2,null,null,null,1,1,10,null,null,2,100000,null,null,'S','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS_CONF',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,4,13,2,null,null,null,1,1,15,null,null,2,1500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,5,13,2,null,null,null,1,1,20,null,null,2,2500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,6,13,2,null,null,null,1,1,10,null,null,2,3000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,7,13,2,null,null,null,1,1,10,null,null,2,5000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,8,13,2,null,null,null,1,1,10,null,null,2,6000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,9,13,2,null,null,null,1,1,10,null,null,2,7000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,10,13,2,null,null,null,1,1,10,null,null,2,12000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,11,13,2,null,null,null,1,1,10,null,null,2,15000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,12,13,2,null,null,null,1,1,10,null,null,2,17000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,13,13,2,null,null,null,1,1,10,null,null,2,20000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,14,13,2,null,null,null,1,1,10,null,null,4,0.5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,15,13,2,null,null,null,1,1,10,null,null,4,1,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,16,13,2,null,null,null,1,1,10,null,null,4,2,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,17,13,2,null,null,null,1,1,10,null,null,4,3,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,18,13,2,null,null,null,1,1,10,null,null,4,4,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,19,13,2,null,null,null,1,1,10,null,null,4,5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,20,13,2,null,null,null,1,1,10,null,null,4,8,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,21,13,2,null,null,null,1,1,10,null,null,4,9,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,22,13,2,null,null,null,1,1,10,null,null,4,11,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200040,1,1,23,13,2,null,null,null,1,1,10,null,null,4,19,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);


Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,1,1,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,1,2,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,1,8,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,2,1,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,2,2,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,2,8,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,3,1,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,3,2,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,3,8,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,4,1,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,4,2,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,4,8,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,5,1,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,5,2,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200040,1,1,5,8,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));

Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,1,14,2,null,null,null,1,1,0,null,null,2,300000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,2,14,2,null,null,null,1,1,5,null,null,2,500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,3,14,2,null,null,null,1,1,10,null,null,2,100000,null,null,'S','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS_CONF',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,4,14,2,null,null,null,1,1,15,null,null,2,1500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,5,14,2,null,null,null,1,1,20,null,null,2,2500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,6,14,2,null,null,null,1,1,10,null,null,2,3000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,7,14,2,null,null,null,1,1,10,null,null,2,5000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,8,14,2,null,null,null,1,1,10,null,null,2,6000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,9,14,2,null,null,null,1,1,10,null,null,2,7000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,10,14,2,null,null,null,1,1,10,null,null,2,12000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,11,14,2,null,null,null,1,1,10,null,null,2,15000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,12,14,2,null,null,null,1,1,10,null,null,2,17000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,13,14,2,null,null,null,1,1,10,null,null,2,20000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,14,14,2,null,null,null,1,1,10,null,null,4,0.5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,15,14,2,null,null,null,1,1,10,null,null,4,1,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,16,14,2,null,null,null,1,1,10,null,null,4,2,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,17,14,2,null,null,null,1,1,10,null,null,4,3,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,18,14,2,null,null,null,1,1,10,null,null,4,4,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,19,14,2,null,null,null,1,1,10,null,null,4,5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,20,14,2,null,null,null,1,1,10,null,null,4,8,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,21,14,2,null,null,null,1,1,10,null,null,4,9,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,22,14,2,null,null,null,1,1,10,null,null,4,11,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200041,1,1,23,14,2,null,null,null,1,1,10,null,null,4,19,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);


Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,1,1,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,1,2,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,1,8,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,2,1,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,2,2,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,2,8,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,3,1,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,3,2,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,3,8,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,4,1,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,4,2,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,4,8,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,5,1,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,5,2,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200041,1,1,5,8,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));

Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,1,23,2,null,null,null,1,1,0,null,null,2,300000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,2,23,2,null,null,null,1,1,5,null,null,2,500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,3,23,2,null,null,null,1,1,10,null,null,2,100000,null,null,'S','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS_CONF',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,4,23,2,null,null,null,1,1,15,null,null,2,1500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,5,23,2,null,null,null,1,1,20,null,null,2,2500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,6,23,2,null,null,null,1,1,10,null,null,2,3000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,7,23,2,null,null,null,1,1,10,null,null,2,5000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,8,23,2,null,null,null,1,1,10,null,null,2,6000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,9,23,2,null,null,null,1,1,10,null,null,2,7000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,10,23,2,null,null,null,1,1,10,null,null,2,12000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,11,23,2,null,null,null,1,1,10,null,null,2,15000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,12,23,2,null,null,null,1,1,10,null,null,2,17000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,13,23,2,null,null,null,1,1,10,null,null,2,20000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,14,23,2,null,null,null,1,1,10,null,null,4,0.5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,15,23,2,null,null,null,1,1,10,null,null,4,1,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,16,23,2,null,null,null,1,1,10,null,null,4,2,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,17,23,2,null,null,null,1,1,10,null,null,4,3,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,18,23,2,null,null,null,1,1,10,null,null,4,4,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,19,23,2,null,null,null,1,1,10,null,null,4,5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,20,23,2,null,null,null,1,1,10,null,null,4,8,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,21,23,2,null,null,null,1,1,10,null,null,4,9,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,22,23,2,null,null,null,1,1,10,null,null,4,11,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200042,1,1,23,23,2,null,null,null,1,1,10,null,null,4,19,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);


Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,1,1,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,1,2,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,1,8,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,2,1,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,2,2,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,2,8,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,3,1,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,3,2,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,3,8,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,4,1,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,4,2,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,4,8,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,5,1,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,5,2,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200042,1,1,5,8,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));

Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,1,24,2,null,null,null,1,1,0,null,null,2,300000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,2,24,2,null,null,null,1,1,5,null,null,2,500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,3,24,2,null,null,null,1,1,10,null,null,2,100000,null,null,'S','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS_CONF',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,4,24,2,null,null,null,1,1,15,null,null,2,1500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,5,24,2,null,null,null,1,1,20,null,null,2,2500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,6,24,2,null,null,null,1,1,10,null,null,2,3000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,7,24,2,null,null,null,1,1,10,null,null,2,5000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,8,24,2,null,null,null,1,1,10,null,null,2,6000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,9,24,2,null,null,null,1,1,10,null,null,2,7000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,10,24,2,null,null,null,1,1,10,null,null,2,12000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,11,24,2,null,null,null,1,1,10,null,null,2,15000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,12,24,2,null,null,null,1,1,10,null,null,2,17000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,13,24,2,null,null,null,1,1,10,null,null,2,20000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,14,24,2,null,null,null,1,1,10,null,null,4,0.5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,15,24,2,null,null,null,1,1,10,null,null,4,1,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,16,24,2,null,null,null,1,1,10,null,null,4,2,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,17,24,2,null,null,null,1,1,10,null,null,4,3,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,18,24,2,null,null,null,1,1,10,null,null,4,4,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,19,24,2,null,null,null,1,1,10,null,null,4,5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,20,24,2,null,null,null,1,1,10,null,null,4,8,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,21,24,2,null,null,null,1,1,10,null,null,4,9,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,22,24,2,null,null,null,1,1,10,null,null,4,11,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200043,1,1,23,24,2,null,null,null,1,1,10,null,null,4,19,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);


Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,1,1,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,1,2,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,1,8,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,2,1,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,2,2,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,2,8,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,3,1,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,3,2,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,3,8,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,4,1,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,4,2,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,4,8,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,5,1,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,5,2,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200043,1,1,5,8,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));


Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,1,31,2,null,null,null,1,1,0,null,null,2,300000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,2,31,2,null,null,null,1,1,5,null,null,2,500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,3,31,2,null,null,null,1,1,10,null,null,2,100000,null,null,'S','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS_CONF',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,4,31,2,null,null,null,1,1,15,null,null,2,1500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,5,31,2,null,null,null,1,1,20,null,null,2,2500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,6,31,2,null,null,null,1,1,10,null,null,2,3000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,7,31,2,null,null,null,1,1,10,null,null,2,5000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,8,31,2,null,null,null,1,1,10,null,null,2,6000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,9,31,2,null,null,null,1,1,10,null,null,2,7000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,10,31,2,null,null,null,1,1,10,null,null,2,12000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,11,31,2,null,null,null,1,1,10,null,null,2,15000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,12,31,2,null,null,null,1,1,10,null,null,2,17000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,13,31,2,null,null,null,1,1,10,null,null,2,20000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,14,31,2,null,null,null,1,1,10,null,null,4,0.5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,15,31,2,null,null,null,1,1,10,null,null,4,1,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,16,31,2,null,null,null,1,1,10,null,null,4,2,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,17,31,2,null,null,null,1,1,10,null,null,4,3,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,18,31,2,null,null,null,1,1,10,null,null,4,4,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,19,31,2,null,null,null,1,1,10,null,null,4,5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,20,31,2,null,null,null,1,1,10,null,null,4,8,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,21,31,2,null,null,null,1,1,10,null,null,4,9,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,22,31,2,null,null,null,1,1,10,null,null,4,11,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200044,1,1,23,31,2,null,null,null,1,1,10,null,null,4,19,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);


Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,1,1,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,1,2,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,1,8,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,2,1,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,2,2,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,2,8,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,3,1,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,3,2,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,3,8,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,4,1,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,4,2,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,4,8,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,5,1,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,5,2,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200044,1,1,5,8,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));

Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,1,32,2,null,null,null,1,1,0,null,null,2,300000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,2,32,2,null,null,null,1,1,5,null,null,2,500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,3,32,2,null,null,null,1,1,10,null,null,2,100000,null,null,'S','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS_CONF',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,4,32,2,null,null,null,1,1,15,null,null,2,1500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,5,32,2,null,null,null,1,1,20,null,null,2,2500000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,6,32,2,null,null,null,1,1,10,null,null,2,3000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,7,32,2,null,null,null,1,1,10,null,null,2,5000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,8,32,2,null,null,null,1,1,10,null,null,2,6000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,9,32,2,null,null,null,1,1,10,null,null,2,7000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,10,32,2,null,null,null,1,1,10,null,null,2,12000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,11,32,2,null,null,null,1,1,10,null,null,2,15000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,12,32,2,null,null,null,1,1,10,null,null,2,17000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,13,32,2,null,null,null,1,1,10,null,null,2,20000000,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,14,32,2,null,null,null,1,1,10,null,null,4,0.5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,15,32,2,null,null,null,1,1,10,null,null,4,1,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,16,32,2,null,null,null,1,1,10,null,null,4,2,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,17,32,2,null,null,null,1,1,10,null,null,4,3,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,18,32,2,null,null,null,1,1,10,null,null,4,4,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,19,32,2,null,null,null,1,1,10,null,null,4,5,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,20,32,2,null,null,null,1,1,10,null,null,4,8,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,21,32,2,null,null,null,1,1,10,null,null,4,9,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,22,32,2,null,null,null,1,1,10,null,null,4,11,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);
Insert into BF_DETNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,NORDEN,CDTOREC,FORMULASELECC,FORMULAVALIDA,FORMULASINIES,CTIPNIVEL,CVALOR1,IMPVALOR1,CVALOR2,IMPVALOR2,CIMPMIN,IMPMIN,CIMPMAX,IMPMAX,CDEFECTO,CCONTRATABLE,CINTERVIENE,CPOLITICA,CUSUALT,FALTA,CUSUMOD,FMODIFI,ID_LISTLIBRE) values (24,200045,1,1,23,32,2,null,null,null,1,1,10,null,null,4,19,null,null,'N','S',null,null,'AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'TALLER49',to_date('11-SEP-19','DD-MON-RR'),null);


Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,1,1,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,1,2,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,1,8,'0%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,2,1,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,2,2,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,2,8,'5%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,3,1,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,3,2,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,3,8,'10%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,4,1,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,4,2,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,4,8,'15%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,5,1,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,5,2,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));
Insert into BF_DESNIVEL (CEMPRES,CGRUP,CSUBGRUP,CVERSION,CNIVEL,CIDIOMA,TNIVEL,CUSUALT,FALTA,CUSUMOD,FMODIFI) values (24,200045,1,1,5,8,'20%','AXIS_CONF',to_date('05-FEB-17','DD-MON-RR'),'AXIS',to_date('13-JUL-19','DD-MON-RR'));


                          
COMMIT;