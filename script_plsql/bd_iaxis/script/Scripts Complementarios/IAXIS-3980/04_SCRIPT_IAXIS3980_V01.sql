/* Formatted on 01/08/2019 19:00*/
/* **************************** 01/08/2019 19:00 **********************************************************************
Versión           Descripción
01.               -Inserta la configuración necesaria para permitir los endosos de cambio de preguntas de riesgo.
IAXIS-3980         01/08/2019 Daniel Rodríguez.
***********************************************************************************************************************/
--
delete from pds_supl_validacio p where p.cconfig = 'conf_685_80009_suplemento_tf';
delete from pds_supl_form p where p.cconfig = 'conf_685_80009_suplemento_tf';
delete from pds_supl_cod_config p where p.cconfig IN ('conf_685_80009_suplemento_tf','conf_685_80009_modif_prop');
delete from pds_supl_config p where p.cconfig IN ('conf_685_80009_suplemento_tf','conf_685_80009_modif_prop') ;

insert into pds_supl_config (CCONFIG, CMOTMOV, SPRODUC, CMODO, CTIPFEC, TFECREC, SUPLCOLEC, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('conf_685_80009_suplemento_tf', 685, 80009, 'SUPLEMENTO', 1, 'F_SYSDATE', null, null, null, null, null);

insert into pds_supl_config (CCONFIG, CMOTMOV, SPRODUC, CMODO, CTIPFEC, TFECREC, SUPLCOLEC, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('conf_685_80009_modif_prop', 685, 80009, 'MODIF_PROP', 1, 'F_SYSDATE', null, null, null, null, null);

insert into pds_supl_cod_config (CCONSUPL, CCONFIG)
values ('SUPL_BBDD', 'conf_685_80009_modif_prop');

insert into pds_supl_cod_config (CCONSUPL, CCONFIG)
values ('SUPL_BBDD', 'conf_685_80009_suplemento_tf');

insert into pds_supl_cod_config (CCONSUPL, CCONFIG)
values ('SUPL_TOTAL', 'conf_685_80009_suplemento_tf');

insert into pds_supl_form (CCONFIG, TFORM)
values ('conf_685_80009_suplemento_tf', 'BBDD');

insert into pds_supl_validacio (CCONFIG, NSELECT, TSELECT)
values ('conf_685_80009_suplemento_tf', 1, 'BEGIN   SELECT COUNT(1)     INTO :mi_cambio     FROM (SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo             FROM pregunseg e, seguros s, pregunpro p            WHERE e.sseguro = :pssegpol              AND e.cpregun NOT IN(1, 4049)              AND e.nmovimi = (SELECT MAX(e1.nmovimi)                                 FROM pregunseg e1                                WHERE e1.sseguro = :pssegpol)              AND e.nriesgo IN(SELECT r.nriesgo                                 FROM estriesgos r                                WHERE r.sseguro = :psseguro                                  AND r.fanulac IS NULL)              AND s.sseguro = e.sseguro              AND s.sproduc = p.sproduc              AND e.cpregun = p.cpregun              AND((p.cpretip <> 2)                  OR(p.cpretip = 2                     AND p.esccero = 1))           MINUS           SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo             FROM estpregunseg e, estseguros s, pregunpro p            WHERE e.sseguro = :psseguro              AND e.nmovimi = :pnmovimi              AND e.cpregun NOT IN(1, 4049)              AND e.nriesgo IN(SELECT r.nriesgo                                 FROM riesgos r                                WHERE r.sseguro = :pssegpol                                  AND r.fanulac IS NULL)              AND s.sseguro = e.sseguro              AND s.sproduc = p.sproduc              AND e.cpregun = p.cpregun              AND((p.cpretip <> 2)                  OR(p.cpretip = 2                     AND p.esccero = 1))); END;');

insert into pds_supl_validacio (CCONFIG, NSELECT, TSELECT)
values ('conf_685_80009_suplemento_tf', 2, 'BEGIN   SELECT COUNT(1)     INTO :mi_cambio     FROM (SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo             FROM estpregunseg e, estseguros s, pregunpro p            WHERE e.sseguro = :psseguro              AND e.nmovimi = :pnmovimi              AND e.cpregun NOT IN(1, 4049)              AND e.nriesgo IN(SELECT r.nriesgo                                 FROM riesgos r                                WHERE r.sseguro = :pssegpol                                  AND r.fanulac IS NULL)              AND s.sseguro = e.sseguro              AND s.sproduc = p.sproduc              AND e.cpregun = p.cpregun              AND((p.cpretip <> 2)                  OR(p.cpretip = 2                     AND p.esccero = 1))           MINUS           SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo             FROM pregunseg e, seguros s, pregunpro p            WHERE e.sseguro = :pssegpol              AND e.cpregun NOT IN(1, 4049)              AND e.nmovimi = (SELECT MAX(e1.nmovimi)                                 FROM pregunseg e1                                WHERE e1.sseguro = :pssegpol)              AND e.nriesgo IN(SELECT r.nriesgo                                 FROM estriesgos r                                WHERE r.sseguro = :psseguro                                  AND r.fanulac IS NULL)              AND s.sseguro = e.sseguro              AND s.sproduc = p.sproduc              AND e.cpregun = p.cpregun              AND((p.cpretip <> 2)                  OR(p.cpretip = 2                     AND p.esccero = 1))); END;');
--
delete from pds_supl_validacio p where p.cconfig = 'conf_685_80010_suplemento_tf';
delete from pds_supl_form p where p.cconfig = 'conf_685_80010_suplemento_tf';
delete from pds_supl_cod_config p where p.cconfig IN ('conf_685_80010_suplemento_tf','conf_685_80010_modif_prop');
delete from pds_supl_config p where p.cconfig IN ('conf_685_80010_suplemento_tf','conf_685_80010_modif_prop') ;

insert into pds_supl_config (CCONFIG, CMOTMOV, SPRODUC, CMODO, CTIPFEC, TFECREC, SUPLCOLEC, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('conf_685_80010_suplemento_tf', 685, 80010, 'SUPLEMENTO', 1, 'F_SYSDATE', null, null, null, null, null);

insert into pds_supl_config (CCONFIG, CMOTMOV, SPRODUC, CMODO, CTIPFEC, TFECREC, SUPLCOLEC, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('conf_685_80010_modif_prop', 685, 80010, 'MODIF_PROP', 1, 'F_SYSDATE', null, null, null, null, null);

insert into pds_supl_cod_config (CCONSUPL, CCONFIG)
values ('SUPL_BBDD', 'conf_685_80010_modif_prop');

insert into pds_supl_cod_config (CCONSUPL, CCONFIG)
values ('SUPL_BBDD', 'conf_685_80010_suplemento_tf');

insert into pds_supl_cod_config (CCONSUPL, CCONFIG)
values ('SUPL_TOTAL', 'conf_685_80010_suplemento_tf');

insert into pds_supl_form (CCONFIG, TFORM)
values ('conf_685_80010_suplemento_tf', 'BBDD');

insert into pds_supl_validacio (CCONFIG, NSELECT, TSELECT)
values ('conf_685_80010_suplemento_tf', 1, 'BEGIN   SELECT COUNT(1)     INTO :mi_cambio     FROM (SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo             FROM pregunseg e, seguros s, pregunpro p            WHERE e.sseguro = :pssegpol              AND e.cpregun NOT IN(1, 4049)              AND e.nmovimi = (SELECT MAX(e1.nmovimi)                                 FROM pregunseg e1                                WHERE e1.sseguro = :pssegpol)              AND e.nriesgo IN(SELECT r.nriesgo                                 FROM estriesgos r                                WHERE r.sseguro = :psseguro                                  AND r.fanulac IS NULL)              AND s.sseguro = e.sseguro              AND s.sproduc = p.sproduc              AND e.cpregun = p.cpregun              AND((p.cpretip <> 2)                  OR(p.cpretip = 2                     AND p.esccero = 1))           MINUS           SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo             FROM estpregunseg e, estseguros s, pregunpro p            WHERE e.sseguro = :psseguro              AND e.nmovimi = :pnmovimi              AND e.cpregun NOT IN(1, 4049)              AND e.nriesgo IN(SELECT r.nriesgo                                 FROM riesgos r                                WHERE r.sseguro = :pssegpol                                  AND r.fanulac IS NULL)              AND s.sseguro = e.sseguro              AND s.sproduc = p.sproduc              AND e.cpregun = p.cpregun              AND((p.cpretip <> 2)                  OR(p.cpretip = 2                     AND p.esccero = 1))); END;');

insert into pds_supl_validacio (CCONFIG, NSELECT, TSELECT)
values ('conf_685_80010_suplemento_tf', 2, 'BEGIN   SELECT COUNT(1)     INTO :mi_cambio     FROM (SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo             FROM estpregunseg e, estseguros s, pregunpro p            WHERE e.sseguro = :psseguro              AND e.nmovimi = :pnmovimi              AND e.cpregun NOT IN(1, 4049)              AND e.nriesgo IN(SELECT r.nriesgo                                 FROM riesgos r                                WHERE r.sseguro = :pssegpol                                  AND r.fanulac IS NULL)              AND s.sseguro = e.sseguro              AND s.sproduc = p.sproduc              AND e.cpregun = p.cpregun              AND((p.cpretip <> 2)                  OR(p.cpretip = 2                     AND p.esccero = 1))           MINUS           SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo             FROM pregunseg e, seguros s, pregunpro p            WHERE e.sseguro = :pssegpol              AND e.cpregun NOT IN(1, 4049)              AND e.nmovimi = (SELECT MAX(e1.nmovimi)                                 FROM pregunseg e1                                WHERE e1.sseguro = :pssegpol)              AND e.nriesgo IN(SELECT r.nriesgo                                 FROM estriesgos r                                WHERE r.sseguro = :psseguro                                  AND r.fanulac IS NULL)              AND s.sseguro = e.sseguro              AND s.sproduc = p.sproduc              AND e.cpregun = p.cpregun              AND((p.cpretip <> 2)                  OR(p.cpretip = 2                     AND p.esccero = 1))); END;');
--
delete from pds_supl_validacio p where p.cconfig = 'conf_685_80011_suplemento_tf';
delete from pds_supl_form p where p.cconfig = 'conf_685_80011_suplemento_tf';
delete from pds_supl_cod_config p where p.cconfig IN ('conf_685_80011_suplemento_tf','conf_685_80011_modif_prop');
delete from pds_supl_config p where p.cconfig IN ('conf_685_80011_suplemento_tf','conf_685_80011_modif_prop') ;

insert into pds_supl_config (CCONFIG, CMOTMOV, SPRODUC, CMODO, CTIPFEC, TFECREC, SUPLCOLEC, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('conf_685_80011_suplemento_tf', 685, 80011, 'SUPLEMENTO', 1, 'F_SYSDATE', null, null, null, null, null);

insert into pds_supl_config (CCONFIG, CMOTMOV, SPRODUC, CMODO, CTIPFEC, TFECREC, SUPLCOLEC, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values ('conf_685_80011_modif_prop', 685, 80011, 'MODIF_PROP', 1, 'F_SYSDATE', null, null, null, null, null);

insert into pds_supl_cod_config (CCONSUPL, CCONFIG)
values ('SUPL_BBDD', 'conf_685_80011_modif_prop');

insert into pds_supl_cod_config (CCONSUPL, CCONFIG)
values ('SUPL_BBDD', 'conf_685_80011_suplemento_tf');

insert into pds_supl_cod_config (CCONSUPL, CCONFIG)
values ('SUPL_TOTAL', 'conf_685_80011_suplemento_tf');

insert into pds_supl_form (CCONFIG, TFORM)
values ('conf_685_80011_suplemento_tf', 'BBDD');

insert into pds_supl_validacio (CCONFIG, NSELECT, TSELECT)
values ('conf_685_80011_suplemento_tf', 1, 'BEGIN   SELECT COUNT(1)     INTO :mi_cambio     FROM (SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo             FROM pregunseg e, seguros s, pregunpro p            WHERE e.sseguro = :pssegpol              AND e.cpregun NOT IN(1, 4049)              AND e.nmovimi = (SELECT MAX(e1.nmovimi)                                 FROM pregunseg e1                                WHERE e1.sseguro = :pssegpol)              AND e.nriesgo IN(SELECT r.nriesgo                                 FROM estriesgos r                                WHERE r.sseguro = :psseguro                                  AND r.fanulac IS NULL)              AND s.sseguro = e.sseguro              AND s.sproduc = p.sproduc              AND e.cpregun = p.cpregun              AND((p.cpretip <> 2)                  OR(p.cpretip = 2                     AND p.esccero = 1))           MINUS           SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo             FROM estpregunseg e, estseguros s, pregunpro p            WHERE e.sseguro = :psseguro              AND e.nmovimi = :pnmovimi              AND e.cpregun NOT IN(1, 4049)              AND e.nriesgo IN(SELECT r.nriesgo                                 FROM riesgos r                                WHERE r.sseguro = :pssegpol                                  AND r.fanulac IS NULL)              AND s.sseguro = e.sseguro              AND s.sproduc = p.sproduc              AND e.cpregun = p.cpregun              AND((p.cpretip <> 2)                  OR(p.cpretip = 2                     AND p.esccero = 1))); END;');

insert into pds_supl_validacio (CCONFIG, NSELECT, TSELECT)
values ('conf_685_80011_suplemento_tf', 2, 'BEGIN   SELECT COUNT(1)     INTO :mi_cambio     FROM (SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo             FROM estpregunseg e, estseguros s, pregunpro p            WHERE e.sseguro = :psseguro              AND e.nmovimi = :pnmovimi              AND e.cpregun NOT IN(1, 4049)              AND e.nriesgo IN(SELECT r.nriesgo                                 FROM riesgos r                                WHERE r.sseguro = :pssegpol                                  AND r.fanulac IS NULL)              AND s.sseguro = e.sseguro              AND s.sproduc = p.sproduc              AND e.cpregun = p.cpregun              AND((p.cpretip <> 2)                  OR(p.cpretip = 2                     AND p.esccero = 1))           MINUS           SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo             FROM pregunseg e, seguros s, pregunpro p            WHERE e.sseguro = :pssegpol              AND e.cpregun NOT IN(1, 4049)              AND e.nmovimi = (SELECT MAX(e1.nmovimi)                                 FROM pregunseg e1                                WHERE e1.sseguro = :pssegpol)              AND e.nriesgo IN(SELECT r.nriesgo                                 FROM estriesgos r                                WHERE r.sseguro = :psseguro                                  AND r.fanulac IS NULL)              AND s.sseguro = e.sseguro              AND s.sproduc = p.sproduc              AND e.cpregun = p.cpregun              AND((p.cpretip <> 2)                  OR(p.cpretip = 2                     AND p.esccero = 1))); END;');
--
COMMIT;
/



