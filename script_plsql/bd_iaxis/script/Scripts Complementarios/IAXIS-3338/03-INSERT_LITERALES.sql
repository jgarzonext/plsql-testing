delete from axis_codliterales where slitera = 89906319;
delete from axis_codliterales where slitera = 89906320;

INSERT INTO axis_codliterales (SLITERA, CLITERA) VALUES (89906319,3);
INSERT INTO axis_codliterales (SLITERA, CLITERA) VALUES (89906320,3);

INSERT INTO axis_literales (CIDIOMA, SLITERA, TLITERA) VALUES (2,89906319, 'Retención por póliza');
INSERT INTO axis_literales (CIDIOMA, SLITERA, TLITERA) VALUES (1,89906319, 'Retenció per pòlissa');
INSERT INTO axis_literales (CIDIOMA, SLITERA, TLITERA) VALUES (8,89906319, 'Retención por póliza');
INSERT INTO axis_literales (CIDIOMA, SLITERA, TLITERA) VALUES (2,89906320, 'Retención por cúmulo');
INSERT INTO axis_literales (CIDIOMA, SLITERA, TLITERA) VALUES (1,89906320, 'Retenció per cúmul');
INSERT INTO axis_literales (CIDIOMA, SLITERA, TLITERA) VALUES (8,89906320, 'Retención por cúmulo');

commit;