BEGIN
DELETE ECO_DESMONEDAS WHERE CMONEDA IN ('AFN','ALL','AOA','XCD','SAR','DZD','ARS','AMD','AUD','AZN','BSD','BDT','BBD','BHD','BZD','XOF','BYN','MMK','BOB','BAM','BWP','BRL','BND','BGN','BIF','BTN','CVE','KHR','XAF','CAD','QAR','CLP','CNY','KMF','KPW','KRW','CRC','HRK','CUP','DKK','EGP','AED',
'ERN','ETB','PHP','FJD','GMD','GEL','GHS','GTQ','GNF','GYD','HTG','HNL','HUF','INR','IDR','IQD','IRR','ISK','SBD','ILS','JMD','JPY','JOD','KZT','KES','KGS','KWD','LAK','LSL','LBP','LRD','LYD','MKD','MGA','MYR','MWK','MVR','MAD','MUR','MRO','MXN','MDL',
'MNT','MZN','NAD','NPR','NIO','NGN','NOK','NZD','OMR','PKR','PAB','PGK','PYG','PEN','PLN','GBP','CZK','CDF','DOP','RWF','RON','RUB','WST','STD','RSD','SCR','SLL','SGD','SYP','SOS','LKR','SZL','ZAR','SDG','SSP','SEK','SRD','THB','TWD','TZS','TJS','TOP',
'TTD','TND','TMT','TRY','UAH','UGX','UYU','UZS','VUV','VEF','VND','YER','DJF','ZMW','HKD','AWG','IEP','BMD','EEK') AND CIDIOMA = 8;
EXCEPTION WHEN OTHERS THEN
NULL;
END;
/
BEGIN
UPDATE ECO_DESMONEDAS SET TMONEDA = 'Dolar Estadounidense' WHERE CMONEDA = 'USD' AND CIDIOMA = 8;
UPDATE ECO_DESMONEDAS SET TMONEDA = 'Euro' WHERE CMONEDA = 'EUR' AND CIDIOMA = 8;
EXCEPTION WHEN OTHERS THEN
NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('EEK',8,'Corona de Estonia',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BMD',8,'Dolar de Bermudas',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('IEP',8,'Libra Irlandesa',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('AWG',8,'Florin de Aruba',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('HKD',8,'Dolar de Hong Kong',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('AFN',8,'Afgani afgano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('ALL',8,'Lek albanes',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('AOA',8,'Kwanza angoleno',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('XCD',8,'Dolar del Caribe Oriental',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('SAR',8,'Riyal saudi',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('DZD',8,'Dinar argelino',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('ARS',8,'Peso Argentino',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('AMD',8,'Dram armenio',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('AUD',8,'Dolar australiano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('AZN',8,'Manat azeri',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BSD',8,'Dolar bahameno',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BDT',8,'Taka bangladeshi',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BBD',8,'Dolar de Barbados',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BHD',8,'Dinar bahreini',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BZD',8,'Dolar beliceno',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('XOF',8,'Franco CFA de Africa Occidental',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BYN',8,'Rublo bielorruso',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('MMK',8,'Kyat birmano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BOB',8,'Boliviano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BAM',8,'Marco convertible',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BWP',8,'Pula',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BRL',8,'Real brasileno',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BND',8,'Dolar de Brunei',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BGN',8,'Lev bulgaro',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BIF',8,'Franco de Burundi',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('BTN',8,'Ngultrum butanes',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('CVE',8,'Escudo caboverdiano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('KHR',8,'Riel camboyano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('XAF',8,'Franco CFA de Africa Central',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('CAD',8,'Dolar canadiense',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('QAR',8,'Riyal qatari',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('CLP',8,'Peso chileno',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('CNY',8,'Yuan chino',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('KMF',8,'Franco comorano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('KPW',8,'Won norcoreano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('KRW',8,'Won surcoreano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('CRC',8,'Colon costarricense',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('HRK',8,'Kuna croata',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('CUP',8,'Peso cubano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('DKK',8,'Corona danesa',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('EGP',8,'Libra egipcia',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('AED',8,'Dirham de los Emiratos Arabes Unidos',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('ERN',8,'Nakfa',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('ETB',8,'Birr etiope',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('PHP',8,'Peso filipino',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('FJD',8,'Dolar fiyiano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('GMD',8,'Dalasi',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('GEL',8,'Lari georgiano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('GHS',8,'Cedi',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('GTQ',8,'Quetzal guatemalteco',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('GNF',8,'Franco guineano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('GYD',8,'Dolar guyanes',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('HTG',8,'Gourde haitiano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('HNL',8,'Lempira hondureno',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('HUF',8,'Forinto hungaro',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('INR',8,'Rupia india',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('IDR',8,'Rupia indonesia',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('IQD',8,'Dinar iraqui',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('IRR',8,'Rial irani',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('ISK',8,'Corona islandes',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('SBD',8,'Dolar de las Islas Salomon',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('ILS',8,'Nuevo shequel',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('JMD',8,'Dolar jamaiquino',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('JPY',8,'Yen',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('JOD',8,'Dinar jordano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('KZT',8,'Tenge kazajo',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('KES',8,'Chelin keniano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('KGS',8,'Som kirguis',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('KWD',8,'Dinar kuwaiti',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('LAK',8,'Kip laosiano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('LSL',8,'Loti',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('LBP',8,'Libra libanesa',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('LRD',8,'Dolar liberiano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('LYD',8,'Dinar libio',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('MKD',8,'Denar macedonio',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('MGA',8,'Ariary malgache',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('MYR',8,'Ringgit malayo',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('MWK',8,'Kwacha malaui',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('MVR',8,'Rupia de Maldivas',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('MAD',8,'Dirham marroqui',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('MUR',8,'Rupia de Mauricio',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('MRO',8,'Uguiya',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('MXN',8,'Peso mexicano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('MDL',8,'Leu moldavo',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('MNT',8,'Tugrik mongol',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('MZN',8,'Metical mozambiqueno',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('NAD',8,'Dolar namibio',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('NPR',8,'Rupia nepali',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('NIO',8,'Cordoba nicaragüense',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('NGN',8,'Naira',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('NOK',8,'Corona noruega',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('NZD',8,'Dolar neozelandes',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('OMR',8,'Rial omani',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('PKR',8,'Rupia pakistani',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('PAB',8,'Balboa panameno',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('PGK',8,'Kina',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('PYG',8,'Guarani',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('PEN',8,'Nuevo sol',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('PLN',8,'Zloty',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('GBP',8,'Libra Esterlina',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('CZK',8,'Corona checa',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('CDF',8,'Franco congoleno',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('DOP',8,'Peso dominicano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('RWF',8,'Franco ruandes',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('RON',8,'Leu rumano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('RUB',8,'Rublo ruso',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('WST',8,'Tala',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('STD',8,'Dobra',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('RSD',8,'Dinar serbio',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('SCR',8,'Rupia de Seychelles',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('SLL',8,'Leone',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('SGD',8,'Dolar de Singapur',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('SYP',8,'Libra siria',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('SOS',8,'Chelin somali',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('LKR',8,'Rupia de Sri Lanka',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('SZL',8,'Lilangeni',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('ZAR',8,'Rand sudafricano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('SDG',8,'Libra sudanesa',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('SSP',8,'Libra sursudanesa',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('SEK',8,'Corona sueca',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('SRD',8,'Dolar surinames',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('THB',8,'Baht tailandes',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('TWD',8,'Nuevo dolar taiwanes',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('TZS',8,'Chelin tanzano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('TJS',8,'Somoni tayiko',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('TOP',8,'Pa"anga',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('TTD',8,'Dolar trinitense',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('TND',8,'Dinar tunecino',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('TMT',8,'Manat turcomano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('TRY',8,'Lira turca',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('UAH',8,'Grivna',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('UGX',8,'Chelin ugandes',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('UYU',8,'Peso uruguayo',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('UZS',8,'Som uzbeko',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('VUV',8,'Vatu',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('VEF',8,'Bolivar fuerte',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('VND',8,'Dong vietnamita',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('YER',8,'Rial yemeni',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('DJF',8,'Franco yibutiano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/
BEGIN
INSERT INTO ECO_DESMONEDAS (CMONEDA,CIDIOMA,TMONEDA,TPLUMON) VALUES ('ZMW',8,'Kwacha zambiano',NULL);
EXCEPTION WHEN DUP_VAL_ON_INDEX THEN
	NULL;
END;
/