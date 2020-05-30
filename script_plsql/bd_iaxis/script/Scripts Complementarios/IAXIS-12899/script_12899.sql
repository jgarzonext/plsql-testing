DELETE      cfg_form_property
      WHERE cform = 'AXISCTR207'
        AND cidcfg IN (237802)
        AND citem IN ('FINIVIG', 'FFINVIG');

INSERT INTO cfg_form_property
     VALUES (24, 237802, 'AXISCTR207', 'FINIVIG', 2, 1);
INSERT INTO cfg_form_property
     VALUES (24, 237802, 'AXISCTR207', 'FFINVIG', 2, 1);


COMMIT ;