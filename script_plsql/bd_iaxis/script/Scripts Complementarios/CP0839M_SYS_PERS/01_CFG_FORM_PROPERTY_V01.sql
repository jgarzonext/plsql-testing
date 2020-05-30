UPDATE cfg_form_property c
   SET c.cvalue = 0
 WHERE c.cempres = 24
   AND c.cform = 'AXISPER001'
   AND c.cidcfg IN (SELECT DISTINCT c.cidcfg
                      FROM cfg_form c
                     WHERE c.cempres = 24
                       AND c.cform = 'AXISPER001'
                       AND c.cmodo = 'ALTA_POLIZA'
                       AND c.ccfgform = 'CFG_CENTRAL')
   AND c.citem IN ('BT_NUEVA_PERSONA',
                   'BT_MODIFICAR');

--
--
-- AXISCTR026
-- Botón BT_EDITAR_DOMICILIO
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 806501, 'AXISCTR026', 'BT_EDITAR_DOMICILIO', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 806201, 'AXISCTR026', 'BT_EDITAR_DOMICILIO', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 1, 'AXISCTR026', 'BT_EDITAR_DOMICILIO', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 808601, 'AXISCTR026', 'BT_EDITAR_DOMICILIO', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 803801, 'AXISCTR026', 'BT_EDITAR_DOMICILIO', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 806301, 'AXISCTR026', 'BT_EDITAR_DOMICILIO', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 201005, 'AXISCTR026', 'BT_EDITAR_DOMICILIO', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 808801, 'AXISCTR026', 'BT_EDITAR_DOMICILIO', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 800101, 'AXISCTR026', 'BT_EDITAR_DOMICILIO', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 808901, 'AXISCTR026', 'BT_EDITAR_DOMICILIO', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 806401, 'AXISCTR026', 'BT_EDITAR_DOMICILIO', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 808701, 'AXISCTR026', 'BT_EDITAR_DOMICILIO', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 808501, 'AXISCTR026', 'BT_EDITAR_DOMICILIO', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
-- Botón BT_EDITAR_PER
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 806501, 'AXISCTR026', 'BT_EDITAR_PER', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 806201, 'AXISCTR026', 'BT_EDITAR_PER', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 1, 'AXISCTR026', 'BT_EDITAR_PER', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 808601, 'AXISCTR026', 'BT_EDITAR_PER', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 803801, 'AXISCTR026', 'BT_EDITAR_PER', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 806301, 'AXISCTR026', 'BT_EDITAR_PER', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 201005, 'AXISCTR026', 'BT_EDITAR_PER', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 808801, 'AXISCTR026', 'BT_EDITAR_PER', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 800101, 'AXISCTR026', 'BT_EDITAR_PER', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 808901, 'AXISCTR026', 'BT_EDITAR_PER', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 806401, 'AXISCTR026', 'BT_EDITAR_PER', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 808701, 'AXISCTR026', 'BT_EDITAR_PER', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
BEGIN
  INSERT INTO cfg_form_property
    (cempres, cidcfg, cform, citem, cprpty, cvalue)
  VALUES
    (24, 808501, 'AXISCTR026', 'BT_EDITAR_PER', 1, 0);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/
