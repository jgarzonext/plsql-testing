delete from detprimas where CGARANT =  7006;

delete from ANUDETPRIMAS where CGARANT =  7006;

delete from anugaranseg where CGARANT =  7006;

delete from detgaranformula where CGARANT =  7006;

delete from SIN_GAR_CAUSA where CGARANT =  7006;

delete from SIN_GAR_CAUSA_MOTIVO where CGARANT =  7006;

delete from SIN_GAR_DEPENDIENTES where CGARANT =  7006;

delete from SIN_GAR_PERMITIDAS where CGARANT =  7006;

delete from SIN_GAR_PREGUNTA where CGARANT =  7006;

delete from SIN_GAR_TRAMITACION where CGARANT =  7006;

delete from garanGEN where CGARANT =  7006;

delete from garanseg where CGARANT =  7006;

delete from garanformula where CGARANT =  7006;

delete from garangenpro where CGARANT =  7006;

delete from garanpro_validacion where CGARANT =  7006;

delete from garanpro_validacion where tvalgar = 'pac_propio_garanproval_conf.f_gar_migraciones()' and CGARANT =  7004;

delete from garanpromodalidad where CGARANT =  7006;

delete from garanprored where CGARANT =  7006;

delete from pregungaranseg where CGARANT =  7006;

delete from pregunprogaran where CGARANT =  7006;

delete from primasgaranseg where CGARANT =  7006;

delete from estgaranseg where CGARANT =  7006;

delete from INCOMPGARAN where CGARANT = 7006 OR CGARINC = 7006;

delete from garanpro where CGARANT =  7006;

delete from DETRECIBOS where CGARANT =  7006;

delete from codigaran where CGARANT =  7006;

UPDATE PARGARANPRO SET CVALPAR = '2' WHERE CGARANT =  7005 and cpargar = 'EXCONTRACTUAL';

commit;
/