/* Formatted on 2020/05/27 18:34 (Formatter Plus v4.8.8) */
DELETE      con_homologa_osiax
      WHERE tosiris = 'S03502'
        AND campo_osi IN ('00002068', '00002090', '00002092');
INSERT INTO con_homologa_osiax
            (norden, tosiris, label_campo_osi, campo_osi, tipvalor_osi,
             tipcampo_osi, tiaxis, label_campo_iax, campo_iax, tipvalor_iax,
             tipcampo_iax, query_insert, campo_extra,
             query_select,
             campo_extra1
            )
     VALUES (22, 'S03502', 'FECHA CUPO', '00002068', 'DATE',
             '2', 'FIN_INDICADORES', 'FCUPO', 'FCUPO', 'DATE',
             '1', NULL, NULL,
             'SELECT FCUPO FROM FIN_INDICADORES FIN WHERE FIN.SFINANCI = (SELECT MAX (SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON) AND FIN.FINDICAD = (SELECT MAX (FINDICAD) FROM FIN_INDICADORES WHERE SFINANCI = FIN.SFINANCI AND TO_CHAR (FINDICAD, ''DD/MM'') = ''31/12'')',
             NULL
            );
INSERT INTO con_homologa_osiax
            (norden, tosiris, label_campo_osi, campo_osi, tipvalor_osi,
             tipcampo_osi, tiaxis, label_campo_iax, campo_iax, tipvalor_iax,
             tipcampo_iax, query_insert, campo_extra,
             query_select,
             campo_extra1
            )
     VALUES (23, 'S03502', 'CUPO GARANTIZADO', '00002090', 'NUMBER',
             '2', 'FIN_INDICADORES', 'ICUPOG', 'ICUPOG', 'NUMBER',
             '1', NULL, NULL,
             'SELECT ICUPOG FROM FIN_INDICADORES FIN WHERE FIN.SFINANCI = (SELECT MAX (SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON) AND FIN.FINDICAD = (SELECT MAX (FINDICAD) FROM FIN_INDICADORES WHERE SFINANCI = FIN.SFINANCI AND TO_CHAR (FINDICAD, ''DD/MM'') = ''31/12'')',
             NULL
            );
INSERT INTO con_homologa_osiax
            (norden, tosiris, label_campo_osi, campo_osi, tipvalor_osi,
             tipcampo_osi, tiaxis, label_campo_iax, campo_iax, tipvalor_iax,
             tipcampo_iax, query_insert, campo_extra,
             query_select,
             campo_extra1
            )
     VALUES (24, 'S03502', 'CUPO SUGERIDO', '00002092', 'NUMBER',
             '2', 'FIN_INDICADORES', 'ICUPOS', 'ICUPOS', 'NUMBER',
             '1', NULL, NULL,
             'SELECT ICUPOS FROM FIN_INDICADORES FIN WHERE FIN.SFINANCI = (SELECT MAX (SFINANCI) FROM FIN_GENERAL WHERE SPERSON = :PSPERSON) AND FIN.FINDICAD = (SELECT MAX (FINDICAD) FROM FIN_INDICADORES WHERE SFINANCI = FIN.SFINANCI AND TO_CHAR (FINDICAD, ''DD/MM'') = ''31/12'')',
             NULL
            );
COMMIT ;