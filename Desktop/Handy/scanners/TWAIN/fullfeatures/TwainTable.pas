unit TwainTable;

interface

uses
  Twain;

type
  {Information about a capability}
  TCapabilityInfo = record
    STR: String;
    ID : TW_UINT16;
  end;
  TCapabilityInfoArray = array [0..0] of TCapabilityInfo;
  pCapabilityInfoArray = ^TCapabilityInfoArray;

  {Twain table info}
  TTableInfo = record
    ID: TW_UINT16;
    DefType: TW_UINT16;
  end;

  {Capability table entries}
  TTableEntry = record
    Cap: TW_UINT16;
    PTR: pCapabilityInfoArray;
    Count: Integer;
  end;

const
  MAX_PIXELTYPE = 9;
  MAX_PALETTETYPE = 3;
  MAX_FORMATTYPE = 5;
  MAX_COMPRESSIONTYPE = 9;
  MAX_VERLANGUAGETYPE = 14;
  MAX_VERCONTRYTYPE = 210;
  MAX_CAPABILITY = 124;
  MAX_BITORDERTYPE = 2;
  MAX_FILTERTYPE = 9;
  MAX_LIGHTPATHTYPE = 2;
  MAX_LIGHTSOURCETYPE = 7;
  MAX_ORIENTATIONTYPE = 6;
  MAX_PLANARCHUNKYTYPE = 2;
  MAX_PIXELFLAVORTYPE = 2;
  MAX_SETUPXFERTYPE = 4;
  MAX_UNITSTYPE = 6;
  MAX_SUPPORTEDSIZETYPE = 16;
  MAX_BITDEPTHREDUCTIONTYPE = 4;
  MAX_DUPLEXTYPE = 3;
  MAX_JOBCONTROLTYPE = 5;
  MAX_AUDIOFORMATTYPE = 4;
  MAX_ALARMSTYPE = 9;


  {Names for all capabilities specified by twain}
  CapabilitySTR: Array[0..MAX_CAPABILITY - 1] of String = ('CAP_XFERCOUNT',
    'ICAP_COMPRESSION', 'ICAP_PIXELTYPE', 'ICAP_UNITS', 'ICAP_XFERMECH',
    'CAP_AUTHOR', 'CAP_CAPTION', 'CAP_FEEDERENABLED', 'CAP_FEEDERLOADED',
    'CAP_TIMEDATE', 'CAP_SUPPORTEDCAPS', 'CAP_EXTENDEDCAPS', 'CAP_AUTOFEED',
    'CAP_CLEARPAGE', 'CAP_FEEDPAGE', 'CAP_REWINDPAGE', 'CAP_INDICATORS',
    'CAP_SUPPORTEDCAPSEXT', 'CAP_PAPERDETECTABLE', 'CAP_UICONTROLLABLE',
    'CAP_DEVICEONLINE', 'CAP_AUTOSCAN', 'CAP_THUMBNAILENABLED', 'CAP_DUPLEX',
    'CAP_DUPLEXENABLED', 'CAP_ENABLEDSUIONLY', 'CAP_CUSTOMDATA', 'CAP_ENDUSER',
    'CAP_JOBCONTROL', 'CAP_ALARMS', 'CAP_ALARMVOLUME', 'CAP_AUTOMATICCAPTURE',
    'CAP_TIMEBEFOREFIRSTCAPTURE', 'TIME_BETWEENCAPTURES', 'CAP_CLEARBUFFERS',
    'CAP_MAXBATCHBUFFERS', 'CAP_DEVICETIMEDATE', 'CAP_POWERSUPPLY',
    'CAP_CAMERAPREVIEWUI', 'CAP_DEVICEEVENT', 'CAP_SERIALNUMBER', 'CAP_PRINTER',
    'CAP_PRINTERENABLED', 'CAP_PRINTERINDEX', 'CAP_PRINTERMODE',
    'CAP_PRINTERSTRING', 'CAP_PRINTERSUFFIX', 'CAP_LANGUAGE',
    'CAP_FEEDERALIGNMENT', 'CAP_FEEDERORDER', 'CAP_REACQUIREALLOWED',
    'CAP_BATTERYMINUTES', 'CAP_BATTERYPERCENTAGE', 'ICAP_AUTOBRIGHT',
    'ICAP_BRIGHTNESS', 'ICAP_CONTRAST', 'ICAP_CUSTHALFTONE',
    'ICAP_EXPOSURETIME', 'ICAP_FILTER', 'ICAP_FLASHUSED', 'ICAP_GAMMA',
    'ICAP_HALFTONES', 'ICAP_HIGHLIGHT', 'ICAP_IMAGEFILEFORMAT',
    'ICAP_LAMPSTATE', 'ICAP_LIGHTSOURCE', 'ICAP_ORIENTATION',
    'ICAP_PHYSICALWIDTH', 'ICAP_PHYSICALHEIGHT', 'ICAP_SHADOW', 'ICAP_FRAMES',
    'ICAP_XNATIVERESOLUTION', 'ICAP_YNATIVERESOLUTION', 'ICAP_XRESOLUTION',
    'ICAP_YRESOLUTION', 'ICAP_MAXFRAMES', 'ICAP_TILES', 'ICAP_BITORDER',
    'ICAP_CCITTKFACTOR', 'ICAP_LIGHTPATH', 'ICAP_PIXELFLAVOR',
    'ICAP_PLANARCHUNKY', 'ICAP_ROTATION', 'ICAP_SUPPORTEDSIZES',
    'ICAP_THRESHOLD', 'ICAP_XSCALING', 'ICAP_YSCALING', 'ICAP_BITORDERCODES',
    'ICAP_PIXELFLAVORCODES', 'ICAP_JPEGPIXELTYPE', 'ICAP_TIMEFILL',
    'ICAP_BITDEPTH', 'ICAP_BITDEPTHREDUCTION', 'ICAP_UNDEFINEDIMAGESIZE',
    'ICAP_IMAGEDATASET', 'ICAP_EXTIMAGEINFO', 'ICAP_MINIMUMHEIGHT',
    'ICAP_MINIMUMWIDTH', 'ICAP_FLIPROTATION', 'ICAP_BARCODEDETECTIONENABLED',
    'ICAP_SUPPORTEDBARCODETYPES', 'ICAP_BARCODEMAXSEARCHPRIORITIES',
    'ICAP_BARCODESEARCHPRIORITIES', 'ICAP_BARCODESEARCHMODE',
    'ICAP_BARCODEMAXRETRIES', 'ICAP_BARCODETIMEOUT', 'ICAP_ZOOMFACTOR',
    'ICAP_PATCHCODEDETECTIONENABLED', 'ICAP_SUPPORTEDPATCHCODETYPES',
    'ICAP_PATCHCODEMAXSEARCHPRIORITIES', 'ICAP_PATCHCODESEARCHPRIORITIES',
    'ICAP_PATCHCODESEARCHMODE', 'ICAP_PATCHCODEMAXRETRIES',
    'ICAP_PATCHCODETIMEOUT', 'ICAP_FLASHUSED2', 'ICAP_IMAGEFILTER',
    'ICAP_NOISEFILTER', 'ICAP_OVERSCAN', 'ICAP_AUTOMATICBORDERDETECTION',
    'ICAP_AUTOMATICDESKEW', 'ICAP_AUTOMATICROTATE', 'ICAP_JPEGQUALITY',
    'ACAP_AUDIOFILEFORMAT', 'ACAP_XFERMECH');

  {IDs for the capabilities above}
  CapabilityID: Array [0..MAX_CAPABILITY - 1] of TTableInfo = (
    (ID:$0001; DefType:TWTY_INT16), (ID:$0100; DefType:TWTY_UINT16),
    (ID:$0101; DefType:TWTY_UINT16), (ID:$0102; DefType:TWTY_UINT16),
    (ID:$0103; DefType:TWTY_UINT16), (ID:$1000; DefType:TWTY_STR128),
    (ID:$1001; DefType:TWTY_STR255), (ID:$1002; DefType:TWTY_BOOL),
    (ID:$1003; DefType:TWTY_BOOL), (ID:$1004; DefType:TWTY_STR32),
    (ID:$1005; DefType:TWTY_UINT16), (ID:$1006; DefType:TWTY_UINT16),
    (ID:$1007; DefType:TWTY_BOOL), (ID:$1008; DefType:TWTY_BOOL),
    (ID:$1009; DefType:TWTY_BOOL), (ID:$100a; DefType:TWTY_BOOL),
    (ID:$100b; DefType:TWTY_BOOL), (ID:$100c; DefType:TWTY_UINT16),
    (ID:$100d; DefType:TWTY_BOOL), (ID:$100e; DefType:TWTY_BOOL),
    (ID:$100f; DefType:TWTY_BOOL), (ID:$1010; DefType:TWTY_BOOL),
    (ID:$1011; DefType:TWTY_BOOL), (ID:$1012; DefType:TWTY_UINT16),
    (ID:$1013; DefType:TWTY_BOOL), (ID:$1014; DefType:TWTY_BOOL),
    (ID:$1015; DefType:TWTY_BOOL), (ID:$1016; DefType:TWTY_UINT32),
    (ID:$1017; DefType:TWTY_UINT16), (ID:$1018; DefType:TWTY_UINT16),
    (ID:$1019; DefType:TWTY_INT32), (ID:$101a; DefType:TWTY_INT32),
    (ID:$101b; DefType:TWTY_INT32), (ID:$101c; DefType:TWTY_INT32),
    (ID:$101d; DefType:TWTY_UINT16), (ID:$101e; DefType:TWTY_UINT32),
    (ID:$101f; DefType:TWTY_STR32), (ID:$1020; DefType:TWTY_UINT16),
    (ID:$1021; DefType:TWTY_BOOL), (ID:$1022; DefType:TWTY_UINT16),
    (ID:$1024; DefType:TWTY_STR255), (ID:$1026; DefType:TWTY_UINT16),
    (ID:$1027; DefType:TWTY_BOOL), (ID:$1028; DefType:TWTY_UINT32),
    (ID:$1029; DefType:TWTY_UINT16), (ID:$102a; DefType:TWTY_STR255),
    (ID:$102b; DefType:TWTY_STR255), (ID:$102c; DefType:TWTY_UINT16),
    (ID:$102d; DefType:TWTY_UINT16), (ID:$102e; DefType:TWTY_UINT16),
    (ID:$1030; DefType:TWTY_BOOL), (ID:$1032; DefType:TWTY_INT32),
    (ID:$1033; DefType:TWTY_INT16), (ID:$1100; DefType:TWTY_BOOL),
    {1101 = ICAP_BRIGHTNESS}
    (ID:$1101; DefType:TWTY_FIX32), (ID:$1103; DefType:TWTY_FIX32),
    (ID:$1104; DefType:TWTY_UINT8), (ID:$1105; DefType:TWTY_FIX32),
    (ID:$1106; DefType:TWTY_UINT16), (ID:$1107; DefType:TWTY_BOOL),
    (ID:$1108; DefType:TWTY_FIX32), (ID:$1109; DefType:TWTY_STR32),
    (ID:$110a; DefType:TWTY_FIX32), (ID:$110c; DefType:TWTY_UINT16),
    (ID:$110d; DefType:TWTY_BOOL), (ID:$110e; DefType:TWTY_UINT16),
    (ID:$1110; DefType:TWTY_UINT16), (ID:$1111; DefType:TWTY_FIX32),
    (ID:$1112; DefType:TWTY_FIX32), (ID:$1113; DefType:TWTY_FIX32),
    (ID:$1114; DefType:TWTY_FRAME), (ID:$1116; DefType:TWTY_FIX32),
    (ID:$1117; DefType:TWTY_FIX32), (ID:$1118; DefType:TWTY_FIX32),
    (ID:$1119; DefType:TWTY_FIX32), (ID:$111a; DefType:TWTY_UINT16),
    (ID:$111b; DefType:TWTY_BOOL), (ID:$111c; DefType:TWTY_UINT16),
    (ID:$111d; DefType:TWTY_UINT16), (ID:$111e; DefType:TWTY_UINT16),
    (ID:$111f; DefType:TWTY_UINT16), (ID:$1120; DefType:TWTY_UINT16),
    (ID:$1121; DefType:TWTY_FIX32), (ID:$1122; DefType:TWTY_UINT16),
    (ID:$1123; DefType:TWTY_FIX32), (ID:$1124; DefType:TWTY_FIX32),
    (ID:$1125; DefType:TWTY_FIX32), (ID:$1126; DefType:TWTY_UINT16),
    (ID:$1127; DefType:TWTY_UINT16), (ID:$1128; DefType:TWTY_UINT16),
    (ID:$112a; DefType:TWTY_UINT16), (ID:$112b; DefType:TWTY_UINT16),
    (ID:$112c; DefType:TWTY_UINT16), (ID:$112d; DefType:TWTY_BOOL),
    (ID:$112e; DefType:TWTY_UINT32), (ID:$112f; DefType:TWTY_BOOL),
    (ID:$1130; DefType:TWTY_FIX32), (ID:$1131; DefType:TWTY_FIX32),
    (ID:$1136; DefType:TWTY_UINT16), (ID:$1137; DefType:TWTY_BOOL),
    (ID:$1138; DefType:TWTY_UINT16), (ID:$1139; DefType:TWTY_UINT32),
    (ID:$113a; DefType:TWTY_UINT16), (ID:$113b; DefType:TWTY_UINT16),
    (ID:$113c; DefType:TWTY_UINT32), (ID:$113d; DefType:TWTY_UINT32),
    (ID:$113e; DefType:TWTY_UINT16), (ID:$113f; DefType:TWTY_BOOL),
    (ID:$1140; DefType:TWTY_UINT16), (ID:$1141; DefType:TWTY_UINT32),
    (ID:$1142; DefType:TWTY_UINT16), (ID:$1143; DefType:TWTY_UINT16),
    (ID:$1144; DefType:TWTY_UINT32), (ID:$1145; DefType:TWTY_UINT32),
    (ID:$1146; DefType:TWTY_UINT16), (ID:$1147; DefType:TWTY_UINT16),
    (ID:$1148; DefType:TWTY_UINT16), (ID:$1149; DefType:TWTY_UINT16),
    (ID:$1150; DefType:TWTY_BOOL), (ID:$1151; DefType:TWTY_BOOL),
    (ID:$1152; DefType:TWTY_BOOL), (ID:$1153; DefType:TWTY_INT16),
    (ID:$1201; DefType:TWTY_UINT16), (ID:$1202; DefType:TWTY_UINT16));

  PixelType: Array[0..MAX_PIXELTYPE - 1] of TCapabilityInfo = (
     (STR:'TWPT_BW'; ID:TWPT_BW),
     (STR:'TWPT_GRAY'; ID:TWPT_GRAY),
     (STR:'TWPT_RGB'; ID:TWPT_RGB),
     (STR:'TWPT_PALETTE'; ID:TWPT_PALETTE),
     (STR:'TWPT_CMY'; ID:TWPT_CMY),
     (STR:'TWPT_CMYK'; ID:TWPT_CMYK),
     (STR:'TWPT_YUV'; ID:TWPT_YUV),
     (STR:'TWPT_YUVK'; ID:TWPT_YUVK),
     (STR:'TWPT_CIEXYZ'; ID:TWPT_CIEXYZ));

  PaletteType: Array[0..MAX_PALETTETYPE - 1] of TCapabilityInfo = (
     (STR: 'TWPA_RGB'; ID: TWPA_RGB),
     (STR: 'TWPA_GRAY'; ID: TWPA_GRAY),
     (STR: 'TWPA_CMY'; ID: TWPA_CMY));

  FormatType: Array[0..MAX_FORMATTYPE - 1] of TCapabilityInfo = (
     (STR:'TWFF_TIFF'; ID:TWFF_TIFF),
     (STR:'TWFF_PICT'; ID:TWFF_PICT),
     (STR:'TWFF_BMP'; ID:TWFF_BMP),
     (STR:'TWFF_XBM'; ID:TWFF_XBM),
     (STR:'TWFF_JFIF'; ID:TWFF_JFIF));

  CompressionType: Array[0..MAX_COMPRESSIONTYPE - 1] of TCapabilityInfo = (
     (STR:'TWCP_NONE'; ID:TWCP_NONE),
     (STR:'TWCP_PACKBITS'; ID:TWCP_PACKBITS),
     (STR:'TWCP_GROUP31D'; ID:TWCP_GROUP31D),
     (STR:'TWCP_GROUP31DEOL'; ID:TWCP_GROUP31DEOL),
     (STR:'TWCP_GROUP32D'; ID:TWCP_GROUP32D),
     (STR:'TWCP_GROUP4'; ID:TWCP_GROUP4),
     (STR:'TWCP_JPEG'; ID:TWCP_JPEG),
     (STR:'TWCP_LZW'; ID:TWCP_LZW),
     (STR:'TWCP_JBIG'; ID:TWCP_JBIG));


  VerLanguageType: Array[0..MAX_VERLANGUAGETYPE - 1] of TCapabilityInfo = (
     (STR:'TWLG_DAN'; ID:TWLG_DAN),
     (STR:'TWLG_DUT'; ID:TWLG_DUT),
     (STR:'TWLG_ENG'; ID:TWLG_ENG),
     (STR:'TWLG_FCF'; ID:TWLG_FCF),
     (STR:'TWLG_FIN'; ID:TWLG_FIN),
     (STR:'TWLG_FRN'; ID:TWLG_FRN),
     (STR:'TWLG_GER'; ID:TWLG_GER),
     (STR:'TWLG_ICE'; ID:TWLG_ICE),
     (STR:'TWLG_ITN'; ID:TWLG_ITN),
     (STR:'TWLG_NOR'; ID:TWLG_NOR),
     (STR:'TWLG_POR'; ID:TWLG_POR),
     (STR:'TWLG_SPA'; ID:TWLG_SPA),
     (STR:'TWLG_SWE'; ID:TWLG_SWE),
     (STR:'TWLG_USA'; ID:TWLG_USA));

  VerContryType: Array[0..MAX_VERCONTRYTYPE - 1] of TCapabilityInfo = (
     (STR:'TWCY_AFGHANISTAN';ID:TWCY_AFGHANISTAN),
     (STR:'TWCY_ALGERIA'; ID:TWCY_ALGERIA),
     (STR:'TWCY_AMERICANSAMOA'; ID:TWCY_AMERICANSAMOA),
     (STR:'TWCY_ANDORRA'; ID:TWCY_ANDORRA),
     (STR:'TWCY_ANGOLA'; ID:TWCY_ANGOLA),
     (STR:'TWCY_ANGUILLA'; ID:TWCY_ANGUILLA),
     (STR:'TWCY_ANTIGUA'; ID:TWCY_ANTIGUA),
     (STR:'TWCY_ARGENTINA'; ID:TWCY_ARGENTINA),
     (STR:'TWCY_ARUBA'; ID:TWCY_ARUBA),
     (STR:'TWCY_ASCENSIONI'; ID:TWCY_ASCENSIONI),
     (STR:'TWCY_AUSTRALIA'; ID:TWCY_AUSTRALIA),
     (STR:'TWCY_AUSTRIA'; ID:TWCY_AUSTRIA),
     (STR:'TWCY_BAHAMAS'; ID:TWCY_BAHAMAS),
     (STR:'TWCY_BAHRAIN'; ID:TWCY_BAHRAIN),
     (STR:'TWCY_BANGLADESH'; ID:TWCY_BANGLADESH),
     (STR:'TWCY_BARBADOS'; ID:TWCY_BARBADOS),
     (STR:'TWCY_BELGIUM'; ID:TWCY_BELGIUM),
     (STR:'TWCY_BELIZE'; ID:TWCY_BELIZE),
     (STR:'TWCY_BENIN'; ID:TWCY_BENIN),
     (STR:'TWCY_BERMUDA'; ID:TWCY_BERMUDA),
     (STR:'TWCY_BHUTAN'; ID:TWCY_BHUTAN),
     (STR:'TWCY_BOLIVIA'; ID:TWCY_BOLIVIA),
     (STR:'TWCY_BOTSWANA'; ID:TWCY_BOTSWANA),
     (STR:'TWCY_BRITAIN'; ID:TWCY_BRITAIN),
     (STR:'TWCY_BRITVIRGINIS'; ID:TWCY_BRITVIRGINIS),
     (STR:'TWCY_BRAZIL'; ID:TWCY_BRAZIL),
     (STR:'TWCY_BRUNEI'; ID:TWCY_BRUNEI),
     (STR:'TWCY_BULGARIA'; ID:TWCY_BULGARIA),
     (STR:'TWCY_BURKINAFASO'; ID:TWCY_BURKINAFASO),
     (STR:'TWCY_BURMA'; ID:TWCY_BURMA),
     (STR:'TWCY_BURUNDI'; ID:TWCY_BURUNDI),
     (STR:'TWCY_CAMAROON'; ID:TWCY_CAMAROON),
     (STR:'TWCY_CANADA'; ID:TWCY_CANADA),
     (STR:'TWCY_CAPEVERDEIS'; ID:TWCY_CAPEVERDEIS),
     (STR:'TWCY_CAYMANIS'; ID:TWCY_CAYMANIS),
     (STR:'TWCY_CENTRALAFREP'; ID:TWCY_CENTRALAFREP),
     (STR:'TWCY_CHAD'; ID:TWCY_CHAD),
     (STR:'TWCY_CHILE'; ID:TWCY_CHILE),
     (STR:'TWCY_CHINA'; ID:TWCY_CHINA),
     (STR:'TWCY_CHRISTMASIS'; ID:TWCY_CHRISTMASIS),
     (STR:'TWCY_COCOSIS'; ID:TWCY_COCOSIS),
     (STR:'TWCY_COLOMBIA'; ID:TWCY_COLOMBIA),
     (STR:'TWCY_COMOROS'; ID:TWCY_COMOROS),
     (STR:'TWCY_CONGO'; ID:TWCY_CONGO),
     (STR:'TWCY_COOKIS'; ID:TWCY_COOKIS),
     (STR:'TWCY_COSTARICA'; ID:TWCY_COSTARICA),
     (STR:'TWCY_CUBA'; ID:TWCY_CUBA),
     (STR:'TWCY_CYPRUS'; ID:TWCY_CYPRUS),
     (STR:'TWCY_CZECHOSLOVAKIA'; ID:TWCY_CZECHOSLOVAKIA),
     (STR:'TWCY_DENMARK'; ID:TWCY_DENMARK),
     (STR:'TWCY_DJIBOUTI'; ID:TWCY_DJIBOUTI),
     (STR:'TWCY_DOMINICA'; ID:TWCY_DOMINICA),
     (STR:'TWCY_DOMINCANREP'; ID:TWCY_DOMINCANREP),
     (STR:'TWCY_EASTERIS'; ID:TWCY_EASTERIS),
     (STR:'TWCY_ECUADOR'; ID:TWCY_ECUADOR),
     (STR:'TWCY_EGYPT'; ID:TWCY_EGYPT),
     (STR:'TWCY_ELSALVADOR'; ID:TWCY_ELSALVADOR),
     (STR:'TWCY_EQGUINEA'; ID:TWCY_EQGUINEA),
     (STR:'TWCY_ETHIOPIA'; ID:TWCY_ETHIOPIA),
     (STR:'TWCY_FALKLANDIS'; ID:TWCY_FALKLANDIS),
     (STR:'TWCY_FAEROEIS'; ID:TWCY_FAEROEIS),
     (STR:'TWCY_FIJIISLANDS'; ID:TWCY_FIJIISLANDS),
     (STR:'TWCY_FINLAND'; ID:TWCY_FINLAND),
     (STR:'TWCY_FRANCE'; ID:TWCY_FRANCE),
     (STR:'TWCY_FRANTILLES'; ID:TWCY_FRANTILLES),
     (STR:'TWCY_FRGUIANA'; ID:TWCY_FRGUIANA),
     (STR:'TWCY_FRPOLYNEISA'; ID:TWCY_FRPOLYNEISA),
     (STR:'TWCY_FUTANAIS'; ID:TWCY_FUTANAIS),
     (STR:'TWCY_GABON'; ID:TWCY_GABON),
     (STR:'TWCY_GAMBIA'; ID:TWCY_GAMBIA),
     (STR:'TWCY_GERMANY'; ID:TWCY_GERMANY),
     (STR:'TWCY_GHANA'; ID:TWCY_GHANA),
     (STR:'TWCY_GIBRALTER'; ID:TWCY_GIBRALTER),
     (STR:'TWCY_GREECE'; ID:TWCY_GREECE),
     (STR:'TWCY_GREENLAND'; ID:TWCY_GREENLAND),
     (STR:'TWCY_GRENADA'; ID:TWCY_GRENADA),
     (STR:'TWCY_GRENEDINES'; ID:TWCY_GRENEDINES),
     (STR:'TWCY_GUADELOUPE'; ID:TWCY_GUADELOUPE),
     (STR:'TWCY_GUAM'; ID:TWCY_GUAM),
     (STR:'TWCY_GUANTANAMOBAY'; ID:TWCY_GUANTANAMOBAY),
     (STR:'TWCY_GUATEMALA'; ID:TWCY_GUATEMALA),
     (STR:'TWCY_GUINEA'; ID:TWCY_GUINEA),
     (STR:'TWCY_GUINEABISSAU'; ID:TWCY_GUINEABISSAU),
     (STR:'TWCY_GUYANA'; ID:TWCY_GUYANA),
     (STR:'TWCY_HAITI'; ID:TWCY_HAITI),
     (STR:'TWCY_HONDURAS'; ID:TWCY_HONDURAS),
     (STR:'TWCY_HONGKONG'; ID:TWCY_HONGKONG),
     (STR:'TWCY_HUNGARY'; ID:TWCY_HUNGARY),
     (STR:'TWCY_ICELAND'; ID:TWCY_ICELAND),
     (STR:'TWCY_INDIA'; ID:TWCY_INDIA),
     (STR:'TWCY_INDONESIA'; ID:TWCY_INDONESIA),
     (STR:'TWCY_IRAN'; ID:TWCY_IRAN),
     (STR:'TWCY_IRAQ'; ID:TWCY_IRAQ),
     (STR:'TWCY_IRELAND'; ID:TWCY_IRELAND),
     (STR:'TWCY_ISRAEL'; ID:TWCY_ISRAEL),
     (STR:'TWCY_ITALY'; ID:TWCY_ITALY),
     (STR:'TWCY_IVORYCOAST'; ID:TWCY_IVORYCOAST),
     (STR:'TWCY_JAMAICA'; ID:TWCY_JAMAICA),
     (STR:'TWCY_JAPAN'; ID:TWCY_JAPAN),
     (STR:'TWCY_JORDAN'; ID:TWCY_JORDAN),
     (STR:'TWCY_KENYA'; ID:TWCY_KENYA),
     (STR:'TWCY_KIRIBATI'; ID:TWCY_KIRIBATI),
     (STR:'TWCY_KOREA'; ID:TWCY_KOREA),
     (STR:'TWCY_KUWAIT'; ID:TWCY_KUWAIT),
     (STR:'TWCY_LAOS'; ID:TWCY_LAOS),
     (STR:'TWCY_LEBANON'; ID:TWCY_LEBANON),
     (STR:'TWCY_LIBERIA'; ID:TWCY_LIBERIA),
     (STR:'TWCY_LIBYA'; ID:TWCY_LIBYA),
     (STR:'TWCY_LIECHTENSTEIN'; ID:TWCY_LIECHTENSTEIN),
     (STR:'TWCY_LUXENBOURG'; ID:TWCY_LUXENBOURG),
     (STR:'TWCY_MACAO'; ID:TWCY_MACAO),
     (STR:'TWCY_MADAGASCAR'; ID:TWCY_MADAGASCAR),
     (STR:'TWCY_MALAWI'; ID:TWCY_MALAWI),
     (STR:'TWCY_MALAYSIA'; ID:TWCY_MALAYSIA),
     (STR:'TWCY_MALDIVES'; ID:TWCY_MALDIVES),
     (STR:'TWCY_MALI'; ID:TWCY_MALI),
     (STR:'TWCY_MALTA'; ID:TWCY_MALTA),
     (STR:'TWCY_MARSHALLIS'; ID:TWCY_MARSHALLIS),
     (STR:'TWCY_MAURITANIA'; ID:TWCY_MAURITANIA),
     (STR:'TWCY_MAURITIUS'; ID:TWCY_MAURITIUS),
     (STR:'TWCY_MEXICO'; ID:TWCY_MEXICO),
     (STR:'TWCY_MICRONESIA'; ID:TWCY_MICRONESIA),
     (STR:'TWCY_MIQUELON'; ID:TWCY_MIQUELON),
     (STR:'TWCY_MONACO'; ID:TWCY_MONACO),
     (STR:'TWCY_MONGOLIA'; ID:TWCY_MONGOLIA),
     (STR:'TWCY_MONTSERRAT'; ID:TWCY_MONTSERRAT),
     (STR:'TWCY_MOROCCO'; ID:TWCY_MOROCCO),
     (STR:'TWCY_MOZAMBIQUE'; ID:TWCY_MOZAMBIQUE),
     (STR:'TWCY_NAMIBIA'; ID:TWCY_NAMIBIA),
     (STR:'TWCY_NAURU'; ID:TWCY_NAURU),
     (STR:'TWCY_NEPAL'; ID:TWCY_NEPAL),
     (STR:'TWCY_NETHERLANDS'; ID:TWCY_NETHERLANDS),
     (STR:'TWCY_NETHANTILLES'; ID:TWCY_NETHANTILLES),
     (STR:'TWCY_NEVIS'; ID:TWCY_NEVIS),
     (STR:'TWCY_NEWCALEDONIA'; ID:TWCY_NEWCALEDONIA),
     (STR:'TWCY_NEWZEALAND'; ID:TWCY_NEWZEALAND),
     (STR:'TWCY_NICARAGUA'; ID:TWCY_NICARAGUA),
     (STR:'TWCY_NIGER'; ID:TWCY_NIGER),
     (STR:'TWCY_NIGERIA'; ID:TWCY_NIGERIA),
     (STR:'TWCY_NIUE'; ID:TWCY_NIUE),
     (STR:'TWCY_NORFOLKI'; ID:TWCY_NORFOLKI),
     (STR:'TWCY_NORWAY'; ID:TWCY_NORWAY),
     (STR:'TWCY_OMAN'; ID:TWCY_OMAN),
     (STR:'TWCY_PAKISTAN'; ID:TWCY_PAKISTAN),
     (STR:'TWCY_PALAU'; ID:TWCY_PALAU),
     (STR:'TWCY_PANAMA'; ID:TWCY_PANAMA),
     (STR:'TWCY_PARAGUAY'; ID:TWCY_PARAGUAY),
     (STR:'TWCY_PERU'; ID:TWCY_PERU),
     (STR:'TWCY_PHILLIPPINES'; ID:TWCY_PHILLIPPINES),
     (STR:'TWCY_PITCAIRNIS'; ID:TWCY_PITCAIRNIS),
     (STR:'TWCY_PNEWGUINEA'; ID:TWCY_PNEWGUINEA),
     (STR:'TWCY_POLAND'; ID:TWCY_POLAND),
     (STR:'TWCY_PORTUGAL'; ID:TWCY_PORTUGAL),
     (STR:'TWCY_QATAR'; ID:TWCY_QATAR),
     (STR:'TWCY_REUNIONI'; ID:TWCY_REUNIONI),
     (STR:'TWCY_ROMANIA'; ID:TWCY_ROMANIA),
     (STR:'TWCY_RWANDA'; ID:TWCY_RWANDA),
     (STR:'TWCY_SAIPAN'; ID:TWCY_SAIPAN),
     (STR:'TWCY_SANMARINO'; ID:TWCY_SANMARINO),
     (STR:'TWCY_SAOTOME'; ID:TWCY_SAOTOME),
     (STR:'TWCY_SAUDIARABIA'; ID:TWCY_SAUDIARABIA),
     (STR:'TWCY_SENEGAL'; ID:TWCY_SENEGAL),
     (STR:'TWCY_SEYCHELLESIS'; ID:TWCY_SEYCHELLESIS),
     (STR:'TWCY_SIERRALEONE'; ID:TWCY_SIERRALEONE),
     (STR:'TWCY_SINGAPORE'; ID:TWCY_SINGAPORE),
     (STR:'TWCY_SOLOMONIS'; ID:TWCY_SOLOMONIS),
     (STR:'TWCY_SOMALI'; ID:TWCY_SOMALI),
     (STR:'TWCY_SOUTHAFRICA'; ID:TWCY_SOUTHAFRICA),
     (STR:'TWCY_SPAIN'; ID:TWCY_SPAIN),
     (STR:'TWCY_SRILANKA'; ID:TWCY_SRILANKA),
     (STR:'TWCY_STHELENA'; ID:TWCY_STHELENA),
     (STR:'TWCY_STKITTS'; ID:TWCY_STKITTS),
     (STR:'TWCY_STLUCIA'; ID:TWCY_STLUCIA),
     (STR:'TWCY_STPIERRE'; ID:TWCY_STPIERRE),
     (STR:'TWCY_STVINCENT'; ID:TWCY_STVINCENT),
     (STR:'TWCY_SUDAN'; ID:TWCY_SUDAN),
     (STR:'TWCY_SURINAME'; ID:TWCY_SURINAME),
     (STR:'TWCY_SWAZILAND'; ID:TWCY_SWAZILAND),
     (STR:'TWCY_SWEDEN'; ID:TWCY_SWEDEN),
     (STR:'TWCY_SWITZERLAND'; ID:TWCY_SWITZERLAND),
     (STR:'TWCY_SYRIA'; ID:TWCY_SYRIA),
     (STR:'TWCY_TAIWAN'; ID:TWCY_TAIWAN),
     (STR:'TWCY_TANZANIA'; ID:TWCY_TANZANIA),
     (STR:'TWCY_THAILAND'; ID:TWCY_THAILAND),
     (STR:'TWCY_TOBAGO'; ID:TWCY_TOBAGO),
     (STR:'TWCY_TOGO'; ID:TWCY_TOGO),
     (STR:'TWCY_TONGAIS'; ID:TWCY_TONGAIS),
     (STR:'TWCY_TRINIDAD'; ID:TWCY_TRINIDAD),
     (STR:'TWCY_TUNISIA'; ID:TWCY_TUNISIA),
     (STR:'TWCY_TURKEY'; ID:TWCY_TURKEY),
     (STR:'TWCY_TURKSCAICOS'; ID:TWCY_TURKSCAICOS),
     (STR:'TWCY_TUVALU'; ID:TWCY_TUVALU),
     (STR:'TWCY_UGANDA'; ID:TWCY_UGANDA),
     (STR:'TWCY_USSR'; ID:TWCY_USSR),
     (STR:'TWCY_UAEMIRATES'; ID:TWCY_UAEMIRATES),
     (STR:'TWCY_UNITEDKINGDOM'; ID:TWCY_UNITEDKINGDOM),
     (STR:'TWCY_USA'; ID:TWCY_USA),
     (STR:'TWCY_URUGUAY'; ID:TWCY_URUGUAY),
     (STR:'TWCY_VANUATU'; ID:TWCY_VANUATU),
     (STR:'TWCY_VATICANCITY'; ID:TWCY_VATICANCITY),
     (STR:'TWCY_VENEZUELA'; ID:TWCY_VENEZUELA),
     (STR:'TWCY_WAKE'; ID:TWCY_WAKE),
     (STR:'TWCY_WALLISIS'; ID:TWCY_WALLISIS),
     (STR:'TWCY_WESTERNSAHARA'; ID:TWCY_WESTERNSAHARA),
     (STR:'TWCY_WESTERNSAMOA'; ID:TWCY_WESTERNSAMOA),
     (STR:'TWCY_YEMEN'; ID:TWCY_YEMEN),
     (STR:'TWCY_YUGOSLAVIA'; ID:TWCY_YUGOSLAVIA),
     (STR:'TWCY_ZAIRE'; ID:TWCY_ZAIRE),
     (STR:'TWCY_ZAMBIA'; ID:TWCY_ZAMBIA),
     (STR:'TWCY_ZIMBABWE'; ID:TWCY_ZIMBABWE));

  BitOrderType: Array[0..MAX_BITORDERTYPE - 1] of TCapabilityInfo = (
     (STR:'TWBO_LSBFIRST'; ID:TWBO_LSBFIRST),
     (STR:'TWBO_MSBFIRST'; ID:TWBO_MSBFIRST));

  FilterType: Array[0..MAX_FILTERTYPE - 1] of TCapabilityInfo = (
     (STR:'TWFT_RED'; ID:TWFT_RED),
     (STR:'TWFT_GREEN'; ID:TWFT_GREEN),
     (STR:'TWFT_BLUE'; ID:TWFT_BLUE),
     (STR:'TWFT_NONE'; ID:TWFT_NONE),
     (STR:'TWFT_WHITE'; ID:TWFT_WHITE),
     (STR:'TWFT_CYAN'; ID:TWFT_CYAN),
     (STR:'TWFT_MAGENTA'; ID:TWFT_MAGENTA),
     (STR:'TWFT_YELLOW'; ID:TWFT_YELLOW),
     (STR:'TWFT_BLACK'; ID:TWFT_BLACK));

  LightPathType: Array[0..MAX_LIGHTPATHTYPE - 1] of TCapabilityInfo = (
     (STR:'TWLP_REFLECTIVE'; ID:TWLP_REFLECTIVE),
     (STR:'TWLP_TRANSMISSIVE'; ID:TWLP_TRANSMISSIVE));

  LightSourceType: Array[0..MAX_LIGHTSOURCETYPE - 1] of TCapabilityInfo = (
     (STR:'TWLS_RED'; ID:TWLS_RED),
     (STR:'TWLS_GREEN'; ID:TWLS_GREEN),
     (STR:'TWLS_BLUE'; ID:TWLS_BLUE),
     (STR:'TWLS_NONE'; ID:TWLS_NONE),
     (STR:'TWLS_WHITE'; ID:TWLS_WHITE),
     (STR:'TWLS_UV'; ID:TWLS_UV),
     (STR:'TWLS_IR'; ID:TWLS_IR));

  OrientationType: Array[0..MAX_ORIENTATIONTYPE - 1] of TCapabilityInfo = (
     (STR:'TWOR_ROT0'; ID:TWOR_ROT0),
     (STR:'TWOR_ROT90'; ID:TWOR_ROT90),
     (STR:'TWOR_ROT180'; ID:TWOR_ROT180),
     (STR:'TWOR_ROT270'; ID:TWOR_ROT270),
     (STR:'TWOR_PORTRAIT'; ID:TWOR_PORTRAIT),
     (STR:'TWOR_LANDSCAPE'; ID:TWOR_LANDSCAPE));

  PlanarChunkyType: Array[0..MAX_PLANARCHUNKYTYPE - 1] of TCapabilityInfo = (
     (STR:'TWPC_CHUNKY'; ID:TWPC_CHUNKY),
     (STR:'TWPC_PLANAR'; ID:TWPC_PLANAR));

  PixelFlavorType: Array[0..MAX_PIXELFLAVORTYPE - 1] of TCapabilityInfo = (
     (STR:'TWPF_CHOCOLATE'; ID:TWPF_CHOCOLATE),
     (STR:'TWPF_VANILLA'; ID:TWPF_VANILLA));

  SetupXferType: Array[0..MAX_SETUPXFERTYPE - 1] of TCapabilityInfo = (
     (STR:'TWSX_NATIVE'; ID:TWSX_NATIVE),
     (STR:'TWSX_FILE'; ID:TWSX_FILE),
     (STR:'TWSX_MEMORY'; ID:TWSX_MEMORY),
     (STR:'TWSX_FILE2'; ID:TWSX_FILE2));

  UnitsType: Array[0..MAX_UNITSTYPE - 1] of TCapabilityInfo = (
     (STR:'TWUN_INCHES'; ID:TWUN_INCHES),
     (STR:'TWUN_CENTIMETERS'; ID:TWUN_CENTIMETERS),
     (STR:'TWUN_PICAS'; ID:TWUN_PICAS),
     (STR:'TWUN_POINTS'; ID:TWUN_POINTS),
     (STR:'TWUN_TWIPS'; ID:TWUN_TWIPS),
     (STR:'TWUN_PIXELS'; ID:TWUN_PIXELS));

  SupportedSizeType: Array[0..MAX_SUPPORTEDSIZETYPE - 1] of TCapabilityInfo = (
     (STR:'TWSS_NONE'; ID:TWSS_NONE),
     (STR:'TWSS_A4LETTER'; ID:TWSS_A4LETTER),
     (STR:'TWSS_B5LETTER'; ID:TWSS_B5LETTER),
     (STR:'TWSS_USLETTER'; ID:TWSS_USLETTER),
     (STR:'TWSS_USLEGAL'; ID:TWSS_USLEGAL),
     (STR:'TWSS_A5'; ID:TWSS_A5),
     (STR:'TWSS_B4'; ID:TWSS_B4),
     (STR:'TWSS_B6'; ID:TWSS_B6),
     (STR:'TWSS_USLEDGER'; ID:TWSS_USLEDGER),
     (STR:'TWSS_USEXECUTIVE'; ID:TWSS_USEXECUTIVE),
     (STR:'TWSS_A3'; ID:TWSS_A3),
     (STR:'TWSS_B3'; ID:TWSS_B3),
     (STR:'TWSS_A6'; ID:TWSS_A6),
     (STR:'TWSS_C4'; ID:TWSS_C4),
     (STR:'TWSS_C5'; ID:TWSS_C5),
     (STR:'TWSS_C6'; ID:TWSS_C6));

  BitDepthReductionType: Array[0..MAX_BITDEPTHREDUCTIONTYPE - 1] of TCapabilityInfo = (
     (STR:'TWBR_THRESHOLD'; ID:TWBR_THRESHOLD),
     (STR:'TWBR_HALFTONE'; ID:TWBR_HALFTONE),
     (STR:'TWBR_CUSTHALFTONE'; ID:TWBR_CUSTHALFTONE),
     (STR:'TWBR_DIFFUSION'; ID:TWBR_DIFFUSION));

  DuplexType: Array[0..MAX_DUPLEXTYPE - 1] of TCapabilityInfo = (
     (STR:'TWDX_NONE'; ID:TWDX_NONE),
     (STR:'TWDX_1PASSDUPLEX'; ID:TWDX_1PASSDUPLEX),
     (STR:'TWDX_2PASSDUPLEX'; ID:TWDX_2PASSDUPLEX));

  JobControlType: Array[0..MAX_JOBCONTROLTYPE - 1] of TCapabilityInfo = (
     (STR:'TWJC_NONE'; ID:TWJC_NONE),
     (STR:'TWJC_JSIC'; ID:TWJC_JSIC),
     (STR:'TWJC_JSIS'; ID:TWJC_JSIS),
     (STR:'TWJC_JSXC'; ID:TWJC_JSXC),
     (STR:'TWJC_JSXS'; ID:TWJC_JSXS));

  AudioFormatType: Array[0..MAX_AUDIOFORMATTYPE - 1] of TCapabilityInfo = (
     (STR:'TWAF_WAV'; ID:TWAF_WAV),
     (STR:'TWAF_AIFF'; ID:TWAF_AIFF),
     (STR:'TWAF_AU'; ID:TWAF_AU),
     (STR:'TWAF_SND'; ID:TWAF_SND));

  AlarmsType: Array[0..MAX_ALARMSTYPE - 1] of TCapabilityInfo = (
     (STR:'TWAL_ALARM'; ID:TWAL_ALARM),
     (STR:'TWAL_FEEDERERROR'; ID:TWAL_FEEDERERROR),
     (STR:'TWAL_FEEDERWARNING'; ID:TWAL_FEEDERWARNING),
     (STR:'TWAL_BARCODE'; ID:TWAL_BARCODE),
     (STR:'TWAL_DOUBLEFEED'; ID:TWAL_DOUBLEFEED),
     (STR:'TWAL_JAM'; ID:TWAL_JAM),
     (STR:'TWAL_PATCHCODE'; ID:TWAL_PATCHCODE),
     (STR:'TWAL_POWER'; ID:TWAL_POWER),
     (STR:'TWAL_SKEW'; ID:TWAL_SKEW));

  CapabilityTable: Array[0..19] of TTableEntry = (
    (Cap: ICAP_PIXELTYPE; PTR: @PixelType[0]; Count:MAX_PIXELTYPE),
    (Cap: ICAP_IMAGEFILEFORMAT; PTR: @FormatType[0]; Count:MAX_FORMATTYPE),
    (Cap: ICAP_COMPRESSION; PTR: @CompressionType[0];
      Count:MAX_COMPRESSIONTYPE),
    (Cap: CAP_LANGUAGE; PTR: @VerLanguageType[0]; Count:MAX_VERLANGUAGETYPE),
    (Cap: ICAP_BITORDER; PTR: @BitOrderType[0]; Count:MAX_BITORDERTYPE),
    (Cap: ICAP_FILTER; PTR: @FilterType[0]; Count:MAX_FILTERTYPE),
    (Cap: ICAP_LIGHTPATH; PTR: @LightPathType[0]; Count:MAX_LIGHTPATHTYPE),
    (Cap: ICAP_LIGHTSOURCE; PTR: @LightSourceType[0];
      Count:MAX_LIGHTSOURCETYPE),
    (Cap: ICAP_ORIENTATION; PTR: @OrientationType[0];
      Count:MAX_ORIENTATIONTYPE),
    (Cap: ICAP_PLANARCHUNKY; PTR: @PlanarChunkyType[0];
      Count:MAX_PLANARCHUNKYTYPE),
    (Cap: ICAP_XFERMECH; PTR: @SetupXferType[0]; Count:MAX_SETUPXFERTYPE),
    (Cap: ICAP_PIXELFLAVOR; PTR: @PixelFlavorType[0];
      Count:MAX_PIXELFLAVORTYPE),
    (Cap: ICAP_UNITS; PTR: @UnitsType[0]; Count:MAX_UNITSTYPE),
    (Cap: ICAP_SUPPORTEDSIZES; PTR: @SupportedSizeType[0];
      Count:MAX_SUPPORTEDSIZETYPE),
    (Cap: ICAP_BITDEPTHREDUCTION; PTR: @BitDepthReductionType[0];
      Count:MAX_BITDEPTHREDUCTIONTYPE),
    (Cap: CAP_DUPLEX; PTR: @DuplexType[0]; Count:MAX_DUPLEXTYPE),
    (Cap: CAP_JOBCONTROL; PTR: @JobControlType[0]; Count:MAX_JOBCONTROLTYPE),
    (Cap: ACAP_AUDIOFILEFORMAT; PTR: @AudioFormatType[0];
      Count:MAX_AUDIOFORMATTYPE),
    (Cap: ACAP_XFERMECH; PTR: @SetupXferType[0]; Count:MAX_SETUPXFERTYPE),
    (Cap: CAP_ALARMS; PTR: @AlarmsType[0]; Count:MAX_ALARMSTYPE)
   );

implementation

end.
