import 'package:fmi_core/fmi_core.dart';
import 'package:collection/collection.dart';

class MockConnectedAssetRepositoryImpl implements ConnectedAssetRepository {

  @override
  Future initialize({bool forceApiCall = false}) async {}

  @override
  Future<List<Asset>> getAssets({bool forceApiCall = false}) async {
    return mockAssets
        .map((conAssetJson) => Asset.fromJson(conAssetJson))
        .toList();
  }

  @override
  Future<Asset?> getAssetByAssetName(String assetName) async {
    var assets =
        mockAssets.map((conAssetJson) => Asset.fromJson(conAssetJson)).toList();

    return assets.firstWhereOrNull((e) => e.assetName == assetName);
  }

  List<Map<String, dynamic>> mockAssets = [
    {
      "assetName": "BAG000002",
      "equipmentNo": "100000707774",
      "equipmentName": "3503 PLS BOOSTER SYS",
      "description": "#3  PLS BOOSTER SYSTEM: TANK/POND-"
    },
    {
      "assetName": "BAG000003",
      "equipmentNo": "100000700169",
      "equipmentName": "543BAM13022",
      "description": "#22 SHOVEL 2800XPA SHOVEL"
    },
    {
      "assetName": "BAG000004",
      "equipmentNo": "100000801221",
      "equipmentName": "543BAM00126",
      "description": "#126 CAT793B HAUL TRK  "
    },
    {
      "assetName": "BAG000005",
      "equipmentNo": "100000017578",
      "equipmentName": "543BAM03007",
      "description": "CAT D8L #7 TRACK DOZER"
    },
    {
      "assetName": "BAG000006",
      "equipmentNo": "100000967318",
      "equipmentName": "AC_BS03",
      "description": "PUPITRE DE CONTROL RUEDA Nº 1"
    },
    {
      "assetName": "BAG000007",
      "equipmentNo": "100000801136",
      "equipmentName": "543BAM13023",
      "description": "#23 SHOVEL 2800XPA SHOVEL "
    },
    {
      "assetName": "BAG000008",
      "equipmentNo": "100000039630",
      "equipmentName": "7206019810",
      "description": "CONVEYOR, SCREW, 1"
    },
    {
      "assetName": "BAG000009",
      "equipmentNo": "100000950055",
      "equipmentName": "543BAM18084",
      "description": "CAT D8T-2"
    },
    {
      "assetName": "BAG000010",
      "equipmentNo": "100000851621",
      "equipmentName": "543BAM18083",
      "description": "CAT D8T-1"
    },
    {
      "assetName": "BAG000011",
      "equipmentNo": "100001081751",
      "equipmentName": "543D9T009",
      "description": "CAT D97009"
    },
    {
      "assetName": "BAG000012",
      "equipmentNo": "100000845828",
      "equipmentName": "543CLP05",
      "description": "TRUCK, F350 CLP05 2006 1FTWW30566EC90228"
    },
    {
      "assetName": "BAG000013",
      "equipmentNo": "100000847119",
      "equipmentName": "543CLP56",
      "description": "TRUCK, F250 CLP56 2006 1FTNF21516EC53950"
    },
    {
      "assetName": "BAG000014",
      "equipmentNo": "100000847798",
      "equipmentName": "543CLPF02",
      "description": "FORKLIFT, MANITOU CLPF02 2006 754603"
    },
    {
      "assetName": "BAG000015",
      "equipmentNo": "100000901564",
      "equipmentName": "543CLP01",
      "description": "TRUCK, F150 CLP01 2008 1FTPW14V88FA44359"
    },
    {
      "assetName": "BAG000017",
      "equipmentNo": "100000906437",
      "equipmentName": "543CLP04",
      "description": "TRUCK, F550 CLP04 2011 1FD0W54Y4BEA59513"
    },
    {
      "assetName": "BAG000018",
      "equipmentNo": "100000908740",
      "equipmentName": "543CLPB01",
      "description": "BOOMTRK, CLPB01 2010 1HTWGAZT2BJ374988"
    },
    {
      "assetName": "BAG000019",
      "equipmentNo": "100000951665",
      "equipmentName": "543CLP03",
      "description": "TRUCK, F250 CLP03 2011 1FTBF2B62BEC95600"
    },
    {
      "assetName": "BAG000020",
      "equipmentNo": "100001092205",
      "equipmentName": "543CLPF03",
      "description": "FORKLIFT, HY90FT CLPF03 2019 U005V10176T"
    },
    {
      "assetName": "BAG000021",
      "equipmentNo": "100001094072",
      "equipmentName": "543CLPF04",
      "description": "FORKLIFT, H90FT CLPF04 2019 U005V10472T"
    },
    {
      "assetName": "BAG000022",
      "equipmentNo": "100001098656",
      "equipmentName": "543CLP185",
      "description": "COMP, SULLAIR CLP185 2018 201807120021"
    },
    {
      "assetName": "BAG000023",
      "equipmentNo": "100000017756",
      "equipmentName": "543FIRE70",
      "description": "TRUCK, FIRE70 1994 4P1CT02M5NA000363"
    },
    {
      "assetName": "BAG000024",
      "equipmentNo": "100000047256",
      "equipmentName": "543AMB05",
      "description": "AMBULANCE, AMB05 1997 F350 1FDSE30F9WHA2"
    },
    {
      "assetName": "BAG000025",
      "equipmentNo": "100000704341",
      "equipmentName": "543RSC02",
      "description": "TRUCK, F350 RSC02 1997 1FDKF381VEA62899"
    },
    {
      "assetName": "BAG000026",
      "equipmentNo": "100000708548",
      "equipmentName": "543RSC03",
      "description": "TRUCK, F350 RSC03 1997 1FDKF38F7VEC2536"
    },
    {
      "assetName": "BAG000027",
      "equipmentNo": "100000839877",
      "equipmentName": "543SDF02",
      "description": "FORKLIFT,CAT SDF02 2005 CRX06999EP307444"
    },
    {
      "assetName": "BAG000028",
      "equipmentNo": "100000847141",
      "equipmentName": "543SA13",
      "description": "TRUCK, F250 SA13 2006 1FTNF21596EC25202"
    },
    {
      "assetName": "BAG000029",
      "equipmentNo": "100000852955",
      "equipmentName": "543SA14",
      "description": "TRUCK, SUV SA14 2005 1FMZU73K85UA04441"
    },
    {
      "assetName": "BAG000030",
      "equipmentNo": "100000863763",
      "equipmentName": "543ENF18",
      "description": "FORKLIFT,GENIE ENF18 2007 GT40807A-11756"
    },
    {
      "assetName": "BAG000031",
      "equipmentNo": "100000864706",
      "equipmentName": "543SD72",
      "description": "TRUCK, F550 SD72 2008 1FDAF57R18EC53682"
    },
    {
      "assetName": "BAG000032",
      "equipmentNo": "100000900885",
      "equipmentName": "543EN01",
      "description": "TRUCK, F250 EN01 2008 1FTNF21588ED07070"
    },
    {
      "assetName": "BAG000033",
      "equipmentNo": "100000901465",
      "equipmentName": "543EN09",
      "description": "TRUCK, F150 EN09 2007 1FTPW14V07KD00824"
    },
    {
      "assetName": "BAG000034",
      "equipmentNo": "100000901510",
      "equipmentName": "543AD13",
      "description": "TRUCK, MAZDA AD13 2007 JM3TB38Y870102750"
    },
    {
      "assetName": "BAG000035",
      "equipmentNo": "100000901524",
      "equipmentName": "543SA08",
      "description": "TRUCK, F250 SA08 2011 1FT7W2B6XBEC95608"
    },
    {
      "assetName": "BAG000036",
      "equipmentNo": "100000901527",
      "equipmentName": "543EN06",
      "description": "TRUCK, C1500 EN06 2008 2GTEK13C281129210"
    },
    {
      "assetName": "BAG000037",
      "equipmentNo": "100000901537",
      "equipmentName": "543LAB06",
      "description": "TRUCK, NIS LAB06 2008 1N6AA07C28N330753"
    },
    {
      "assetName": "BAG000038",
      "equipmentNo": "100000901557",
      "equipmentName": "543SA11",
      "description": "TRUCK, F150 SA11 2007 1FTPX14V57FA53029"
    },
    {
      "assetName": "BAG000039",
      "equipmentNo": "100000901565",
      "equipmentName": "543EN04",
      "description": "TRUCK, F150 EN04 2008 1FTPW14V38FA94053"
    },
    {
      "assetName": "BAG000040",
      "equipmentNo": "100000906133",
      "equipmentName": "543SDL01",
      "description": "TRUCK, F750 SDL01 2009 3FRWF75D79V135237"
    },
    {
      "assetName": "BAG000041",
      "equipmentNo": "100000906393",
      "equipmentName": "543AD17",
      "description": "TRUCK, F350 AD17 2011 1FD8W3H65BEA59512"
    },
    {
      "assetName": "BAG000042",
      "equipmentNo": "100000907090",
      "equipmentName": "543EN10",
      "description": "TRUCK, F250 EN10 2010 1FT7W2B68BEA81510"
    },
    {
      "assetName": "BAG000043",
      "equipmentNo": "100000909067",
      "equipmentName": "543FIRE03",
      "description": "TRUCK, FIRE03 2008  1HTMVAFM99J047945"
    },
    {
      "assetName": "BAG000044",
      "equipmentNo": "100000951668",
      "equipmentName": "543SA06",
      "description": "TRUCK, F250 SA06 2011 1FT7X2B69BED03176"
    },
    {
      "assetName": "BAG000045",
      "equipmentNo": "100000953195",
      "equipmentName": "543SDF01",
      "description": "FORKLIFT,CLRK SDF01 2011 P455D01729801KF"
    },
    {
      "assetName": "BAG000046",
      "equipmentNo": "100000953978",
      "equipmentName": "543SA07",
      "description": "TRUCK, F250 SA07 2011 1FT7X2B60BEC94190"
    },
    {
      "assetName": "BAG000047",
      "equipmentNo": "100000954678",
      "equipmentName": "543ES01",
      "description": "TRUCK, F250 ES01 2011 1FT7W2B63CEA16064"
    },
    {
      "assetName": "BAG000048",
      "equipmentNo": "100000956121",
      "equipmentName": "543RAN04",
      "description": "TRUCK, FL70 RAN04 2001 1FVABSAK91HH71965"
    },
    {
      "assetName": "BAG000049",
      "equipmentNo": "100000956369",
      "equipmentName": "543ES04",
      "description": "TRUCK, F250 ES04 2012 1FT7W2B60CEB30748"
    },
    {
      "assetName": "BAG000050",
      "equipmentNo": "100000956370",
      "equipmentName": "543AD26",
      "description": "TRUCK, F250 AD26 2012 1FT7W2B68CEA50002"
    },
    {
      "assetName": "BAG000051",
      "equipmentNo": "100000956636",
      "equipmentName": "543SA01",
      "description": "ATV, POLARIS SA01 2012 4XATX7EA7C4277526"
    },
    {
      "assetName": "BAG000052",
      "equipmentNo": "100000957644",
      "equipmentName": "543FIREATV02",
      "description": "ATV, POLAR FIR02 2012 44XAWH76A8C2700179"
    },
    {
      "assetName": "BAG000053",
      "equipmentNo": "100000958365",
      "equipmentName": "543EN12",
      "description": "TRUCK, F250 EN12 2012 1FT7W2B66CEC46357"
    },
    {
      "assetName": "BAG000054",
      "equipmentNo": "100000988407",
      "equipmentName": "543LAB01",
      "description": "TRUCK, F150 LAB01 2013 1FTFW1EFXDKF15464"
    },
    {
      "assetName": "BAG000055",
      "equipmentNo": "100000989085",
      "equipmentName": "543RAN07",
      "description": "TRUCK, F350 RAN07 2013 1FD8W3HT4DEB63451"
    },
    {
      "assetName": "BAG000056",
      "equipmentNo": "100000989086",
      "equipmentName": "543RAN08",
      "description": "TRUCK, F350 RAN08 2013 1FDRF3HT0DEB63449"
    },
    {
      "assetName": "BAG000057",
      "equipmentNo": "100000989146",
      "equipmentName": "543RAN09",
      "description": "TRUCK, F350 RAN09 2013 1FDRF3HT7DEB63450"
    },
    {
      "assetName": "BAG000058",
      "equipmentNo": "100001047756",
      "equipmentName": "543AD27",
      "description": "TRUCK, F150 AD27 2015 1FTFX1EFXFKD98825"
    },
    {
      "assetName": "BAG000059",
      "equipmentNo": "100001047757",
      "equipmentName": "543AD28",
      "description": "TRUCK, F150 AD28 2015 1FTEW1EFXFKD98824"
    },
    {
      "assetName": "BAG000060",
      "equipmentNo": "100001059924",
      "equipmentName": "543ES11",
      "description": "TRUCK, F150 ES11 2017 1FTEW1EF0HKD61333"
    },
    {
      "assetName": "BAG000061",
      "equipmentNo": "100001061003",
      "equipmentName": "543EN13",
      "description": "TRUCK, F150 EN13 2017 1FTEW1EF4HKD61335"
    },
    {
      "assetName": "BAG000062",
      "equipmentNo": "100001068663",
      "equipmentName": "543ES02",
      "description": "TRUCK, F150 ES02 2018 1FTEW1E52JKD60570"
    },
    {
      "assetName": "BAG000063",
      "equipmentNo": "100001068852",
      "equipmentName": "543ES03",
      "description": "TRUCK, F150 ES03 2018 1FTEW1E56JKD60569"
    },
    {
      "assetName": "BAG000064",
      "equipmentNo": "100001070537",
      "equipmentName": "543AMB02",
      "description": "AMBULANCE, AMB02 2018 3C7WRTBL0JG144186"
    },
    {
      "assetName": "BAG000065",
      "equipmentNo": "100001076845",
      "equipmentName": "543AD29",
      "description": "TRUCK, F150 AD29 2018 1FTEW1E59JKF84158"
    },
    {
      "assetName": "BAG000066",
      "equipmentNo": "100001076880",
      "equipmentName": "543RAN10",
      "description": "TRUCK, F250 RAN10 2018 1FT7W2BT7KEC62085"
    },
    {
      "assetName": "BAG000067",
      "equipmentNo": "100001079701",
      "equipmentName": "543SA15",
      "description": "TRUCK, F250 SA15 2019 1FT7W2B6XKED66192"
    },
    {
      "assetName": "BAG000068",
      "equipmentNo": "100001083714",
      "equipmentName": "543RANA02",
      "description": "ATV, HONDA RANA02 2019 1HFVE04A7K4301070"
    },
    {
      "assetName": "BAG000069",
      "equipmentNo": "100001083742",
      "equipmentName": "543LABA02",
      "description": "ATV, HONDA LABA02 2019 1HFVE04A7K4301058"
    },
    {
      "assetName": "BAG000070",
      "equipmentNo": "100001087196",
      "equipmentName": "543SD04",
      "description": "TRUCK, F750 SD04 2019 1FDXF7DX0KDF07615"
    },
    {
      "assetName": "BAG000071",
      "equipmentNo": "100001087199",
      "equipmentName": "543SD05",
      "description": "TRUCK, F750 SD05 2019 1FDXF7DX0KDF07617"
    },
    {
      "assetName": "BAG000072",
      "equipmentNo": "100001087512",
      "equipmentName": "543ES06",
      "description": "TRUCK, F250 ES06 2019 1FT7W2B61KEF21776"
    },
    {
      "assetName": "BAG000073",
      "equipmentNo": "100001087598",
      "equipmentName": "543SA16",
      "description": "TRUCK, F250 SA16 2019 1FT7W2B62KEF21771"
    },
    {
      "assetName": "BAG000074",
      "equipmentNo": "100001088286",
      "equipmentName": "543SD06",
      "description": "TRUCK, F750 SD06 2019 1FDXF7DX2KDF07616"
    },
    {
      "assetName": "BAG000075",
      "equipmentNo": "100001088288",
      "equipmentName": "543SD07",
      "description": "TRUCK, F750 SD07 2019 1FDXF7DX8KDF07619"
    },
    {
      "assetName": "BAG000076",
      "equipmentNo": "100001088404",
      "equipmentName": "543SA17",
      "description": "TRUCK, F250 SA17 2019 1FT7W2B64KEF21772"
    },
    {
      "assetName": "BAG000077",
      "equipmentNo": "100001090060",
      "equipmentName": "543LF02",
      "description": "FORKLIFT, HY60 LF02 2019 P177V13430T"
    },
    {
      "assetName": "BAG000078",
      "equipmentNo": "100001091404",
      "equipmentName": "543AMB01",
      "description": "AMBULANCE, AMB01 1941 I801A-2077"
    },
    {
      "assetName": "BAG000079",
      "equipmentNo": "100001096546",
      "equipmentName": "543SD09",
      "description": "TRUCK, F750 SD09 2019 1FDXF7DX2KDF09673"
    },
    {
      "assetName": "BAG000080",
      "equipmentNo": "100001097456",
      "equipmentName": "543SD08",
      "description": "TRUCK, F750 SD08 2019 1FDXF7DX8KDF09676"
    },
    {
      "assetName": "BAG000081",
      "equipmentNo": "100001098030",
      "equipmentName": "543SD25",
      "description": "TRUCK, F750 SD25 2019 1FDXF7DXXKDF09680"
    },
    {
      "assetName": "BAG000082",
      "equipmentNo": "100001098031",
      "equipmentName": "543SD31",
      "description": "TRUCK, F750 SD31 2019 1FDXF7DX1KDF09678"
    },
    {
      "assetName": "BAG000083",
      "equipmentNo": "100001098032",
      "equipmentName": "543SD32",
      "description": "TRUCK, F750 SD32 2019 1FDXF7DX3KDF09679"
    },
    {
      "assetName": "BAG000084",
      "equipmentNo": "100001099536",
      "equipmentName": "543MML02",
      "description": "TRUCK, MACK MML02 2019 1M2GR2GC6LM018270"
    },
    {
      "assetName": "BAG000085",
      "equipmentNo": "100000846166",
      "equipmentName": "543GSCV01",
      "description": "VAN, TRANS GSCV01 2006 1FBSS31LX6DB19113"
    },
    {
      "assetName": "BAG000086",
      "equipmentNo": "100000850336",
      "equipmentName": "543WH2F01",
      "description": "FORKLIFT, CROWN WH2F01 2008 1A327717"
    },
    {
      "assetName": "BAG000087",
      "equipmentNo": "100000850904",
      "equipmentName": "543WHF01",
      "description": "FORKLIFT, CLARK WHF01 E357-760-8870ER"
    },
    {
      "assetName": "BAG000088",
      "equipmentNo": "100000851043",
      "equipmentName": "543WHF03",
      "description": "FORKLIFT, NISSAN WHF03 2008 AN19C50330"
    },
    {
      "assetName": "BAG000089",
      "equipmentNo": "100000852620",
      "equipmentName": "543WH203",
      "description": "TRUCK, BILT WH203 2007 2NPRLN0X78M750107"
    },
    {
      "assetName": "BAG000090",
      "equipmentNo": "100000853911",
      "equipmentName": "543WH2F02",
      "description": "FORKLIFT, NISSAN  WH2F02 2008 920735"
    },
    {
      "assetName": "BAG000091",
      "equipmentNo": "100000864491",
      "equipmentName": "543WH2F03",
      "description": "FORKLIFT, WH2F03 2007 PB70SBFTDYTARPAAX"
    },
    {
      "assetName": "BAG000092",
      "equipmentNo": "100000865187",
      "equipmentName": "543WH01",
      "description": "TRUCK, F350 WH01 2007 1FDWF37R38EC81770"
    },
    {
      "assetName": "BAG000093",
      "equipmentNo": "100000867162",
      "equipmentName": "543WH2F05",
      "description": "FORKLIFT, MITSU WH2F05 2006 AF14E10152"
    },
    {
      "assetName": "BAG000094",
      "equipmentNo": "100000901461",
      "equipmentName": "543WH02",
      "description": "TRUCK, TITAN WH02 2009 1N6AA07C98N327767"
    },
    {
      "assetName": "BAG000095",
      "equipmentNo": "100000901528",
      "equipmentName": "543WH03",
      "description": "TRUCK, C1500 WH03 2008 1GTEC19X38Z149058"
    },
    {
      "assetName": "BAG000096",
      "equipmentNo": "100000901529",
      "equipmentName": "543GSC10",
      "description": "TRUCK, NISS GSC10 2007 1N6AA07BX7N234763"
    },
    {
      "assetName": "BAG000097",
      "equipmentNo": "100000906376",
      "equipmentName": "543WH201",
      "description": "TRUCK, F350 WH201 2011 1FD8W3H60BEA59501"
    },
    {
      "assetName": "BAG000098",
      "equipmentNo": "100000950048",
      "equipmentName": "543WH2F26",
      "description": "FORKLIFT, CAT WH2F26 2009 AT14E10705"
    },
    {
      "assetName": "BAG000099",
      "equipmentNo": "100000955806",
      "equipmentName": "543GCR01",
      "description": "TRUCK, F550 GCR01 2012 1FDGF5GT3CEA13838"
    },
    {
      "assetName": "BAG000100",
      "equipmentNo": "100001059127",
      "equipmentName": "543WH2A03",
      "description": "ATV, HONDA WH2A03 2016 1HFVE04AXG4002910"
    },
    {
      "assetName": "BAG000101",
      "equipmentNo": "100001088894",
      "equipmentName": "543GCR02",
      "description": "TRUCK, F450 GCR02 2019 1FD0W4HY7KEF53858"
    },
    {
      "assetName": "BAG000102",
      "equipmentNo": "100001090735",
      "equipmentName": "543WHF05",
      "description": "FORKLIFT, HY155F WHF05  2019 L006V03328T"
    },
    {
      "assetName": "BAG000103",
      "equipmentNo": "100001093750",
      "equipmentName": "543WHF06",
      "description": "FORKLIFT, HY280 WHF06 2019 N007E01777T"
    },
    {
      "assetName": "BAG000104",
      "equipmentNo": "100001093751",
      "equipmentName": "543WH2F06",
      "description": "FORKLIFT, HY280 WH2F06 2019 N007E01766T"
    },
    {
      "assetName": "BAG000105",
      "equipmentNo": "100000901458",
      "equipmentName": "543HR02",
      "description": "TRUCK, 1500 HR02 2008 3GTEK13M58G133784"
    },
    {
      "assetName": "BAG000106",
      "equipmentNo": "100000951663",
      "equipmentName": "543HR01",
      "description": "TRUCK, F150 HR01 2008 1FTPW12V88KD12112"
    },
    {
      "assetName": "BAG000107",
      "equipmentNo": "100000844990",
      "equipmentName": "543SX23",
      "description": "TRUCK, F250 SX23 2006 1FTNF21556ED31632"
    },
    {
      "assetName": "BAG000108",
      "equipmentNo": "100000845229",
      "equipmentName": "543SX28",
      "description": "TRUCK, F250 SX28 2006 1FTNF21566ED63036"
    },
    {
      "assetName": "BAG000109",
      "equipmentNo": "100000845361",
      "equipmentName": "543SXEB01",
      "description": "BOOM TRK, SXEB01 2006 1GDP7H1C4YJ515067"
    },
    {
      "assetName": "BAG000110",
      "equipmentNo": "100000867567",
      "equipmentName": "543SXBM04",
      "description": "BOOM TRK, SXBM04 2007 2FZHAWDC47AY33860"
    },
    {
      "assetName": "BAG000111",
      "equipmentNo": "100000901425",
      "equipmentName": "543SXO02",
      "description": "TRUCK, TOYO SXO02 2008 5TELU42N08Z560453"
    },
    {
      "assetName": "BAG000112",
      "equipmentNo": "100000901462",
      "equipmentName": "543SXM01",
      "description": "TRUCK, NISS SXM01 2008 1N6AA06C78N324271"
    },
    {
      "assetName": "BAG000113",
      "equipmentNo": "100000905788",
      "equipmentName": "543SXE01",
      "description": "TRUCK, F250 SXE01 2010 1FTSW2B58AEB20094"
    },
    {
      "assetName": "BAG000114",
      "equipmentNo": "100000905789",
      "equipmentName": "543SXL01",
      "description": "TRUCK, F250 SXL01 2010 1FTNF2B51AEA67932"
    },
    {
      "assetName": "BAG000115",
      "equipmentNo": "100000905923",
      "equipmentName": "543SX01",
      "description": "TRUCK, F750 SX01 2009 3FRXF75F29V139329"
    },
    {
      "assetName": "BAG000116",
      "equipmentNo": "100000906377",
      "equipmentName": "543SXM05",
      "description": "TRUCK, F250 SXM05 2010 1FDRF3H61BEA59480"
    },
    {
      "assetName": "BAG000117",
      "equipmentNo": "100000906387",
      "equipmentName": "543SXO06",
      "description": "TRUCK, F350 SXO06 2011 1FD8W3H6XBEA59506"
    },
    {
      "assetName": "BAG000118",
      "equipmentNo": "100000906436",
      "equipmentName": "543SXM04",
      "description": "TRUCK, F250 SXM04 2011 1FT7W2B67BEA59482"
    },
    {
      "assetName": "BAG000119",
      "equipmentNo": "100000906737",
      "equipmentName": "543SXM03",
      "description": "TRUCK, F350 SXM03 2010 1FDRF3H63BEA59481"
    },
    {
      "assetName": "BAG000120",
      "equipmentNo": "100000907086",
      "equipmentName": "543SXL02",
      "description": "TRUCK, F250 SXL02 2011 1FT7W2B68BEA81507"
    },
    {
      "assetName": "BAG000121",
      "equipmentNo": "100000907412",
      "equipmentName": "543SXOF01",
      "description": "FORKLIFT, CAT SXOF01 2011 AT13F80192"
    },
    {
      "assetName": "BAG000122",
      "equipmentNo": "100000907413",
      "equipmentName": "543SXF01",
      "description": "FORKLIFT, CAT SXF01  2010 AT4000034"
    },
    {
      "assetName": "BAG000123",
      "equipmentNo": "100000907896",
      "equipmentName": "543SXB01",
      "description": "BOOM TRK, SXB01 2008  2FZHAZCV79AAF3812"
    },
    {
      "assetName": "BAG000124",
      "equipmentNo": "100000950086",
      "equipmentName": "543SXO05",
      "description": "TRUCK, F250 SXO05 2008 1FTNF21528ED55874"
    },
    {
      "assetName": "BAG000125",
      "equipmentNo": "100000950090",
      "equipmentName": "543SXM08",
      "description": "TRUCK, RAM SXM08 2008 3D6WH46AX8G125258"
    },
    {
      "assetName": "BAG000126",
      "equipmentNo": "100000950091",
      "equipmentName": "543SXM09",
      "description": "TRUCK, 3500 SXM09 2008 D6WH46A48G137244"
    },
    {
      "assetName": "BAG000127",
      "equipmentNo": "100000950115",
      "equipmentName": "543SX94",
      "description": "TRUCK, F350 SX94 2008 1FTWW33Y28EE28131*"
    },
    {
      "assetName": "BAG000128",
      "equipmentNo": "100000951638",
      "equipmentName": "543CLP10",
      "description": "TRUCK,F350 CLP10 2011 1FD8W3H67BEC95613"
    },
    {
      "assetName": "BAG000129",
      "equipmentNo": "100000960113",
      "equipmentName": "543SXOF02",
      "description": "FORKLIFT, CAT SXOF02 2012 AT13F80578"
    },
    {
      "assetName": "BAG000130",
      "equipmentNo": "100000989158",
      "equipmentName": "543SXE02",
      "description": "TRUCK, F350 SXE02 2013 1FD8W3H63DEB63452"
    },
    {
      "assetName": "BAG000131",
      "equipmentNo": "100001061004",
      "equipmentName": "543SXO04",
      "description": "TRUCK, F150 SXO04 2017 1FTEW1EF1HKD61339"
    },
    {
      "assetName": "BAG000132",
      "equipmentNo": "100001070376",
      "equipmentName": "543SXA07",
      "description": "ATV, HONDA SXA07 2018 1HFVE04A2J4202459"
    },
    {
      "assetName": "BAG000133",
      "equipmentNo": "100001070378",
      "equipmentName": "543SXA09",
      "description": "ATV, HONDA SXA09 2018 1HFVE04A6J4201346"
    },
    {
      "assetName": "BAG000134",
      "equipmentNo": "100001081575",
      "equipmentName": "543SXA11",
      "description": "ATV, HONDA SXA11 2019 1HFVE04A0K4301072"
    },
    {
      "assetName": "BAG000135",
      "equipmentNo": "100001081576",
      "equipmentName": "543SXA12",
      "description": "ATV, HONDA SXA12 2019 1HFVE04A4K4301074"
    },
    {
      "assetName": "BAG000136",
      "equipmentNo": "100001087516",
      "equipmentName": "543SX95",
      "description": "TRUCK, F250 SX95 2019 1FT7W2B69KEF21783"
    },
    {
      "assetName": "BAG000137",
      "equipmentNo": "100000845814",
      "equipmentName": "543RCM03",
      "description": "TRUCK, F250 RCM03 2006 1FTSX21P76EB27481"
    },
    {
      "assetName": "BAG000138",
      "equipmentNo": "100000845815",
      "equipmentName": "543RCM04",
      "description": "TRUCK, F250 RCM04 2006 1FTSX21P46ED41182"
    },
    {
      "assetName": "BAG000139",
      "equipmentNo": "100000845816",
      "equipmentName": "543RCM05",
      "description": "TRUCK, F250 RCM05 2006 1FTSX21P26ED43853"
    },
    {
      "assetName": "BAG000140",
      "equipmentNo": "100000845817",
      "equipmentName": "543RCM06",
      "description": "TRUCK, F250 RCM06 2006 1FTSX21P86ED59068"
    },
    {
      "assetName": "BAG000141",
      "equipmentNo": "100000901434",
      "equipmentName": "543RCM07",
      "description": "TRUCK, GMC RCM07 2008 2GCEK13C381229414"
    },
    {
      "assetName": "BAG000142",
      "equipmentNo": "100001081778",
      "equipmentName": "543RCMA02",
      "description": "ATV, HONDA RCMA02 2019 1HFVE0404K4301597"
    },
    {
      "assetName": "BAG000143",
      "equipmentNo": "100000017897",
      "equipmentName": "543CMF42",
      "description": "FORKLIFT, TAYLOR CMF42 1994 SZ722883"
    },
    {
      "assetName": "BAG000144",
      "equipmentNo": "100000045947",
      "equipmentName": "543CB01",
      "description": "BOOMTRK, NAT CB01 1997 1FUXJJBBGUH787825"
    },
    {
      "assetName": "BAG000145",
      "equipmentNo": "100000838351",
      "equipmentName": "543CE27",
      "description": "BOOMTRK F550 CE27 2004 1FDAF57P34ED93340"
    },
    {
      "assetName": "BAG000146",
      "equipmentNo": "100000839792",
      "equipmentName": "543CM44",
      "description": "TRUCK, F350 CM44 2005 1FDWF36585EC37970"
    },
    {
      "assetName": "BAG000147",
      "equipmentNo": "100000839793",
      "equipmentName": "543CM45",
      "description": "TRUCK, F350 CM45 2005  1FDWF36525EC29461"
    },
    {
      "assetName": "BAG000148",
      "equipmentNo": "100000839794",
      "equipmentName": "543CM43",
      "description": "TRUCK, F350 CM43 2005 1FDWF365X5EC37971"
    },
    {
      "assetName": "BAG000149",
      "equipmentNo": "100000840200",
      "equipmentName": "543CO40",
      "description": "TRUCK, F350 CO40 2005 1FDWF37586EA61518"
    },
    {
      "assetName": "BAG000150",
      "equipmentNo": "100000842135",
      "equipmentName": "543CMF13",
      "description": "FORKLIFT, LIFTKING CMF13 2005 LT1405"
    },
    {
      "assetName": "BAG000151",
      "equipmentNo": "100000845228",
      "equipmentName": "543CM28",
      "description": "TRUCK, F350 CM28 2006 1FDWF35Y16EA03134"
    },
    {
      "assetName": "BAG000152",
      "equipmentNo": "100000846980",
      "equipmentName": "543CM27",
      "description": "TRUCK, F450 CM27 2007 1FDXF47Y87EB26390"
    },
    {
      "assetName": "BAG000153",
      "equipmentNo": "100000847088",
      "equipmentName": "543CM47",
      "description": "TRUCK, F250 CM47 2007 1FTSX21587EA19516"
    },
    {
      "assetName": "BAG000154",
      "equipmentNo": "100000847120",
      "equipmentName": "543CM57",
      "description": "TRUCK, F250 CM57 2006 1FTNF21596EC61262"
    },
    {
      "assetName": "BAG000155",
      "equipmentNo": "100000847127",
      "equipmentName": "543CM51",
      "description": "TRUCK, F250 CM51 2006 1FTNF21506ED76851"
    },
    {
      "assetName": "BAG000156",
      "equipmentNo": "100000847142",
      "equipmentName": "543CM54",
      "description": "TRUCK, F250 CM54 2006 1FTNF21556EC61260"
    },
    {
      "assetName": "BAG000157",
      "equipmentNo": "100000847560",
      "equipmentName": "543CM58",
      "description": "TRUCK, F350 CM58 2007 1FDWF37527EB06745"
    },
    {
      "assetName": "BAG000158",
      "equipmentNo": "100000847631",
      "equipmentName": "543CE59",
      "description": "TRUCK, F250 CE59 2007 1FTNF21567EB24913"
    },
    {
      "assetName": "BAG000159",
      "equipmentNo": "100000848195",
      "equipmentName": "543CM61",
      "description": "TRUCK, F350 CM61 2006 1FDWW37P87EB16942"
    },
    {
      "assetName": "BAG000160",
      "equipmentNo": "100000848196",
      "equipmentName": "543CM36",
      "description": "TRUCK, F350 CM36 2007 1FDWF37P67EB44349"
    },
    {
      "assetName": "BAG000161",
      "equipmentNo": "100000865207",
      "equipmentName": "543CM09",
      "description": "TRUCK, F150 CM09 2008 1FTRF14558KB22564"
    },
    {
      "assetName": "BAG000162",
      "equipmentNo": "100000866278",
      "equipmentName": "543CB03",
      "description": "BOOMTRK,TEX CB03 2007 2NPRLN0XX8M75753"
    },
    {
      "assetName": "BAG000163",
      "equipmentNo": "100000891525",
      "equipmentName": "543CMF07",
      "description": "FORKLIFT, KALMAR CMF07 2009 T341050341"
    },
    {
      "assetName": "BAG000164",
      "equipmentNo": "100000901297",
      "equipmentName": "543CAC01",
      "description": "BOBCAT, CAC01 2008 1FUXJJBB6VH787825"
    },
    {
      "assetName": "BAG000165",
      "equipmentNo": "100000901429",
      "equipmentName": "543CM01",
      "description": "TRUCK, K1500 CM01 2008 1GCEK19048Z152282"
    },
    {
      "assetName": "BAG000166",
      "equipmentNo": "100000901435",
      "equipmentName": "543CMGT01",
      "description": "TRUCK, GM CMGT01 2008 2GCEK19J781227476"
    },
    {
      "assetName": "BAG000167",
      "equipmentNo": "100000901494",
      "equipmentName": "543CM03",
      "description": "TRUCK, F150 CM03 2006 1FTPX14576FA06762"
    },
    {
      "assetName": "BAG000168",
      "equipmentNo": "100000901525",
      "equipmentName": "543CM02",
      "description": "TRUCK, F150 CM02 2007 1FTRF14W77KB32794"
    },
    {
      "assetName": "BAG000169",
      "equipmentNo": "100000901544",
      "equipmentName": "543CO04",
      "description": "TRUCK, 2500 CO04 2008 3D7KS29A28G128067"
    },
    {
      "assetName": "BAG000170",
      "equipmentNo": "100000901574",
      "equipmentName": "543CM04",
      "description": "TRUCK, 1500 CM04 2008 1D7HU16N68J123703"
    },
    {
      "assetName": "BAG000171",
      "equipmentNo": "100000901581",
      "equipmentName": "543CE02",
      "description": "TRUCK,TOYOTA CE02 2007 5TFBV54177X031774"
    },
    {
      "assetName": "BAG000172",
      "equipmentNo": "100000901648",
      "equipmentName": "543CMGT02",
      "description": "TRUCK, NI CMGT02 2008 1N6AA06C18N326016"
    },
    {
      "assetName": "BAG000173",
      "equipmentNo": "100000905884",
      "equipmentName": "543CML01",
      "description": "BOOMLIFT TRK, JLG CML01 2010 0300139757"
    },
    {
      "assetName": "BAG000174",
      "equipmentNo": "100000906246",
      "equipmentName": "543CM06",
      "description": "TRUCK, F350 CM06 2011 1FD8W3H64BEA59484"
    },
    {
      "assetName": "BAG000175",
      "equipmentNo": "100000906287",
      "equipmentName": "543CRN01",
      "description": "TRUCK, F550 CRN01 2011 1FD0W5HY8BEA59515"
    },
    {
      "assetName": "BAG000176",
      "equipmentNo": "100000906304",
      "equipmentName": "543CO39",
      "description": "TRUCK, F350 CO39 2011 1FD8W3H61BEA59488"
    },
    {
      "assetName": "BAG000177",
      "equipmentNo": "100000906305",
      "equipmentName": "543CE06",
      "description": "TRUCK, F350 CE06 2010 1FD8W3H62BEA59483"
    },
    {
      "assetName": "BAG000178",
      "equipmentNo": "100000906315",
      "equipmentName": "543CO49",
      "description": "TRUCK, F350 CO49 2011 1FD8W3H63BEA59489"
    },
    {
      "assetName": "BAG000179",
      "equipmentNo": "100000906378",
      "equipmentName": "543CE07",
      "description": "TRUCK, F350 CE07 2011 1FD8W3H64BEA59503"
    },
    {
      "assetName": "BAG000180",
      "equipmentNo": "100000906379",
      "equipmentName": "543CM10",
      "description": "TRUCK, F550 CM10 2011 1FD0W5HY9BEA63122"
    },
    {
      "assetName": "BAG000181",
      "equipmentNo": "100000906438",
      "equipmentName": "543CM07",
      "description": "TRUCK, F550 CM07 2011 1FD0W5HY7BEA63121"
    },
    {
      "assetName": "BAG000182",
      "equipmentNo": "100000906448",
      "equipmentName": "543CM08",
      "description": "TRUCK, F550 CM08 2011 1FD0W5HY5BEA63120"
    },
    {
      "assetName": "BAG000183",
      "equipmentNo": "100000906449",
      "equipmentName": "543CM11",
      "description": "TRUCK, F550 CM11 2011 1FD0W5HY6BEA59514"
    },
    {
      "assetName": "BAG000184",
      "equipmentNo": "100000906586",
      "equipmentName": "543CM12",
      "description": "TRUCK, F350 CM12 2011 1FD8W3H6XBEA59490"
    },
    {
      "assetName": "BAG000185",
      "equipmentNo": "100000906587",
      "equipmentName": "543CM13",
      "description": "TRUCK, F350 CM13 2011 1FD8W3H61BEA59491"
    },
    {
      "assetName": "BAG000186",
      "equipmentNo": "100000906638",
      "equipmentName": "543CM14",
      "description": "TRUCK, F350 CM14 2011 1FD8W3H65BEA59509"
    },
    {
      "assetName": "BAG000187",
      "equipmentNo": "100000906639",
      "equipmentName": "543CM15",
      "description": "TRUCK, F350 CM15 2011 1FD8W3H67BEA59494"
    },
    {
      "assetName": "BAG000188",
      "equipmentNo": "100000907094",
      "equipmentName": "543CM16",
      "description": "TRUCK, F350 CM16 2011 1FD8W3H63BEA59508"
    },
    {
      "assetName": "BAG000189",
      "equipmentNo": "100000907095",
      "equipmentName": "543CE10",
      "description": "TRUCK, F350 CE10 2011 1FD8W3H66BEA59499"
    },
    {
      "assetName": "BAG000190",
      "equipmentNo": "100000907096",
      "equipmentName": "543CE11",
      "description": "TRUCK, F350 CE11 2011 1FD8W3H66BEA59504"
    },
    {
      "assetName": "BAG000191",
      "equipmentNo": "100000907098",
      "equipmentName": "543CE12",
      "description": "TRUCK, F350 CE12 2011 1FD8W3H62BEA59502"
    },
    {
      "assetName": "BAG000192",
      "equipmentNo": "100000908597",
      "equipmentName": "543CFB01",
      "description": "TRUCK, FLAT CFB01 2011 5KKHALCK1BPAX9446"
    },
    {
      "assetName": "BAG000193",
      "equipmentNo": "100000950087",
      "equipmentName": "543CE85",
      "description": "TRUCK, F150 CE85 2008 1FTRF14558KB73370"
    },
    {
      "assetName": "BAG000194",
      "equipmentNo": "100000950089",
      "equipmentName": "543CM63",
      "description": "TRUCK, K1500 CM63 2008 2GCEK19J981223901"
    },
    {
      "assetName": "BAG000195",
      "equipmentNo": "100000951642",
      "equipmentName": "543CM17",
      "description": "TRUCK, F350 CM17 2011 1FD8W3H63BEC95611"
    },
    {
      "assetName": "BAG000196",
      "equipmentNo": "100000951643",
      "equipmentName": "543CM18",
      "description": "TRUCK, F350 CM18 2011 1FD8W3H61BEC95610"
    },
    {
      "assetName": "BAG000197",
      "equipmentNo": "100000952841",
      "equipmentName": "543CMA04",
      "description": "ATV, POLAR CMA04 2011 4XATY76A3B4269448"
    },
    {
      "assetName": "BAG000198",
      "equipmentNo": "100000952845",
      "equipmentName": "543COA01",
      "description": "ATV, POLAR COA01 2011 4XATY76AXB4269575"
    },
    {
      "assetName": "BAG000199",
      "equipmentNo": "100000953638",
      "equipmentName": "543CM19",
      "description": "TRUCK, F550 CM19 2011 1FD0W5HYXCEA41096"
    },
    {
      "assetName": "BAG000200",
      "equipmentNo": "100000954324",
      "equipmentName": "543CO08",
      "description": "TRUCK, F250 CO08 2011 1FD7W2B62CEA33224"
    },
    {
      "assetName": "BAG000201",
      "equipmentNo": "100000955768",
      "equipmentName": "543COVAC01",
      "description": "TRUCK,COVAC01 2012 GUZ 1HTGSSHT1CJ626516"
    },
    {
      "assetName": "BAG000202",
      "equipmentNo": "100000957553",
      "equipmentName": "543CEA02",
      "description": "ATV, POLAR CEA02 2012 4XATX7EA7C4279132"
    },
    {
      "assetName": "BAG000203",
      "equipmentNo": "100000957555",
      "equipmentName": "543CMA03",
      "description": "ATV, POLAR CMA03 2012 4XATX7EA3C2701750"
    },
    {
      "assetName": "BAG000204",
      "equipmentNo": "100000957558",
      "equipmentName": "543CMA01",
      "description": "ATV, POLAR CMA01 2012 4XATX7EA7C2701752"
    },
    {
      "assetName": "BAG000205",
      "equipmentNo": "100000957718",
      "equipmentName": "543CMA02",
      "description": "ATV, POLAR CMA02 2012 4XATX7EA1C2699934"
    },
    {
      "assetName": "BAG000206",
      "equipmentNo": "100000958554",
      "equipmentName": "543COA02",
      "description": "ATV, POLAR COA02 2012 4XATX7EA6C2700432"
    },
    {
      "assetName": "BAG000207",
      "equipmentNo": "100000959042",
      "equipmentName": "543CM20",
      "description": "TRUCK, F250 CM20 2012 1FT7W2B68CEC68232"
    },
    {
      "assetName": "BAG000208",
      "equipmentNo": "100001059921",
      "equipmentName": "543CE15",
      "description": "TRUCK, F150 CE15 2017 1FTEW1EFXHKD61338"
    },
    {
      "assetName": "BAG000209",
      "equipmentNo": "100001059922",
      "equipmentName": "543CM38",
      "description": "TRUCK, F150 CM38 2017 1FTEW1EF9HKD61332"
    },
    {
      "assetName": "BAG000210",
      "equipmentNo": "100001059925",
      "equipmentName": "543CE16",
      "description": "TRUCK, F150 CE16 2017 1FTEW1EF3HKD61343"
    },
    {
      "assetName": "BAG000211",
      "equipmentNo": "100001060799",
      "equipmentName": "543CO13",
      "description": "TRUCK, F150 CO13 2017 1FTEW1EF8HKD61340"
    },
    {
      "assetName": "BAG000212",
      "equipmentNo": "100001061006",
      "equipmentName": "543CE17",
      "description": "TRUCK, F150 CE17 2017 1FTEW1EF2HKD61334"
    },
    {
      "assetName": "BAG000213",
      "equipmentNo": "100001067008",
      "equipmentName": "543CD02",
      "description": "TRUCK, MACK CD02 2018 1M2AX04C2JM040610"
    },
    {
      "assetName": "BAG000214",
      "equipmentNo": "100001073827",
      "equipmentName": "543CE18",
      "description": "TRUCK, F150 CE18 2018 1FTEW1E51JKD69857"
    },
    {
      "assetName": "BAG000215",
      "equipmentNo": "100001076844",
      "equipmentName": "543CE19",
      "description": "TRUCK, F250 CE19 2018 1FT7W2B68KEC62087"
    },
    {
      "assetName": "BAG000216",
      "equipmentNo": "100001076851",
      "equipmentName": "543CM64",
      "description": "TRUCK, F450 CM64 2019 1FT7W2B68KEC62090"
    },
    {
      "assetName": "BAG000217",
      "equipmentNo": "100001076881",
      "equipmentName": "543CE20",
      "description": "TRUCK, F350 CE20 2019 1FT8W3B64KEC81679"
    },
    {
      "assetName": "BAG000218",
      "equipmentNo": "100001077915",
      "equipmentName": "543CE21",
      "description": "TRUCK, F150 CE21 2019 1FTEW1E55KFA36894"
    },
    {
      "assetName": "BAG000219",
      "equipmentNo": "100001077916",
      "equipmentName": "543CE22",
      "description": "TRUCK, F150 CE22 2019 1FTEW1E57KFA36895"
    },
    {
      "assetName": "BAG000220",
      "equipmentNo": "100001079766",
      "equipmentName": "543CO14",
      "description": "TRUCK, F150 CO14 2018 IFTEW1E5XJKF93936"
    },
    {
      "assetName": "BAG000221",
      "equipmentNo": "100001079767",
      "equipmentName": "543CO15",
      "description": "TRUCK, F150 CO15 2019 1FTEW1E53JKF93938"
    },
    {
      "assetName": "BAG000222",
      "equipmentNo": "100001081571",
      "equipmentName": "543CD01",
      "description": "TRUCK, MACK CD01 2019 1M2GR2GCXKM010638"
    },
    {
      "assetName": "BAG000223",
      "equipmentNo": "100001087510",
      "equipmentName": "543CO16",
      "description": "TRUCK, F250 CO16 2019 1FT7W2B66KEF21773"
    },
    {
      "assetName": "BAG000224",
      "equipmentNo": "100001088289",
      "equipmentName": "543CE23",
      "description": "TRUCK, F350 CE23 2018 1FT8W3B66KEF21797"
    },
    {
      "assetName": "BAG000225",
      "equipmentNo": "100001088371",
      "equipmentName": "543CE24",
      "description": "TRUCK, F250 CE24 2019 1FT7W2B60KEF21784"
    },
    {
      "assetName": "BAG000226",
      "equipmentNo": "100001088375",
      "equipmentName": "543CE25",
      "description": "TRUCK, F250 CE25 2019 1FT7W2B68KEF21788"
    },
    {
      "assetName": "BAG000227",
      "equipmentNo": "100001088590",
      "equipmentName": "543CE26",
      "description": "TRUCK, F250 CE26 2019 1FT7W2B66KEF21787"
    },
    {
      "assetName": "BAG000228",
      "equipmentNo": "100001088890",
      "equipmentName": "543CM39",
      "description": "TRUCK, F450 CM39 2019 1FD0W4HY5KEF53860"
    },
    {
      "assetName": "BAG000229",
      "equipmentNo": "100001088891",
      "equipmentName": "543CM40",
      "description": "TRUCK, F450 CM40 2019 1FD0W4HY9KEF53859"
    },
    {
      "assetName": "BAG000230",
      "equipmentNo": "100001088893",
      "equipmentName": "543CRN02",
      "description": "TRUCK, F450 CRN02 2019 1FD0W4HY7KEF53861"
    },
    {
      "assetName": "BAG000231",
      "equipmentNo": "100001090059",
      "equipmentName": "543COF01",
      "description": "FORKLIFT, H60FT COF01 2019 P177V13429T"
    },
    {
      "assetName": "BAG000232",
      "equipmentNo": "100001092395",
      "equipmentName": "543CMF15",
      "description": "FORKLIFT, H90F CMF15 2019 U005V10175T"
    },
    {
      "assetName": "BAG000233",
      "equipmentNo": "100001092422",
      "equipmentName": "543CMF14",
      "description": "FORKLIFT, H60FT CMF14 2019 P177V13532T"
    },
    {
      "assetName": "BAG000234",
      "equipmentNo": "100001094450",
      "equipmentName": "543CMF16",
      "description": "FORKLIFT, H360 CMF16 2019  L019E01869T"
    },
    {
      "assetName": "BAG000235",
      "equipmentNo": "100001106704",
      "equipmentName": "543COA03",
      "description": "ATV, HONDA  COA03 2021 1HFVE04B2M4500510"
    },
    {
      "assetName": "BAG000236",
      "equipmentNo": "100000070304",
      "equipmentName": "543MMF06",
      "description": "FORKLIFT, HY1440 MMF06 1994 E008D01539R"
    },
    {
      "assetName": "BAG000237",
      "equipmentNo": "100000847548",
      "equipmentName": "543MMF01",
      "description": "FORKLIFT, MITSU MMF01 2007 AF19C50193"
    },
    {
      "assetName": "BAG000238",
      "equipmentNo": "100000847550",
      "equipmentName": "543MMF02",
      "description": "FORKLIFT, MITSU MMF02 2007 AF19C50192"
    },
    {
      "assetName": "BAG000239",
      "equipmentNo": "100000847551",
      "equipmentName": "543MMF03",
      "description": "FORKLIFT, MITSU MMF03 2007 AF19C50194"
    },
    {
      "assetName": "BAG000240",
      "equipmentNo": "100000847800",
      "equipmentName": "543MMF04",
      "description": "FORKLIFT, KALMAR MMF04 2006 T43105 0109"
    },
    {
      "assetName": "BAG000241",
      "equipmentNo": "100000847801",
      "equipmentName": "543MMF05",
      "description": "FORKLIFT, KALMAR MMF05 2006 T431050108"
    },
    {
      "assetName": "BAG000242",
      "equipmentNo": "100000900027",
      "equipmentName": "543MMF08",
      "description": "FORKLIFT, NISSAN MMF08 2009 AN19C70237"
    },
    {
      "assetName": "BAG000243",
      "equipmentNo": "100000901394",
      "equipmentName": "543MM26",
      "description": "TRUCK, CHEV MM26 2006 1GCHK23D17F119352"
    },
    {
      "assetName": "BAG000244",
      "equipmentNo": "100000901551",
      "equipmentName": "543MM04",
      "description": "TRUCK, 2500 MM04 2007 1D7KS28C97J509804"
    },
    {
      "assetName": "BAG000245",
      "equipmentNo": "100000901646",
      "equipmentName": "543MM23",
      "description": "TRUCK, F150 MM23 2007 1FTPW14VX7KA72251"
    },
    {
      "assetName": "BAG000246",
      "equipmentNo": "100000903170",
      "equipmentName": "543PWR04",
      "description": "TRAILER, PWR04  1L9MP50278G08534"
    },
    {
      "assetName": "BAG000247",
      "equipmentNo": "100000906019",
      "equipmentName": "543MM28",
      "description": "TRUCK, F750 MM28 2009 3FRWF75D49V135230"
    },
    {
      "assetName": "BAG000248",
      "equipmentNo": "100000906071",
      "equipmentName": "543MM05",
      "description": "TRUCK, F750 MM05 2009 3FRWF75D89V135232"
    },
    {
      "assetName": "BAG000249",
      "equipmentNo": "100000907091",
      "equipmentName": "543MM08",
      "description": "TRUCK, F350 MM08 2011 1FD8W3H64BEA59498"
    },
    {
      "assetName": "BAG000250",
      "equipmentNo": "100000907453",
      "equipmentName": "543MM01",
      "description": "TRUCK, FRT MM01 2011 1FVACWBS2BDA96553"
    },
    {
      "assetName": "BAG000251",
      "equipmentNo": "100000908445",
      "equipmentName": "543BL11",
      "description": "TRUCK, F350 BL11 2011 1FD8W3H68BEB45526"
    },
    {
      "assetName": "BAG000252",
      "equipmentNo": "100000951635",
      "equipmentName": "543MO32",
      "description": "TRUCK, F250 MO32 2011 1FT7W2B62BEC95604"
    },
    {
      "assetName": "BAG000253",
      "equipmentNo": "100000951639",
      "equipmentName": "543BL12",
      "description": "TRUCK, F350 BL12 2011 1FD8W3H65BEC95612"
    },
    {
      "assetName": "BAG000254",
      "equipmentNo": "100000951700",
      "equipmentName": "543MOB01",
      "description": "BUS, XL550 MOB01 2011 1FDUF5GY1BEC03098"
    },
    {
      "assetName": "BAG000255",
      "equipmentNo": "100000954682",
      "equipmentName": "543MO31",
      "description": "TRUCK, F250 MO31 2012 1FT7W2B64CEA16056"
    },
    {
      "assetName": "BAG000256",
      "equipmentNo": "100000957668",
      "equipmentName": "543MOB02",
      "description": "BUS, XL550 MOB02 2012 1FDUF5GY4BEC64929"
    },
    {
      "assetName": "BAG000257",
      "equipmentNo": "100000958305",
      "equipmentName": "543MM07",
      "description": "TRUCK, F750 MM07 2012 3FRXF7FK5CV273884"
    },
    {
      "assetName": "BAG000258",
      "equipmentNo": "100000958308",
      "equipmentName": "543MM11",
      "description": "TRUCK, F750 MM11 2012 3FRXF7FK3CV273883"
    },
    {
      "assetName": "BAG000259",
      "equipmentNo": "100000958575",
      "equipmentName": "543MM15",
      "description": "TRUCK, F250 MM15 2012 1FT7X2B61CEC49924"
    },
    {
      "assetName": "BAG000260",
      "equipmentNo": "100000958814",
      "equipmentName": "543MOV04",
      "description": "VAN, TRANS MOV04 2012 1FBSS3BL5CDB30630"
    },
    {
      "assetName": "BAG000261",
      "equipmentNo": "100000958816",
      "equipmentName": "543MO20",
      "description": "TRUCK, F250 MO20 2012 1FT7W2B64CEC46356"
    },
    {
      "assetName": "BAG000262",
      "equipmentNo": "100000959202",
      "equipmentName": "543MM17",
      "description": "TRUCK, F550 MM17 2012 1FD0W5HY0CEC77384"
    },
    {
      "assetName": "BAG000263",
      "equipmentNo": "100000989067",
      "equipmentName": "543MOB04",
      "description": "BUS, XL550 MOB04 2013 1FDAF5GY9DEA24829"
    },
    {
      "assetName": "BAG000264",
      "equipmentNo": "100000990783",
      "equipmentName": "543MM18",
      "description": "TRUCK, F550 MM18 2014 1FDUF5HY5EEA49370"
    },
    {
      "assetName": "BAG000265",
      "equipmentNo": "100001047619",
      "equipmentName": "543MOV02",
      "description": "VAN, TRANS MOV02 2015 1FBZX2CM1FKB23496"
    },
    {
      "assetName": "BAG000266",
      "equipmentNo": "100001047620",
      "equipmentName": "543MOV03",
      "description": "VAN, TRANS MOV03 2015 1FBZX2CMXFKB23495"
    },
    {
      "assetName": "BAG000267",
      "equipmentNo": "100001047753",
      "equipmentName": "543MO39",
      "description": "TRUCK, F150 MO39 2015 1FTFX1EF1FKD98826"
    },
    {
      "assetName": "BAG000268",
      "equipmentNo": "100001048537",
      "equipmentName": "543MM20",
      "description": "TRUCK, F350 MM20 2016 1FDRF3H64GEA59383"
    },
    {
      "assetName": "BAG000269",
      "equipmentNo": "100001048538",
      "equipmentName": "543PWR07",
      "description": "TRUCK, F250 PWR07 2015 1FT7X2B62GEA44456"
    },
    {
      "assetName": "BAG000270",
      "equipmentNo": "100001060794",
      "equipmentName": "543BL33",
      "description": "TRUCK, F150 BL33 2017 1FTEW1EF9HKD61329"
    },
    {
      "assetName": "BAG000271",
      "equipmentNo": "100001060795",
      "equipmentName": "543MO34",
      "description": "TRUCK, F150 MO34 2017 1FTEW1EFXHKD61341"
    },
    {
      "assetName": "BAG000272",
      "equipmentNo": "100001061005",
      "equipmentName": "543MM21",
      "description": "TRUCK, F150 MM21 2017 1FTEW1EF7HKD61328"
    },
    {
      "assetName": "BAG000273",
      "equipmentNo": "100001061890",
      "equipmentName": "543ADV01",
      "description": "VAN, TRANS ADV01 2017 1FBZX2ZM7HKB31922"
    },
    {
      "assetName": "BAG000274",
      "equipmentNo": "100001075792",
      "equipmentName": "543MOV05",
      "description": "VAN, TRANS MOV05 2018 1FBAX2CM5JKA79248"
    },
    {
      "assetName": "BAG000275",
      "equipmentNo": "100001076727",
      "equipmentName": "543MO36",
      "description": "TRUCK, F250 MO36 2019 1FT7W2B66KEC62086"
    },
    {
      "assetName": "BAG000276",
      "equipmentNo": "100001076853",
      "equipmentName": "543BL37",
      "description": "TRUCK, F250 BL37 2018 1FT7W2B61KEC62089"
    },
    {
      "assetName": "BAG000277",
      "equipmentNo": "100001076854",
      "equipmentName": "543BL38",
      "description": "TRUCK, F250 BL38 2018 1FT7W2B6XKEC62088"
    },
    {
      "assetName": "BAG000278",
      "equipmentNo": "100001076883",
      "equipmentName": "543MOV06",
      "description": "VAN, TRANS MOV06 2018 1FBZX2CM2KKA11400"
    },
    {
      "assetName": "BAG000279",
      "equipmentNo": "100001080134",
      "equipmentName": "543MM19",
      "description": "TRUCK, F250 MM19 2019 1FT7W2B62KED41772"
    },
    {
      "assetName": "BAG000280",
      "equipmentNo": "100001080136",
      "equipmentName": "543MO40",
      "description": "TRUCK, F250 MO40 2019 1FT7W2B61KED12327"
    },
    {
      "assetName": "BAG000281",
      "equipmentNo": "100001080137",
      "equipmentName": "543MO41",
      "description": "TRUCK, F250 MO41 2019 1FT7W2B64KED84039"
    },
    {
      "assetName": "BAG000282",
      "equipmentNo": "100001080138",
      "equipmentName": "543MO42",
      "description": "TRUCK, F250 MO42 2019 1FT7W2B61KED83799"
    },
    {
      "assetName": "BAG000283",
      "equipmentNo": "100001087557",
      "equipmentName": "543MO43",
      "description": "TRUCK, F250 MO43 2019 1FT7W2B62KEF21785"
    },
    {
      "assetName": "BAG000284",
      "equipmentNo": "100001088342",
      "equipmentName": "543MO44",
      "description": "TRUCK, F250 MO44 2019 1FT7W2B68KEF21774"
    },
    {
      "assetName": "BAG000285",
      "equipmentNo": "100001088376",
      "equipmentName": "543MM22",
      "description": "TRUCK, F750 MM22 2019 1FDXF7DX6KDF07618"
    },
    {
      "assetName": "BAG000286",
      "equipmentNo": "100001088589",
      "equipmentName": "543MO45",
      "description": "TRUCK, F250 MO45 2019 1FT7W2B65KEF21778"
    },
    {
      "assetName": "BAG000287",
      "equipmentNo": "100001088591",
      "equipmentName": "543MO46",
      "description": "TRUCK, F250 MO46 2019 1FT7W2B67KEF21779"
    },
    {
      "assetName": "BAG000288",
      "equipmentNo": "100001088592",
      "equipmentName": "543MO47",
      "description": "TRUCK, F250 MO47 2019 1FT7W2B63KEF21780"
    },
    {
      "assetName": "BAG000289",
      "equipmentNo": "100001088593",
      "equipmentName": "543MO48",
      "description": "TRUCK, F250 MO48 2019 1FT7W2B65KEF21781"
    },
    {
      "assetName": "BAG000290",
      "equipmentNo": "100001088867",
      "equipmentName": "543MO49",
      "description": "TRUCK, F550 MO49 2019 1FD0W5HY1KEF53862"
    },
    {
      "assetName": "BAG000291",
      "equipmentNo": "100001089488",
      "equipmentName": "543MM24",
      "description": "TRUCK, F150 MM24 2019 1FTEW1E5XKKD28385"
    },
    {
      "assetName": "BAG000292",
      "equipmentNo": "100001089490",
      "equipmentName": "543BL50",
      "description": "TRUCK, F550 BL50 2019 1FD0W5HY3KEF53863"
    },
    {
      "assetName": "BAG000293",
      "equipmentNo": "100001089672",
      "equipmentName": "543MO38",
      "description": "TRUCK, F250 MO38 2019 1FT7W2B67KEF21782"
    },
    {
      "assetName": "BAG000294",
      "equipmentNo": "100001089726",
      "equipmentName": "543MO51",
      "description": "TRUCK, F250 MO51 2019 1FT7W2B64KEF21786"
    },
    {
      "assetName": "BAG000295",
      "equipmentNo": "100001089727",
      "equipmentName": "543MO52",
      "description": "TRUCK, F350 MO52 2019 1FT8W3B67KEF21789"
    },
    {
      "assetName": "BAG000296",
      "equipmentNo": "100001089792",
      "equipmentName": "543PWR09",
      "description": "TRUCK, F350 PWR09 2019 1FT8W3B68KEF21798"
    },
    {
      "assetName": "BAG000297",
      "equipmentNo": "100001090736",
      "equipmentName": "543MMF09",
      "description": "FORKLIFT, HY155FT MMF09 2019 L006V03327T"
    },
    {
      "assetName": "BAG000298",
      "equipmentNo": "100001096997",
      "equipmentName": "543MM29",
      "description": "TRUCK, F750 MM29 2019 1FDXF7DX4KDF09674"
    },
    {
      "assetName": "BAG000299",
      "equipmentNo": "100001096998",
      "equipmentName": "543MM30",
      "description": "TRUCK, F750 MM30 2019 1FDXF7DX6KDF09675"
    },
    {
      "assetName": "BAG000300",
      "equipmentNo": "100001097348",
      "equipmentName": "543MM03",
      "description": "TRUCK, F750 MM03 2019 1FDXF7DX0KDF09672"
    },
    {
      "assetName": "BAG000301",
      "equipmentNo": "100001097457",
      "equipmentName": "543MM27",
      "description": "TRUCK, F750 MM27 2019 1FDXF7DXXKDF09677"
    },
    {
      "assetName": "BAG000302",
      "equipmentNo": "100000865192",
      "equipmentName": "543ENG18",
      "description": "TRUCK, F250 ENG18 2007 1FTNF215X8EC03504"
    },
    {
      "assetName": "BAG000303",
      "equipmentNo": "100000901523",
      "equipmentName": "543ENG03",
      "description": "TRUCK, F150 ENG03 2006 1FTPX14V57KA57217"
    },
    {
      "assetName": "BAG000304",
      "equipmentNo": "100000901526",
      "equipmentName": "543ENG05",
      "description": "TRUCK, F250 ENG05 2006 1FTNF21557EA48052"
    },
    {
      "assetName": "BAG000305",
      "equipmentNo": "100000901571",
      "equipmentName": "543ENG07",
      "description": "TRUCK, GM ENG07 2006 2GCEK13Z771129657"
    },
    {
      "assetName": "BAG000306",
      "equipmentNo": "100000906285",
      "equipmentName": "543ENG08",
      "description": "TRUCK, F350 ENG08 2011 1FD8W3H6XBEA59487"
    },
    {
      "assetName": "BAG000307",
      "equipmentNo": "100000907101",
      "equipmentName": "543ENG09",
      "description": "TRUCK, F350 ENG09 2011 1FD8W3H68BEA59505"
    },
    {
      "assetName": "BAG000308",
      "equipmentNo": "100000950082",
      "equipmentName": "543ENG16",
      "description": "TRUCK, 3500 ENG16 2007 3D6WH48D97G803410"
    },
    {
      "assetName": "BAG000309",
      "equipmentNo": "100000951640",
      "equipmentName": "543ENG10",
      "description": "TRUCK, F350 ENG10 2011 1FDRF3H65BEC95601"
    },
    {
      "assetName": "BAG000310",
      "equipmentNo": "100000958574",
      "equipmentName": "543ENG13",
      "description": "TRUCK, F250 ENG13 2012 1FT7W2B63CEC46350"
    },
    {
      "assetName": "BAG000311",
      "equipmentNo": "100000989081",
      "equipmentName": "543ENG14",
      "description": "TRUCK, F250 ENG14 2013 1FT7W2B69DEB77262"
    },
    {
      "assetName": "BAG000312",
      "equipmentNo": "100000989082",
      "equipmentName": "543ME15",
      "description": "TRUCK, F250 ME15 2013 1FT7W2B60DEB77263"
    },
    {
      "assetName": "BAG000313",
      "equipmentNo": "100000989790",
      "equipmentName": "543ENG15",
      "description": "TRUCK, F250 ENG15 2013 1FT7W2B64DEA98243"
    },
    {
      "assetName": "BAG000314",
      "equipmentNo": "100001080024",
      "equipmentName": "543ENG19",
      "description": "TRUCK, F150 ENG19 2018 1FTEW1E56JKF93934"
    },
    {
      "assetName": "BAG000315",
      "equipmentNo": "100001080025",
      "equipmentName": "543MENGNR020",
      "description": "MENGNR020 2019"
    },
    {
      "assetName": "BAG000316",
      "equipmentNo": "100001087511",
      "equipmentName": "543ENG21",
      "description": "TRUCK, F250 ENG21 2019 1FT7W2B63KEF21777"
    },
    {
      "assetName": "BAG000317",
      "equipmentNo": "100001088292",
      "equipmentName": "543ME09",
      "description": "TRUCK, F350 ME09 2019 1FT8W3B69KEF21793"
    },
    {
      "assetName": "BAG000318",
      "equipmentNo": "100001088406",
      "equipmentName": "543ME08",
      "description": "TRUCK, F350 ME08 2019 1FT8W3B63KEF21790"
    },
    {
      "assetName": "BAG000319",
      "equipmentNo": "100001088851",
      "equipmentName": "543ME10",
      "description": "TRUCK, F350 ME10 2019 1FT8W3B65KEF21791"
    },
    {
      "assetName": "BAG000320",
      "equipmentNo": "100001089346",
      "equipmentName": "543ENG22",
      "description": "TRUCK, F250 ENG22 2019 1FT7W2B6XKEF21775"
    },
    {
      "assetName": "BAG000321",
      "equipmentNo": "100001089716",
      "equipmentName": "543ME12",
      "description": "TRUCK, F350 ME12 2019 1FT8W3B67KEF21792"
    },
    {
      "assetName": "BAG000322",
      "equipmentNo": "100001089723",
      "equipmentName": "543ME11",
      "description": "TRUCK, F350 ME11 2019 1FT8W3B64KEF21796"
    },
    {
      "assetName": "BAG000323",
      "equipmentNo": "100001089724",
      "equipmentName": "543ENG23",
      "description": "TRUCK, F350 ENG23 2019 1FT8W3D63KEF21799"
    },
    {
      "assetName": "BAG000324",
      "equipmentNo": "100001089793",
      "equipmentName": "543ME13",
      "description": "TRUCK, F350 ME13 2019 1FT8W3B60KEF21794"
    },
    {
      "assetName": "BAG000325",
      "equipmentNo": "100001089794",
      "equipmentName": "543ME14",
      "description": "TRUCK, F350 ME14 2019 1FT8W3B62KEF21795"
    },
    {
      "assetName": "BAG000326",
      "equipmentNo": "100000901428",
      "equipmentName": "543IS07",
      "description": "TRUCK,TOYOTA IS07 2007 JTEBU14R578103322"
    },
    {
      "assetName": "BAG000327",
      "equipmentNo": "100000901431",
      "equipmentName": "543IS09",
      "description": "TRUCK, NIS IS09 2008 1N6AA06C58N327783"
    },
    {
      "assetName": "BAG000328",
      "equipmentNo": "100000901433",
      "equipmentName": "543IS01",
      "description": "TRUCK, K1500 IS01 2008 2GCEK13M181143950"
    },
    {
      "assetName": "BAG000329",
      "equipmentNo": "100000950119",
      "equipmentName": "543IS08",
      "description": "TRUCK, TOYO IS08 2005 5TBDT44106S508664"
    },
    {
      "assetName": "BAG000330",
      "equipmentNo": "100000951664",
      "equipmentName": "543IS02",
      "description": "TRUCK, F250 IS02 2011 1FT7W2B66BEC95606"
    },
    {
      "assetName": "BAG000331",
      "equipmentNo": "100000951666",
      "equipmentName": "543IS03",
      "description": "TRUCK, F250 IS03 2011 1FT7W2B64BEC95605"
    },
    {
      "assetName": "BAG000332",
      "equipmentNo": "100000951667",
      "equipmentName": "543IS04",
      "description": "TRUCK, F250 IS04 2011 1FT7W2B60BEC95603"
    },
    {
      "assetName": "BAG000333",
      "equipmentNo": "100000958815",
      "equipmentName": "543IS06",
      "description": "TRUCK, F250 IS06 2012 1FT7X2B63CEC49925"
    },
    {
      "assetName": "BAG000334",
      "equipmentNo": "100001109178",
      "equipmentName": "543IS10",
      "description": "TRUCK, F550 IS10 2021 1FDUF5HT6MDA06357"
    },
    {
      "assetName": "BAG000335",
      "equipmentNo": "100000051512",
      "equipmentName": "543TS10",
      "description": "TRUCK, F350 TS10 2004 1FDWF37F5YEC57699"
    },
    {
      "assetName": "BAG000336",
      "equipmentNo": "100000845700",
      "equipmentName": "543TS04",
      "description": "TRUCK, F250 TS04 2006 1FTNF21566ED31686"
    },
    {
      "assetName": "BAG000337",
      "equipmentNo": "100000846165",
      "equipmentName": "543TSV01",
      "description": "VAN ,TRANS TSV01 2006 1FBSS31L86DB21409"
    },
    {
      "assetName": "BAG000338",
      "equipmentNo": "100000847002",
      "equipmentName": "543TSM03",
      "description": "TRUCK, F250 TSM03 2007 1FDNF215X7EA42338"
    },
    {
      "assetName": "BAG000339",
      "equipmentNo": "100000847095",
      "equipmentName": "543TS05",
      "description": "TRUCK, F250 TS05 2006 1FTNF21556EC53949"
    },
    {
      "assetName": "BAG000340",
      "equipmentNo": "100000847797",
      "equipmentName": "543TSF04",
      "description": "FORKLIFT, PETTIBONE TSF04  2006 4679"
    },
    {
      "assetName": "BAG000341",
      "equipmentNo": "100000905566",
      "equipmentName": "543TSD01",
      "description": "TRUCK, F750 TSD01 2008 3FRWF75E38V570960"
    },
    {
      "assetName": "BAG000342",
      "equipmentNo": "100000906366",
      "equipmentName": "543TSM01",
      "description": "TRUCK, F350 TSM01 2010 1FD8W3H61BEA59507"
    },
    {
      "assetName": "BAG000343",
      "equipmentNo": "100000906392",
      "equipmentName": "543TSM02",
      "description": "TRUCK, F350 TSM02 2011 1FD8W3H62BEA59497"
    },
    {
      "assetName": "BAG000344",
      "equipmentNo": "100000906811",
      "equipmentName": "543TSF01",
      "description": "FORKLIFT, CAT TSF01 2010  AT18C30238"
    },
    {
      "assetName": "BAG000345",
      "equipmentNo": "100000950085",
      "equipmentName": "543TS08",
      "description": "TRUCK, F250 TS08 2008 1TNF21598ED60179"
    },
    {
      "assetName": "BAG000346",
      "equipmentNo": "100000951641",
      "equipmentName": "543TS01",
      "description": "TRUCK, F350 TS01 2011 1FD8X3H62BEC95614"
    },
    {
      "assetName": "BAG000347",
      "equipmentNo": "100000956637",
      "equipmentName": "543TSA01",
      "description": "ATV, POLAR TSA01 2012 4XATX7EA8C4277521"
    },
    {
      "assetName": "BAG000348",
      "equipmentNo": "100000989164",
      "equipmentName": "543TS02",
      "description": "TRUCK, F350 TS02 2013 1FDRF3H67DEB77259"
    },
    {
      "assetName": "BAG000349",
      "equipmentNo": "100000990149",
      "equipmentName": "543TSC01",
      "description": "TRUCK, F150 TSC01 2013 1FTEX1CM0DFC12924"
    },
    {
      "assetName": "BAG000350",
      "equipmentNo": "100001060798",
      "equipmentName": "543TS14",
      "description": "TRUCK, F150 TS14 2017 1FTEW1EF1HKD61342"
    },
    {
      "assetName": "BAG000351",
      "equipmentNo": "100001089674",
      "equipmentName": "543TSAD01",
      "description": "TRUCK,F150 TSAD01 2019 1FTEW1E59KKD82678"
    },
    {
      "assetName": "BAG000352",
      "equipmentNo": "100001089725",
      "equipmentName": "543TS11",
      "description": "TRUCK, F250 TS11 2019 1FT7X2B68KEF21805"
    },
    {
      "assetName": "BAG000353",
      "equipmentNo": "100001090737",
      "equipmentName": "543TS12",
      "description": "TRUCK, F350 TS12 2019 1FDRF3F69KEF58112"
    },
    {
      "assetName": "BAG000354",
      "equipmentNo": "100001092071",
      "equipmentName": "543TS16",
      "description": "TRUCK, F250 TS16 2019 1FD7X2B69LEC31327"
    },
    {
      "assetName": "BAG000355",
      "equipmentNo": "100001092073",
      "equipmentName": "543TS20",
      "description": "TRUCK, F250 TS20 2019 1FD7X2B60LEC31328"
    },
    {
      "assetName": "BAG000356",
      "equipmentNo": "100001092074",
      "equipmentName": "543TS21",
      "description": "TRUCK, F250 TS21 2019 1FD7X2B62LEC31329"
    },
    {
      "assetName": "BAG000357",
      "equipmentNo": "100001092075",
      "equipmentName": "543TS22",
      "description": "TRUCK, F250 TS22 2019 1FD8X3H67LEC31330"
    },
    {
      "assetName": "BAG000358",
      "equipmentNo": "100001092076",
      "equipmentName": "543TS15",
      "description": "TRUCK, F250 TS15 2019 1FD7X2B67LEC31326"
    },
    {
      "assetName": "BAG000359",
      "equipmentNo": "100000847054",
      "equipmentName": "543TR08",
      "description": "TRUCK, F250 TR08 2008 1FTSW21517EA99308"
    },
    {
      "assetName": "BAG000360",
      "equipmentNo": "100000847100",
      "equipmentName": "543TR07",
      "description": "TRUCK, F250 TR07 2007 1FTSW21537EB24712"
    },
    {
      "assetName": "BAG000361",
      "equipmentNo": "100000847114",
      "equipmentName": "543TR06",
      "description": "TRUCK, F250 TR06 2007 1FTSW21557EA88229"
    },
    {
      "assetName": "BAG000362",
      "equipmentNo": "100000865412",
      "equipmentName": "543TR09",
      "description": "TRUCK, F250 TR09 2008 1FTNF21548EA81822"
    },
    {
      "assetName": "BAG000363",
      "equipmentNo": "100000907087",
      "equipmentName": "543TR05",
      "description": "TRUCK, F250 TR05 2010 1FT7W2B66BEA81506"
    },
    {
      "assetName": "BAG000364",
      "equipmentNo": "100000951523",
      "equipmentName": "543TR01",
      "description": "TRUCK, F250 TR01 2011 1FT7W2B60BEB74862"
    },
    {
      "assetName": "BAG000365",
      "equipmentNo": "100000951669",
      "equipmentName": "543TR03",
      "description": "TRUCK, F250 TR03 2011 1FT7W2B66BEC94228"
    },
    {
      "assetName": "BAG000366",
      "equipmentNo": "100000951670",
      "equipmentName": "543TR04",
      "description": "TRUCK, F250 TR04 2011 1FT7W2B67BED03101"
    },
    {
      "assetName": "BAG000367",
      "equipmentNo": "100000953181",
      "equipmentName": "543TR02",
      "description": "TRUCK, F250 TR02 2012 1FT7W2B62CEA07081"
    },
    {
      "assetName": "BAG000368",
      "equipmentNo": "100000051518",
      "equipmentName": "543TD56",
      "description": "TRUCK, L9000 TD56 2007 2FZHAZAN71AH19269"
    },
    {
      "assetName": "BAG000369",
      "equipmentNo": "100000848197",
      "equipmentName": "543VS02",
      "description": "TRUCK, F350 VS02 2007 1FDWF37P47EB44348"
    },
    {
      "assetName": "BAG000370",
      "equipmentNo": "100000901531",
      "equipmentName": "543T02",
      "description": "TRUCK, TOYOTA T02 2007 5TFBV54137X010694"
    },
    {
      "assetName": "BAG000371",
      "equipmentNo": "100000905749",
      "equipmentName": "543VSF01",
      "description": "FORKLIFT, NISSAN VSF01 2010 Y1F29K0311"
    },
    {
      "assetName": "BAG000372",
      "equipmentNo": "100000906736",
      "equipmentName": "543VS01",
      "description": "TRUCK, F350 VS01 2011 1FD8W3H60BEA59496"
    },
    {
      "assetName": "BAG000373",
      "equipmentNo": "100000907089",
      "equipmentName": "543UC03",
      "description": "TRUCK, F250 UC03 2011 1FT7W2B61BEA81509"
    },
    {
      "assetName": "BAG000374",
      "equipmentNo": "100000950277",
      "equipmentName": "543TB50",
      "description": "BOOMTRK, TB50 2007 2FZHAZDEX6AV36058"
    },
    {
      "assetName": "BAG000375",
      "equipmentNo": "100000954679",
      "equipmentName": "543UC01",
      "description": "TRUCK, F250 UC01 2012 1FT7W2B61CEA16063"
    },
    {
      "assetName": "BAG000376",
      "equipmentNo": "100000958307",
      "equipmentName": "543T07",
      "description": "TRUCK, F250 T07 2012 1FT7W2B65CEC46351"
    },
    {
      "assetName": "BAG000377",
      "equipmentNo": "100000989073",
      "equipmentName": "543T08",
      "description": "TRUCK, F250 T08 2013 1FT7W2B67DEB77261"
    },
    {
      "assetName": "BAG000378",
      "equipmentNo": "100000989075",
      "equipmentName": "543UC02",
      "description": "TRUCK, F250 UC02 2013 1FT7W2B65DEB77260"
    },
    {
      "assetName": "BAG000379",
      "equipmentNo": "100001020443",
      "equipmentName": "543TBM01",
      "description": "BOOMTRK, TBM01 2013   1HTGRSJT0EH014808"
    },
    {
      "assetName": "BAG000380",
      "equipmentNo": "100001047774",
      "equipmentName": "543T10",
      "description": "TRUCK, F150 T10 2015 1FTEW1EF4FKD98821"
    },
    {
      "assetName": "BAG000381",
      "equipmentNo": "100001047782",
      "equipmentName": "543T11",
      "description": "TRUCK, F150 T11 2015 1FTEW1EF6FKD98822"
    },
    {
      "assetName": "BAG000382",
      "equipmentNo": "100001047783",
      "equipmentName": "543T12",
      "description": "TRUCK, F150 T12 2015 1FTEW1EF8FKD98823"
    },
    {
      "assetName": "BAG000383",
      "equipmentNo": "100001055656",
      "equipmentName": "543T13",
      "description": "TRUCK, F150 T13 2016 1FTEW1EP0GKF04806"
    },
    {
      "assetName": "BAG000384",
      "equipmentNo": "100001055657",
      "equipmentName": "543T14",
      "description": "TRUCK, F150 T14 2016 1FTEW1E86GKE14584"
    },
    {
      "assetName": "BAG000385",
      "equipmentNo": "100001055658",
      "equipmentName": "543T15",
      "description": "TRUCK, F150 T15 2016 1FTEW1E81GKF04807"
    },
    {
      "assetName": "BAG000386",
      "equipmentNo": "100001059920",
      "equipmentName": "543T16",
      "description": "TRUCK, F150 T16 2017 1FTEW1EF6HKD61336"
    },
    {
      "assetName": "BAG000387",
      "equipmentNo": "100001059923",
      "equipmentName": "543T17",
      "description": "TRUCK, F150 T17 2017 1FTMF1EF0HKD61327"
    },
    {
      "assetName": "BAG000388",
      "equipmentNo": "100001059926",
      "equipmentName": "543T18",
      "description": "TRUCK, F150 T18 2017 1FTEW1EF5HKD61330"
    },
    {
      "assetName": "BAG000389",
      "equipmentNo": "100001059927",
      "equipmentName": "543T19",
      "description": "TRUCK, F150 T19 2017 1FTEW1EF8HKD61337"
    },
    {
      "assetName": "BAG000390",
      "equipmentNo": "100001061007",
      "equipmentName": "543TES12",
      "description": "TRUCK, F150 TES12 2017 1FTEW1EF7HKD61331"
    },
    {
      "assetName": "BAG000391",
      "equipmentNo": "100001070377",
      "equipmentName": "543VSA02",
      "description": "ATV, HONDA VSA02 2018 1HFVE04A1J4201142"
    },
    {
      "assetName": "BAG000392",
      "equipmentNo": "100001073828",
      "equipmentName": "543T20",
      "description": "TRUCK, F150 T20 2018 1FTEW1E54JFC45851"
    },
    {
      "assetName": "BAG000393",
      "equipmentNo": "100001073829",
      "equipmentName": "543TV01",
      "description": "VAN, TRANS TV01 2018 1FBZX2YM5JKA35150"
    },
    {
      "assetName": "BAG000394",
      "equipmentNo": "100001075329",
      "equipmentName": "543TES05",
      "description": "TRUCK, F150 TES05 2018 1FTEW1E51JKF30868"
    },
    {
      "assetName": "BAG000395",
      "equipmentNo": "100001081574",
      "equipmentName": "543VSA01",
      "description": "ATV, HONDA VSA01 2019 1HFVE04A0K4301069"
    },
    {
      "assetName": "BAG000396",
      "equipmentNo": "100001082262",
      "equipmentName": "543TA04",
      "description": "ATV, HONDA TA04 2019 1HFVE04A7K4301077"
    },
    {
      "assetName": "BAG000397",
      "equipmentNo": "100001083745",
      "equipmentName": "543TA05",
      "description": "ATV, HONDA TA05 2019 1HFVE04A4K4301750"
    },
    {
      "assetName": "BAG000398",
      "equipmentNo": "100001088888",
      "equipmentName": "543T21",
      "description": "TRUCK, F450 T21 2019 1FD0W4HY3KEF53856"
    },
    {
      "assetName": "BAG000399",
      "equipmentNo": "100001089487",
      "equipmentName": "543T22",
      "description": "TRUCK, F450 T22 2019 1FD0W4HY1KEF53855"
    },
    {
      "assetName": "BAG000400",
      "equipmentNo": "100001089489",
      "equipmentName": "543T23",
      "description": "TRUCK, F450 T23 2019 1FD0W4HY5KEF53857"
    },
    {
      "assetName": "BAG000401",
      "equipmentNo": "100001091923",
      "equipmentName": "543TES24",
      "description": "TRUCK, F150 TES24 2019 1FTEW1E56KKE52685"
    },
    {
      "assetName": "BAG000402",
      "equipmentNo": "100001106799",
      "equipmentName": "543TA06",
      "description": "ATV, HONDA TA06 2021 1HFVE04B1M4500904"
    },
    {
      "assetName": "BAG000794",
      "equipmentNo": "",
      "equipmentName": "",
      "description": "PI Vision for Moly Plant"
    },
    {
      "assetName": "BAG000795",
      "equipmentNo": "",
      "equipmentName": "",
      "description": "Bagdad Rougher and Cleaner Operation"
    },
    {
      "assetName": "BAG001519",
      "equipmentNo": "100000017544",
      "equipmentName": "543BAM00039",
      "description": "#39 LOWBOY TRACTOR CAT "
    },
    {
      "assetName": "BAG001520",
      "equipmentNo": "100000017565",
      "equipmentName": "543BAM01018",
      "description": " CAT 773B WATER TRUCK"
    },
    {
      "assetName": "BAG001521",
      "equipmentNo": "100000017574",
      "equipmentName": "543BAM02015",
      "description": "CAT D10N TRACK DOZER SXEW"
    },
    {
      "assetName": "BAG001522",
      "equipmentNo": "100000017606",
      "equipmentName": "543BAM06015",
      "description": "BAM06015 CAT 14G GRADER #15 S/N 96U02472"
    },
    {
      "assetName": "BAG001523",
      "equipmentNo": "100000017609",
      "equipmentName": "543BAM06018",
      "description": " CAT 16G BLADE 93U03482"
    },
    {
      "assetName": "BAG001524",
      "equipmentNo": "100000017685",
      "equipmentName": "543BAM13008",
      "description": "P&H 4100 SHOVEL #8 "
    },
    {
      "assetName": "BAG001525",
      "equipmentNo": "100000017774",
      "equipmentName": "543MMNTFL007",
      "description": "XM-117 CAT FORKLIFT V-155C"
    },
    {
      "assetName": "BAG001526",
      "equipmentNo": "100000017796",
      "equipmentName": "543BAM15012",
      "description": "GEN SET #1 XM-68  37104663"
    },
    {
      "assetName": "BAG001527",
      "equipmentNo": "100000017810",
      "equipmentName": "543BAM15026",
      "description": "GEN SET MULHOLLAND"
    },
    {
      "assetName": "BAG001528",
      "equipmentNo": "100000017813",
      "equipmentName": "543BAM15029",
      "description": "CAT GEN SET  XM-137 "
    },
    {
      "assetName": "BAG001529",
      "equipmentNo": "100000017814",
      "equipmentName": "543BAM15030",
      "description": "TOTEM TRAILER XM-87-1275DL"
    },
    {
      "assetName": "BAG001530",
      "equipmentNo": "100000017818",
      "equipmentName": "543BAM15034",
      "description": "XM132 CAT MOTIVATOR   "
    },
    {
      "assetName": "BAG001531",
      "equipmentNo": "100000017819",
      "equipmentName": "543BAM15050",
      "description": "P&H   CRANE P&H OVERHEAD"
    },
    {
      "assetName": "BAG001532",
      "equipmentNo": "100000017820",
      "equipmentName": "543BAM15051",
      "description": "SHAW BOX   CRANE OVERHEAD"
    },
    {
      "assetName": "BAG001533",
      "equipmentNo": "100000017821",
      "equipmentName": "543BAM15052",
      "description": "P&H   CRANE OVERHEAD"
    },
    {
      "assetName": "BAG001534",
      "equipmentNo": "100000017824",
      "equipmentName": "543BAM15055",
      "description": "MONORAIL CRANE"
    },
    {
      "assetName": "BAG001535",
      "equipmentNo": "100000017825",
      "equipmentName": "543BAM15056",
      "description": "3-TON JIB CRANE (CRAWLER BAY)  "
    },
    {
      "assetName": "BAG001536",
      "equipmentNo": "100000017828",
      "equipmentName": "543BAM15059",
      "description": "MONORAIL 2-TON CRANE -"
    },
    {
      "assetName": "BAG001537",
      "equipmentNo": "100000017829",
      "equipmentName": "543BAM15060",
      "description": "JIB 1-TON CRANE MINE SHOP/WSHE 41"
    },
    {
      "assetName": "BAG001538",
      "equipmentNo": "100000017830",
      "equipmentName": "543BAM15061",
      "description": "2 TON LOAD LIFTER WIRE ROPE HOIST"
    },
    {
      "assetName": "BAG001539",
      "equipmentNo": "100000017832",
      "equipmentName": "543BAM15063",
      "description": "XM-128 DAYTON GEN SET "
    },
    {
      "assetName": "BAG001540",
      "equipmentNo": "100000017843",
      "equipmentName": "543BAM16005",
      "description": "CAT D6 #1 CRAWLER S/X  "
    },
    {
      "assetName": "BAG001541",
      "equipmentNo": "100000017909",
      "equipmentName": "543BAM19009",
      "description": "XM-94KOHLER GEN SET "
    },
    {
      "assetName": "BAG001542",
      "equipmentNo": "100000017915",
      "equipmentName": "543BAM19079",
      "description": "XS-89 KOHLER GENSET "
    },
    {
      "assetName": "BAG001543",
      "equipmentNo": "100000017917",
      "equipmentName": "543BAM19081",
      "description": "KOHLER GENSET WASTE WT TREATMENT"
    },
    {
      "assetName": "BAG001544",
      "equipmentNo": "100000017920",
      "equipmentName": "543BAM19084",
      "description": "XS-84 CUMMINS GEN SET "
    },
    {
      "assetName": "BAG001545",
      "equipmentNo": "100000023501",
      "equipmentName": "543BAM01020",
      "description": " CAT 777FWATER TRUCK "
    },
    {
      "assetName": "BAG001546",
      "equipmentNo": "100000024250",
      "equipmentName": "543BAM16053",
      "description": "CAT D6H #2 LGP DOZER"
    },
    {
      "assetName": "BAG001547",
      "equipmentNo": "100000030156",
      "equipmentName": "543BAM15071",
      "description": "XM-142 ONAN GENSET    "
    },
    {
      "assetName": "BAG001548",
      "equipmentNo": "100000030355",
      "equipmentName": "543APU1",
      "description": "XM-143 CAT AUX POWER UNIT "
    },
    {
      "assetName": "BAG001549",
      "equipmentNo": "100000039183",
      "equipmentName": "543BAM00131",
      "description": "#131 CAT 793B HAUL TRK "
    },
    {
      "assetName": "BAG001550",
      "equipmentNo": "100000039188",
      "equipmentName": "543BAM00132",
      "description": "#132 CAT 793B HAUL TRK "
    },
    {
      "assetName": "BAG001551",
      "equipmentNo": "100000051355",
      "equipmentName": "543LDR21",
      "description": "CAT 950F LOADER"
    },
    {
      "assetName": "BAG001552",
      "equipmentNo": "100000051516",
      "equipmentName": "543BAM17055",
      "description": "2000 FREIGHTLINE VIN "
    },
    {
      "assetName": "BAG001553",
      "equipmentNo": "100000700177",
      "equipmentName": "543BAM13012",
      "description": "P&H 4100 SHOVEL #12"
    },
    {
      "assetName": "BAG001554",
      "equipmentNo": "100000700271",
      "equipmentName": "543BAM00136",
      "description": "#136 CAT 793B HAUL TRK"
    },
    {
      "assetName": "BAG001555",
      "equipmentNo": "100000706287",
      "equipmentName": "543BAM00137",
      "description": "#137 CAT 793B HAUL TRK"
    },
    {
      "assetName": "BAG001556",
      "equipmentNo": "100000801107",
      "equipmentName": "543988FL001",
      "description": " 1989 CAT 988B FORK LIFT "
    },
    {
      "assetName": "BAG001557",
      "equipmentNo": "100000801109",
      "equipmentName": "543LDR2",
      "description": "BAM05011 CAT 994A LOADER #2"
    },
    {
      "assetName": "BAG001558",
      "equipmentNo": "100000801220",
      "equipmentName": "543BAM00129",
      "description": "#129 CAT 793B HAUL TRK"
    },
    {
      "assetName": "BAG001559",
      "equipmentNo": "100000801225",
      "equipmentName": "543BAM00128",
      "description": "#128 CAT 793B HAUL TRK "
    },
    {
      "assetName": "BAG001560",
      "equipmentNo": "100000821061",
      "equipmentName": "543BAM02021",
      "description": "CAT  D10N TRACK DOZER#21"
    },
    {
      "assetName": "BAG001561",
      "equipmentNo": "100000823399",
      "equipmentName": "543BAM20001",
      "description": "XM-175 GUARDIAN GEN SET "
    },
    {
      "assetName": "BAG001562",
      "equipmentNo": "100000831936",
      "equipmentName": "543TCP02",
      "description": "COMP, SULLAIR TCP02 2004. 004-140883"
    },
    {
      "assetName": "BAG001563",
      "equipmentNo": "100000832831",
      "equipmentName": "543BAM13011",
      "description": "P&H 4100 SHOVEL #11"
    },
    {
      "assetName": "BAG001564",
      "equipmentNo": "100000834059",
      "equipmentName": "543BAM20006",
      "description": "OBERG FILTER PRESS"
    },
    {
      "assetName": "BAG001565",
      "equipmentNo": "100000835901",
      "equipmentName": "543BAM02020",
      "description": "CAT D10R TRACK DOZER#20"
    },
    {
      "assetName": "BAG001566",
      "equipmentNo": "100000835955",
      "equipmentName": "543BAM06019",
      "description": " CAT 16H, GRADER 19 S/N ATS00380"
    },
    {
      "assetName": "BAG001567",
      "equipmentNo": "100000836630",
      "equipmentName": "543BAM00201",
      "description": "#201 CAT 793D HAUL TRK"
    },
    {
      "assetName": "BAG001568",
      "equipmentNo": "100000838348",
      "equipmentName": "543CS09",
      "description": "2006 CAT SKIDSTEER 226B"
    },
    {
      "assetName": "BAG001569",
      "equipmentNo": "100000840025",
      "equipmentName": "543CS10",
      "description": "2006 CAT SKIDSTEER  226B "
    },
    {
      "assetName": "BAG001570",
      "equipmentNo": "100000841056",
      "equipmentName": "543CMC20",
      "description": "COMP, SULLAIR CMC20 2006 C1600HDAFTQ"
    },
    {
      "assetName": "BAG001571",
      "equipmentNo": "100000841061",
      "equipmentName": "543BAM01019",
      "description": " CAT 777B WATER TRUCK"
    },
    {
      "assetName": "BAG001572",
      "equipmentNo": "100000841933",
      "equipmentName": "543BAM22008",
      "description": "ATLAS COPCO ECM 720  DRILL "
    },
    {
      "assetName": "BAG001573",
      "equipmentNo": "100000844284",
      "equipmentName": "543TSM72",
      "description": "BAVE172 1995 NAVISTAR 1HTSDAAN1TH276578"
    },
    {
      "assetName": "BAG001574",
      "equipmentNo": "100000845835",
      "equipmentName": "543BAM22009",
      "description": "ATLAS COPCO PV271 AC9  2006 "
    },
    {
      "assetName": "BAG001575",
      "equipmentNo": "100000845892",
      "equipmentName": "543BAM32009",
      "description": "GENIE GS-2632 MANLIFT  "
    },
    {
      "assetName": "BAG001576",
      "equipmentNo": "100000845893",
      "equipmentName": "543BAM32010",
      "description": "GENIE MANLIFTGS-2632"
    },
    {
      "assetName": "BAG001577",
      "equipmentNo": "100000845894",
      "equipmentName": "543BAM32011",
      "description": "GENIE GS-2632 MANLIFT "
    },
    {
      "assetName": "BAG001578",
      "equipmentNo": "100000845896",
      "equipmentName": "543BAM32012",
      "description": "GENIE GS-2632 "
    },
    {
      "assetName": "BAG001579",
      "equipmentNo": "100000845980",
      "equipmentName": "543BAM00202",
      "description": "#202 CAT 793D HAUL TRK"
    },
    {
      "assetName": "BAG001580",
      "equipmentNo": "100000845981",
      "equipmentName": "543BAM00203",
      "description": "#203 CAT  793D HAUL TRK "
    },
    {
      "assetName": "BAG001581",
      "equipmentNo": "100000845982",
      "equipmentName": "543BAM00204",
      "description": "#204 CAT  793D HAUL TRK"
    },
    {
      "assetName": "BAG001582",
      "equipmentNo": "100000845985",
      "equipmentName": "543BAM00206",
      "description": "#206 CAT 793D HAUL TRK"
    },
    {
      "assetName": "BAG001583",
      "equipmentNo": "100000845986",
      "equipmentName": "543BAM00207",
      "description": "#207 CAT 793D HAUL TRK"
    },
    {
      "assetName": "BAG001584",
      "equipmentNo": "100000845987",
      "equipmentName": "543BAM00208",
      "description": "#208 CAT  793D HAUL TRK"
    },
    {
      "assetName": "BAG001585",
      "equipmentNo": "100000845988",
      "equipmentName": "543BAM00209",
      "description": "#209 CAT  793D HAUL TRK"
    },
    {
      "assetName": "BAG001586",
      "equipmentNo": "100000845989",
      "equipmentName": "543BAM00210",
      "description": "#210 CAT  793D HAUL TRK"
    },
    {
      "assetName": "BAG001587",
      "equipmentNo": "100000845990",
      "equipmentName": "543BAM00212",
      "description": "#212 CAT  793D HAUL TRK"
    },
    {
      "assetName": "BAG001588",
      "equipmentNo": "100000845991",
      "equipmentName": "543BAM00213",
      "description": "#213 CAT 793D HAUL TRK"
    },
    {
      "assetName": "BAG001589",
      "equipmentNo": "100000845992",
      "equipmentName": "543BAM00214",
      "description": "#214 CAT  793D HAUL TRK"
    },
    {
      "assetName": "BAG001590",
      "equipmentNo": "100000845993",
      "equipmentName": "543BAM00215",
      "description": "#215 CAT 793D HAUL TRK"
    },
    {
      "assetName": "BAG001591",
      "equipmentNo": "100000845995",
      "equipmentName": "543BAM00217",
      "description": "#217 CAT  793D HAUL TRK"
    },
    {
      "assetName": "BAG001592",
      "equipmentNo": "100000845996",
      "equipmentName": "543BAM00218",
      "description": "#218 CAT  793D HAUL TRK"
    },
    {
      "assetName": "BAG001593",
      "equipmentNo": "100000845997",
      "equipmentName": "543BAM00219",
      "description": "#219 CAT  793D HAUL TRK"
    },
    {
      "assetName": "BAG001594",
      "equipmentNo": "100000845998",
      "equipmentName": "543BAM00211",
      "description": "#211 CAT  793D HAUL TRK"
    },
    {
      "assetName": "BAG001595",
      "equipmentNo": "100000846144",
      "equipmentName": "543BAM31324",
      "description": "TREATED WATER TRAILER"
    },
    {
      "assetName": "BAG001596",
      "equipmentNo": "100000846235",
      "equipmentName": "543BACR06",
      "description": "1/2-TON JIB CRANE (MACHINE SHOP #1)"
    },
    {
      "assetName": "BAG001597",
      "equipmentNo": "100000846312",
      "equipmentName": "543BAM00205",
      "description": "#205 CAT  793D HAUL TRK"
    },
    {
      "assetName": "BAG001598",
      "equipmentNo": "100000846313",
      "equipmentName": "543BAM00216",
      "description": "#216 CAT 793D HAUL TRK"
    },
    {
      "assetName": "BAG001599",
      "equipmentNo": "100000846653",
      "equipmentName": "543BAST001",
      "description": "30 TON NATIONAL CRANE"
    },
    {
      "assetName": "BAG001600",
      "equipmentNo": "100000846844",
      "equipmentName": "543BAM02022",
      "description": "D10T TRACK DOZER D10#22"
    },
    {
      "assetName": "BAG001601",
      "equipmentNo": "100000846845",
      "equipmentName": "543BAM02023",
      "description": "D10T TRACK DOZER D10#23"
    },
    {
      "assetName": "BAG001602",
      "equipmentNo": "100000846864",
      "equipmentName": "543BAM06021",
      "description": "CATERPILLAR  16H, GRADER #21"
    },
    {
      "assetName": "BAG001603",
      "equipmentNo": "100000847172",
      "equipmentName": "543CS06",
      "description": "2006 CAT SKIDSTEER 226B "
    },
    {
      "assetName": "BAG001604",
      "equipmentNo": "100000847173",
      "equipmentName": "543CLP07",
      "description": "2006 CAT SKIDSTEER 226B "
    },
    {
      "assetName": "BAG001605",
      "equipmentNo": "100000847734",
      "equipmentName": "543BAM5002",
      "description": "06 STERLING   (GCR OWNED)"
    },
    {
      "assetName": "BAG001606",
      "equipmentNo": "100000847794",
      "equipmentName": "543BAFSW001",
      "description": " TENNANT FLOOR SWEEPER"
    },
    {
      "assetName": "BAG001607",
      "equipmentNo": "100000848145",
      "equipmentName": "543D1102",
      "description": "D11R TRACK DOZER D02"
    },
    {
      "assetName": "BAG001608",
      "equipmentNo": "100000848400",
      "equipmentName": "543BACAR001",
      "description": "PETERBUILT KNUCKLE BOOM"
    },
    {
      "assetName": "BAG001609",
      "equipmentNo": "100000848405",
      "equipmentName": "543BAM00220",
      "description": "#220 CAT  793D HAUL TRK"
    },
    {
      "assetName": "BAG001610",
      "equipmentNo": "100000850704",
      "equipmentName": "543BAM4010",
      "description": "CAT 834H RUBBER TIRE "
    },
    {
      "assetName": "BAG001611",
      "equipmentNo": "100000850968",
      "equipmentName": "543MOPWTR001",
      "description": " 2008 PTRBLT WATER TRUCK"
    },
    {
      "assetName": "BAG001612",
      "equipmentNo": "100000851497",
      "equipmentName": "543BARE15029",
      "description": "815F COMPACTOR"
    },
    {
      "assetName": "BAG001613",
      "equipmentNo": "100000851723",
      "equipmentName": "543BAM20784",
      "description": "CAT 777D ROCK TRK #308"
    },
    {
      "assetName": "BAG001614",
      "equipmentNo": "100000851725",
      "equipmentName": "543BAM20785",
      "description": "CAT 777D ROCK TRK #314"
    },
    {
      "assetName": "BAG001615",
      "equipmentNo": "100000852485",
      "equipmentName": "543BAM02024",
      "description": "D10T TRACK DOZER D10#24"
    },
    {
      "assetName": "BAG001616",
      "equipmentNo": "100000852635",
      "equipmentName": "543BAM852635",
      "description": "3-TON JIB CRANE (CRAWLER BAY)"
    },
    {
      "assetName": "BAG001617",
      "equipmentNo": "100000852847",
      "equipmentName": "543BAM22010",
      "description": "ATLAS COPCO PV271 AC10  2007 "
    },
    {
      "assetName": "BAG001618",
      "equipmentNo": "100000854498",
      "equipmentName": "543MH01",
      "description": "HOIST, MOHAWK MH01 2007 HOIST A7C106"
    },
    {
      "assetName": "BAG001619",
      "equipmentNo": "100000854504",
      "equipmentName": "543MH02",
      "description": "HOIST, MOHAWK MH02 2007 HOIST A7C107"
    },
    {
      "assetName": "BAG001620",
      "equipmentNo": "100000854507",
      "equipmentName": "543MH03",
      "description": "HOIST, MOHAWK MH03 2007 HOIST A7C108"
    },
    {
      "assetName": "BAG001621",
      "equipmentNo": "100000863997",
      "equipmentName": "543SP15",
      "description": "2007 CAT SKIDSTEER  226B"
    },
    {
      "assetName": "BAG001622",
      "equipmentNo": "100000864942",
      "equipmentName": "543BARE15030",
      "description": "683-2 VIB COMPACTOR  ASG00340"
    },
    {
      "assetName": "BAG001623",
      "equipmentNo": "100000865681",
      "equipmentName": "543MH04",
      "description": "HOIST, MOHAWK MH04 2007 HOIST A7C111"
    },
    {
      "assetName": "BAG001624",
      "equipmentNo": "100000866128",
      "equipmentName": "543CLPF20",
      "description": "FORKLIFT, CAT CLPF20 2008 AT14E01511"
    },
    {
      "assetName": "BAG001625",
      "equipmentNo": "100000866277",
      "equipmentName": "543BAST002",
      "description": "KNUCKLE BOOM "
    },
    {
      "assetName": "BAG001626",
      "equipmentNo": "100000866563",
      "equipmentName": "543BAM02025",
      "description": "D10T TRACK DOZER D10#25"
    },
    {
      "assetName": "BAG001627",
      "equipmentNo": "100000866938",
      "equipmentName": "543TSW02",
      "description": "SWEEPER, TSW02 2006 1FVACXCS67HX58300"
    },
    {
      "assetName": "BAG001628",
      "equipmentNo": "100000867741",
      "equipmentName": "543TWNLDR12",
      "description": "2008 CAT SKIDSTEER  226B"
    },
    {
      "assetName": "BAG001629",
      "equipmentNo": "100000870318",
      "equipmentName": "543WHF04",
      "description": " CAT  FORK LIFT "
    },
    {
      "assetName": "BAG001630",
      "equipmentNo": "100000870974",
      "equipmentName": "543LDR1",
      "description": "BAM05010 CAT 994F LOADER #1"
    },
    {
      "assetName": "BAG001631",
      "equipmentNo": "100000871880",
      "equipmentName": "543BAM4001",
      "description": "CAT 834H RUBBER TIRE "
    },
    {
      "assetName": "BAG001632",
      "equipmentNo": "100000872282",
      "equipmentName": "543BAM4006",
      "description": "CAT 824H RUBBER TIRE"
    },
    {
      "assetName": "BAG001633",
      "equipmentNo": "100000872284",
      "equipmentName": "543BAM4007CR",
      "description": "CAT 824H CABLE REEL"
    },
    {
      "assetName": "BAG001634",
      "equipmentNo": "100000883777",
      "equipmentName": "543BAM4003",
      "description": "CAT 834H RUBBER TIRE "
    },
    {
      "assetName": "BAG001635",
      "equipmentNo": "100000887142",
      "equipmentName": "543BAM08013",
      "description": "CAT 345D EXCAVATOR S/N EEH00381"
    },
    {
      "assetName": "BAG001636",
      "equipmentNo": "100000887227",
      "equipmentName": "543BAM002",
      "description": "UNIVERSAL IMPACT HAMMER"
    },
    {
      "assetName": "BAG001637",
      "equipmentNo": "100000889890",
      "equipmentName": "543BAMAPU2",
      "description": "CAT AUX POWER UNIT#2"
    },
    {
      "assetName": "BAG001638",
      "equipmentNo": "100000895687",
      "equipmentName": "543BATRLR1",
      "description": "TRAIL KING TRAILER -TK70SA-482"
    },
    {
      "assetName": "BAG001639",
      "equipmentNo": "100000900366",
      "equipmentName": "543BAM18015",
      "description": "2005 CAT TELEHANDLER"
    },
    {
      "assetName": "BAG001640",
      "equipmentNo": "100000902096",
      "equipmentName": "543BAM20777",
      "description": "CAT 777D  ROCK TRK #301"
    },
    {
      "assetName": "BAG001641",
      "equipmentNo": "100000903130",
      "equipmentName": "543PWR03",
      "description": "2005 BUCKET "
    },
    {
      "assetName": "BAG001642",
      "equipmentNo": "100000903131",
      "equipmentName": "543POWER002",
      "description": "04 AUGER TRK 002  "
    },
    {
      "assetName": "BAG001643",
      "equipmentNo": "100000905818",
      "equipmentName": "543ADMVGC001",
      "description": "2010 CAT 414E SKIP LOADER  "
    },
    {
      "assetName": "BAG001644",
      "equipmentNo": "100000905828",
      "equipmentName": "543CTH01",
      "description": "TELEHANDLER, CAT CTH01 2010 TBL01540"
    },
    {
      "assetName": "BAG001645",
      "equipmentNo": "100000906072",
      "equipmentName": "543MM06",
      "description": "2009 F-750  3FRWF75D69V135231"
    },
    {
      "assetName": "BAG001646",
      "equipmentNo": "100000906073",
      "equipmentName": "543BAM08015",
      "description": " CAT 365CL EXCAVATOR MCS00506"
    },
    {
      "assetName": "BAG001647",
      "equipmentNo": "100000906222",
      "equipmentName": "543CLPL02",
      "description": "MANLIFT, GENI CLPL02 2010 Z6010-10004"
    },
    {
      "assetName": "BAG001648",
      "equipmentNo": "100000906812",
      "equipmentName": "543CS01",
      "description": "2010 CAT SKIDSTEER  226B"
    },
    {
      "assetName": "BAG001649",
      "equipmentNo": "100000906813",
      "equipmentName": "543TWNLDR11",
      "description": "2010 CAT SKIDSTEER  226B"
    },
    {
      "assetName": "BAG001650",
      "equipmentNo": "100000907518",
      "equipmentName": "543SXTH01",
      "description": "TELEHANDLER, CAT SXTH01 2010 TBM01261"
    },
    {
      "assetName": "BAG001651",
      "equipmentNo": "100000907897",
      "equipmentName": "543TSBH001",
      "description": " 2010  CAT 430E  BACKHOE"
    },
    {
      "assetName": "BAG001652",
      "equipmentNo": "100000907977",
      "equipmentName": "543MMNTBOOM1",
      "description": "2010 BSKT TK"
    },
    {
      "assetName": "BAG001653",
      "equipmentNo": "100000908417",
      "equipmentName": "543SXBH001",
      "description": " 2010 CAT 420E BACKHOE "
    },
    {
      "assetName": "BAG001654",
      "equipmentNo": "100000908423",
      "equipmentName": "543DBBH001",
      "description": " 2010 CAT 420E BACKHOE"
    },
    {
      "assetName": "BAG001655",
      "equipmentNo": "100000908599",
      "equipmentName": "543TSBOOM001",
      "description": "2010 NATIONAL"
    },
    {
      "assetName": "BAG001656",
      "equipmentNo": "100000908628",
      "equipmentName": "543TIRELIFT02",
      "description": "2010 H360HD HYSTER "
    },
    {
      "assetName": "BAG001657",
      "equipmentNo": "100000908629",
      "equipmentName": "543MOPTOW001",
      "description": "WHT MAC2010 MACK "
    },
    {
      "assetName": "BAG001658",
      "equipmentNo": "100000909166",
      "equipmentName": "543TCP01",
      "description": "COMP, INGERSOLL TCP01 2011 417401UHUD75"
    },
    {
      "assetName": "BAG001659",
      "equipmentNo": "100000910207",
      "equipmentName": "543SXTH02",
      "description": "TELEHANDLER, CAT SXTH02 2011 TBN00785"
    },
    {
      "assetName": "BAG001660",
      "equipmentNo": "100000950052",
      "equipmentName": "543BALDR017",
      "description": " CAT 924H LOADER "
    },
    {
      "assetName": "BAG001661",
      "equipmentNo": "100000950053",
      "equipmentName": "543LDR18",
      "description": " CAT 924F LOADER "
    },
    {
      "assetName": "BAG001662",
      "equipmentNo": "100000950079",
      "equipmentName": "543TST04",
      "description": "TRAILER, TST04 2005 4RACS101X6K010390"
    },
    {
      "assetName": "BAG001663",
      "equipmentNo": "100000950276",
      "equipmentName": "543BAM13010",
      "description": "P&H 4100 SHOVEL #10"
    },
    {
      "assetName": "BAG001664",
      "equipmentNo": "100000951267",
      "equipmentName": "543TL621G",
      "description": "621G WATER PULL"
    },
    {
      "assetName": "BAG001665",
      "equipmentNo": "100000951290",
      "equipmentName": "543BAM00133",
      "description": "#133 CAT 793B HAUL TRK"
    },
    {
      "assetName": "BAG001666",
      "equipmentNo": "100000951298",
      "equipmentName": "543CS02",
      "description": "2011 CAT SKIDSTEER  226B"
    },
    {
      "assetName": "BAG001667",
      "equipmentNo": "100000951522",
      "equipmentName": "543CS03",
      "description": "2011 CAT SKIDSTEER 226B"
    },
    {
      "assetName": "BAG001668",
      "equipmentNo": "100000952307",
      "equipmentName": "543BAFSW003",
      "description": "TENNANT SWEEPER "
    },
    {
      "assetName": "BAG001669",
      "equipmentNo": "100000952384",
      "equipmentName": "543BAM00134",
      "description": "#134 CAT 793B HAUL TRK "
    },
    {
      "assetName": "BAG001670",
      "equipmentNo": "100000952399",
      "equipmentName": "543BAM20778",
      "description": "CAT 777F ROCK TRK #302"
    },
    {
      "assetName": "BAG001671",
      "equipmentNo": "100000953009",
      "equipmentName": "543BAM00135",
      "description": "#135 CAT 793B HAUL TRK"
    },
    {
      "assetName": "BAG001672",
      "equipmentNo": "100000953205",
      "equipmentName": "543BAM4008",
      "description": "CAT 824H RUBBER TIRE"
    },
    {
      "assetName": "BAG001673",
      "equipmentNo": "100000953207",
      "equipmentName": "543TSBH002",
      "description": "TSBH002 CAT 430E"
    },
    {
      "assetName": "BAG001674",
      "equipmentNo": "100000953316",
      "equipmentName": "543TLBH013",
      "description": "CAT 420E S/N DJL02461"
    },
    {
      "assetName": "BAG001675",
      "equipmentNo": "100000953388",
      "equipmentName": "543BAM06024",
      "description": "CATERPILLAR  16M, GRADER #24"
    },
    {
      "assetName": "BAG001676",
      "equipmentNo": "100000953398",
      "equipmentName": "543BAM01023",
      "description": " CAT 777F WATER TRUCK"
    },
    {
      "assetName": "BAG001677",
      "equipmentNo": "100000953401",
      "equipmentName": "543BAM01024",
      "description": "CAT 777F WATER TRUCK"
    },
    {
      "assetName": "BAG001678",
      "equipmentNo": "100000953460",
      "equipmentName": "543ELBH009",
      "description": "CAT 420E S/N DJL02463"
    },
    {
      "assetName": "BAG001679",
      "equipmentNo": "100000953467",
      "equipmentName": "543MIBH005",
      "description": "CAT 420E S/N DJL02465"
    },
    {
      "assetName": "BAG001680",
      "equipmentNo": "100000953584",
      "equipmentName": "543BAM32013",
      "description": "GENIE Z60/34 ARTICULATED BOOM LIFT"
    },
    {
      "assetName": "BAG001681",
      "equipmentNo": "100000954969",
      "equipmentName": "543MMNTBOOM3",
      "description": "INTERNATIONAL WORK STAR BOOM"
    },
    {
      "assetName": "BAG001682",
      "equipmentNo": "100000955744",
      "equipmentName": "543BAM22012",
      "description": "ATLAS COPCO PV271 AC12 2012  "
    },
    {
      "assetName": "BAG001683",
      "equipmentNo": "100000956007",
      "equipmentName": "543BASMP-4",
      "description": "PUMP PIT DE-WATERING 4\""
    },
    {
      "assetName": "BAG001684",
      "equipmentNo": "100000956008",
      "equipmentName": "543BASMP-5",
      "description": "PUMP PIT DE-WATERING 4\""
    },
    {
      "assetName": "BAG001685",
      "equipmentNo": "100000956009",
      "equipmentName": "543BASMP-2",
      "description": "PUMP PIT DE-WATERING 4\""
    },
    {
      "assetName": "BAG001686",
      "equipmentNo": "100000956027",
      "equipmentName": "543MASMP-3",
      "description": "PUMP PIT DE-WATERING 4\""
    },
    {
      "assetName": "BAG001687",
      "equipmentNo": "100000956028",
      "equipmentName": "543BASMP-6",
      "description": "PUMP PIT DE-WATERING 4\""
    },
    {
      "assetName": "BAG001688",
      "equipmentNo": "100000956029",
      "equipmentName": "543BASMP-8",
      "description": "PUMP PIT DE-WATERING 6\""
    },
    {
      "assetName": "BAG001689",
      "equipmentNo": "100000956041",
      "equipmentName": "543TLCATPUMP2",
      "description": "TAILINGS PUMP #2"
    },
    {
      "assetName": "BAG001690",
      "equipmentNo": "100000956148",
      "equipmentName": "543TLFUELTANK #356",
      "description": "TAILINGS BULK FUEL TANKS #356"
    },
    {
      "assetName": "BAG001691",
      "equipmentNo": "100000956170",
      "equipmentName": "543ENB19",
      "description": "BALLER, 2008 ENB19  M60 STD-3571"
    },
    {
      "assetName": "BAG001692",
      "equipmentNo": "100000956639",
      "equipmentName": "543BAM08016",
      "description": "336E L CAT EXCAVATOR"
    },
    {
      "assetName": "BAG001693",
      "equipmentNo": "100000956704",
      "equipmentName": "543LDR5",
      "description": "980K CATERPILLAR LOADER"
    },
    {
      "assetName": "BAG001694",
      "equipmentNo": "100000957088",
      "equipmentName": "543BAM5008",
      "description": "PETERBILT LUBE TRUCK"
    },
    {
      "assetName": "BAG001695",
      "equipmentNo": "100000957089",
      "equipmentName": "543MH05",
      "description": "HOIST, MOHAWK MH05 2011 50342169-0012"
    },
    {
      "assetName": "BAG001696",
      "equipmentNo": "100000957520",
      "equipmentName": "543TL613C",
      "description": "613C WATER PULL"
    },
    {
      "assetName": "BAG001697",
      "equipmentNo": "100000958342",
      "equipmentName": "543BAM18016",
      "description": "CAT TELEHANDLER "
    },
    {
      "assetName": "BAG001698",
      "equipmentNo": "100000959226",
      "equipmentName": "543RANT01",
      "description": "TRAILER, RANT01 2012 FLEMING STOCK HT001"
    },
    {
      "assetName": "BAG001699",
      "equipmentNo": "100000963316",
      "equipmentName": "543TOWTRLR",
      "description": "TRAILER(TOWHAUL) FOR 789 #39"
    },
    {
      "assetName": "BAG001700",
      "equipmentNo": "100000986713",
      "equipmentName": "543TLFUELTANK #353",
      "description": "TAILINGS BULK FUEL TANKS #353"
    },
    {
      "assetName": "BAG001701",
      "equipmentNo": "100000988581",
      "equipmentName": "543LDR6",
      "description": "988H CAT  LOADER "
    },
    {
      "assetName": "BAG001702",
      "equipmentNo": "100001023628",
      "equipmentName": "543BAM02026",
      "description": "D10T TRACK DOZER D10#26"
    },
    {
      "assetName": "BAG001703",
      "equipmentNo": "100001023637",
      "equipmentName": "543BAM02027",
      "description": "D10T TRACK DOZER D10#27"
    },
    {
      "assetName": "BAG001704",
      "equipmentNo": "100001025128",
      "equipmentName": "543BAFL031",
      "description": "BAFL031 YR? CROWN ELECTRIC 6A136814"
    },
    {
      "assetName": "BAG001705",
      "equipmentNo": "100001046014",
      "equipmentName": "543BAM22013",
      "description": "ATLAS COPCO PV271 AC13 2015  "
    },
    {
      "assetName": "BAG001706",
      "equipmentNo": "100001051522",
      "equipmentName": "543BASMP-7",
      "description": "PUMP PIT DE-WATERING 4\""
    },
    {
      "assetName": "BAG001707",
      "equipmentNo": "100001052172",
      "equipmentName": "543BAST005",
      "description": "KNUCKLE BOOM "
    },
    {
      "assetName": "BAG001708",
      "equipmentNo": "100001056132",
      "equipmentName": "543BAM06023",
      "description": "CATERPILLAR  140M3, GRADER #23"
    },
    {
      "assetName": "BAG001709",
      "equipmentNo": "100001056147",
      "equipmentName": "543LDR7",
      "description": "988K CAT  LOADER "
    },
    {
      "assetName": "BAG001710",
      "equipmentNo": "100001056149",
      "equipmentName": "543BAM20780",
      "description": "CAT 745C ARTICULATING TRK #304"
    },
    {
      "assetName": "BAG001711",
      "equipmentNo": "100001056151",
      "equipmentName": "543BAM20779",
      "description": "CAT 777F ROCK TRK #303"
    },
    {
      "assetName": "BAG001712",
      "equipmentNo": "100001056152",
      "equipmentName": "543D9T008",
      "description": "CAT D9T008 TAILINGS"
    },
    {
      "assetName": "BAG001713",
      "equipmentNo": "100001056154",
      "equipmentName": "543BARE15031",
      "description": "CS78B VIB COMPACTOR  "
    },
    {
      "assetName": "BAG001714",
      "equipmentNo": "100001056155",
      "equipmentName": "543BAM08017",
      "description": "349FL CAT EXCAVATOR"
    },
    {
      "assetName": "BAG001715",
      "equipmentNo": "100001056945",
      "equipmentName": "543LDR22",
      "description": "CAT 966M LOADER"
    },
    {
      "assetName": "BAG001716",
      "equipmentNo": "100001057576",
      "equipmentName": "543BLADE834H1",
      "description": "CAT 834H RUBBER TIRE"
    },
    {
      "assetName": "BAG001717",
      "equipmentNo": "100001059111",
      "equipmentName": "543CS04",
      "description": "2015 CAT SKIDSTEER  226B3"
    },
    {
      "assetName": "BAG001718",
      "equipmentNo": "100001059785",
      "equipmentName": "543AMB01",
      "description": "AMB01 2017 NORTH STAR AMBULANCE"
    },
    {
      "assetName": "BAG001719",
      "equipmentNo": "100001060267",
      "equipmentName": "543CS05",
      "description": "2015 CAT SKIDSTEER  226B3"
    },
    {
      "assetName": "BAG001720",
      "equipmentNo": "100001066634",
      "equipmentName": "543BAM5009",
      "description": "MACK LUBE TRUCK"
    },
    {
      "assetName": "BAG001721",
      "equipmentNo": "100001067007",
      "equipmentName": "543EXC18",
      "description": "CAT 374FL EXCAVATOR"
    },
    {
      "assetName": "BAG001722",
      "equipmentNo": "100001067830",
      "equipmentName": "543BAM5010",
      "description": "MACK LUBE TRUCK"
    },
    {
      "assetName": "BAG001723",
      "equipmentNo": "100001071687",
      "equipmentName": "543MS13",
      "description": "2018 CAT SKIDSTEER  262D"
    },
    {
      "assetName": "BAG001724",
      "equipmentNo": "100001072988",
      "equipmentName": "543D1103",
      "description": "D11T TRACK DOZER D03"
    },
    {
      "assetName": "BAG001725",
      "equipmentNo": "100001072992",
      "equipmentName": "543D1104",
      "description": "D11T TRACK DOZER D04"
    },
    {
      "assetName": "BAG001726",
      "equipmentNo": "100001074036",
      "equipmentName": "543BAM4011",
      "description": "CAT 824K RUBBER TIRE "
    },
    {
      "assetName": "BAG001727",
      "equipmentNo": "100001075387",
      "equipmentName": "543BARE15032",
      "description": "CS78B VIB COMPACTOR  "
    },
    {
      "assetName": "BAG001728",
      "equipmentNo": "100001075400",
      "equipmentName": "543BARE15033",
      "description": "CS78B VIB COMPACTOR  "
    },
    {
      "assetName": "BAG001729",
      "equipmentNo": "100001076691",
      "equipmentName": "543SLINGER001",
      "description": "MACK GR86F SLINGER TRUCK"
    },
    {
      "assetName": "BAG001730",
      "equipmentNo": "100001076955",
      "equipmentName": "543BAM20781",
      "description": "CAT 777F ROCK TRK #305"
    },
    {
      "assetName": "BAG001731",
      "equipmentNo": "100001076956",
      "equipmentName": "543BAM20782",
      "description": "CAT 777F ROCK TRK #306"
    },
    {
      "assetName": "BAG001732",
      "equipmentNo": "100001078168",
      "equipmentName": "543LDR3",
      "description": "BAM05012 992K LOADER #3"
    },
    {
      "assetName": "BAG001733",
      "equipmentNo": "100001078957",
      "equipmentName": "543WH2SW04",
      "description": "SWEEPER, WH2SW04 2019 SWEEPER S20-6619"
    },
    {
      "assetName": "BAG001734",
      "equipmentNo": "100001080248",
      "equipmentName": "543BAM06025",
      "description": "CATERPILLAR  16M3, GRADER #25"
    },
    {
      "assetName": "BAG001735",
      "equipmentNo": "100001081359",
      "equipmentName": "543LDR19",
      "description": "CAT 930M LOADER"
    },
    {
      "assetName": "BAG001736",
      "equipmentNo": "100001081738",
      "equipmentName": "543POWER008",
      "description": "2019 BUCKET TRUCK"
    },
    {
      "assetName": "BAG001737",
      "equipmentNo": "100001081779",
      "equipmentName": "543D10T28",
      "description": "D10T TRACK DOZER D10#28"
    },
    {
      "assetName": "BAG001738",
      "equipmentNo": "100001081866",
      "equipmentName": "543LDR20",
      "description": "CAT 926M LOADER"
    },
    {
      "assetName": "BAG001739",
      "equipmentNo": "100001082055",
      "equipmentName": "543BH14",
      "description": "CAT 420F2 4EC BACKHOE "
    },
    {
      "assetName": "BAG001740",
      "equipmentNo": "100001084700",
      "equipmentName": "543CTH17",
      "description": "TELEHANDLER, CAT CTH17 2019 0ML701740"
    },
    {
      "assetName": "BAG001741",
      "equipmentNo": "100001084789",
      "equipmentName": "543BAM20783",
      "description": "CAT 777F ROCK TRK #307"
    },
    {
      "assetName": "BAG001742",
      "equipmentNo": "100001088750",
      "equipmentName": "543BAM00150",
      "description": "#150 CAT 793C HAUL TRK"
    },
    {
      "assetName": "BAG001743",
      "equipmentNo": "100001089480",
      "equipmentName": "543BAM00151",
      "description": "#151 CAT 793C HAUL TRK"
    },
    {
      "assetName": "BAG001744",
      "equipmentNo": "100001089481",
      "equipmentName": "543BAM00152",
      "description": "#152 CAT 793C HAUL TRK"
    },
    {
      "assetName": "BAG001745",
      "equipmentNo": "100001089675",
      "equipmentName": "543CR08",
      "description": "CAT 980M CABLE REEL"
    },
    {
      "assetName": "BAG001746",
      "equipmentNo": "100001090041",
      "equipmentName": "543BAM22014",
      "description": "EPIROC PV271 AC14 2019"
    },
    {
      "assetName": "BAG001747",
      "equipmentNo": "100001090286",
      "equipmentName": "543EXC19",
      "description": "CAT 374FL EXCAVATOR"
    },
    {
      "assetName": "BAG001748",
      "equipmentNo": "100001092070",
      "equipmentName": "543TS15",
      "description": "TRUCK, F250 TS15 2 2015"
    },
    {
      "assetName": "BAG001749",
      "equipmentNo": "100001092313",
      "equipmentName": "543BAM4012",
      "description": "CAT 824K RUBBER TIRE "
    },
    {
      "assetName": "BAG001750",
      "equipmentNo": "100001093353",
      "equipmentName": "543BAM00153",
      "description": "#153 CAT 793C HAUL TRK"
    },
    {
      "assetName": "BAG001751",
      "equipmentNo": "100001093354",
      "equipmentName": "543BAM00154",
      "description": "#154 CAT 793C HAUL TRK"
    },
    {
      "assetName": "BAG001752",
      "equipmentNo": "100001093355",
      "equipmentName": "543BAM00155",
      "description": "#155 CAT 793C HAUL TRK"
    },
    {
      "assetName": "BAG001753",
      "equipmentNo": "100001094017",
      "equipmentName": "543TIRELIFT03",
      "description": "HYSTER H450HD"
    },
    {
      "assetName": "BAG001754",
      "equipmentNo": "100001106010",
      "equipmentName": "543EXC20",
      "description": "CAT 352FL EXCAVATOR"
    },
    {
      "assetName": "BAG001755",
      "equipmentNo": "100001106854",
      "equipmentName": "543D9T010",
      "description": "CAT D9T010 TAILINGS"
    },
    {
      "assetName": "BAG001756",
      "equipmentNo": "100001107846",
      "equipmentName": "543LDR8",
      "description": "CAT 988K LOADER"
    },
    {
      "assetName": "BAG001757",
      "equipmentNo": "100001108076",
      "equipmentName": "543MMFS01",
      "description": "KARCHER B300RI DIESEL 0300-4670"
    },
    {
      "assetName": "BAG001758",
      "equipmentNo": "100001108946",
      "equipmentName": "543CS16",
      "description": "2021 CAT SKIDSTEER  239D3"
    },
    {
      "assetName": "BAG001759",
      "equipmentNo": "    100000950079 ",
      "equipmentName": "",
      "description": "TRAILER, INTER  2005 4RACS101X6K010390 "
    },
    {
      "assetName": "BAG001760",
      "equipmentNo": "100001111335",
      "equipmentName": "543T24",
      "description": "TRUCK, F150 T24 2021 1FTFW1E58MKE56616"
    },
    {
      "assetName": "BAG001761",
      "equipmentNo": "100001111918",
      "equipmentName": "543SA19",
      "description": "TRUCK, F150 SA19 2021 1FTFW1E56MKE56615"
    },
    {
      "assetName": "BAG001762",
      "equipmentNo": "100001111358",
      "equipmentName": "543AD30",
      "description": "SUV EXPLORER AD30 2021 1FMSK8BH7MGC06817"
    },
    {
      "assetName": "BAG001763",
      "equipmentNo": "100001111359",
      "equipmentName": "543IS11",
      "description": "SUV EXPLORER IS11 2021 1FMSK8BH6MGC06808"
    },
    {
      "assetName": "BAG001764",
      "equipmentNo": "100001111333",
      "equipmentName": "543SA18",
      "description": "TRUCK, F150 SA18 2021 1FTFW1E52MKE56613"
    },
    {
      "assetName": "BAG001765",
      "equipmentNo": "100001111334",
      "equipmentName": "543MM25",
      "description": "TRUCK, F250 MM25 2021 1FT7W2BN1NEC17245"
    },
    {
      "assetName": "BAG001766",
      "equipmentNo": "100001110924",
      "equipmentName": "543MO53",
      "description": "TRUCK, F250 MO53 2021 1FT7W2BNXEC17244"
    },
    {
      "assetName": "BAG001767",
      "equipmentNo": "100001110926",
      "equipmentName": "543MO54",
      "description": "TRUCK, F250 MO54 2021 1FT7W2BN2NEC17240"
    },
    {
      "assetName": "BAG001768",
      "equipmentNo": "100001110925",
      "equipmentName": "543MO55",
      "description": "TRUCK, F250 MO55 2021 1FT7W2BN4NEC17241"
    },
    {
      "assetName": "BAG001769",
      "equipmentNo": "100001111332",
      "equipmentName": "543MO56",
      "description": "TRUCK, F250 MO56 2021 1FT7W2BN3NEC17246"
    },
    {
      "assetName": "BAG001770",
      "equipmentNo": "PRIMARY CRUSHER",
      "equipmentName": "",
      "description": "PI Vision for Primary Crusher"
    },
    {
      "assetName": "BAG001771",
      "equipmentNo": "CLP Control Room",
      "equipmentName": "",
      "description": "CLP Control Room"
    },
    {
      "assetName": "BAG001772",
      "equipmentNo": "CLP-Dark Side",
      "equipmentName": "",
      "description": "CLP-Dark Side"
    },
    {
      "assetName": "BAG001773",
      "equipmentNo": "CLP-White Side",
      "equipmentName": "",
      "description": "CLP-White Side"
    },
    {
      "assetName": "BAG001774",
      "equipmentNo": "CLP-Electrical Room",
      "equipmentName": "",
      "description": "CLP-Electrical Room"
    },
    {
      "assetName": "BAG001775",
      "equipmentNo": "CLP-Lab",
      "equipmentName": "",
      "description": "CLP-Lab"
    },
    {
      "assetName": "BAG001776",
      "equipmentNo": "CLP-Maintenance 1",
      "equipmentName": "",
      "description": "CLP-Maintenance 1"
    },
    {
      "assetName": "BAG001777",
      "equipmentNo": "CLP-Maintenance 2",
      "equipmentName": "",
      "description": "CLP-Maintenance 2"
    },
    {
      "assetName": "BAG001778",
      "equipmentNo": "CLP-Caldera Deck",
      "equipmentName": "",
      "description": "CLP-Caldera Deck"
    },
    {
      "assetName": "BAG001779",
      "equipmentNo": "CLP-Shipping/Receiving",
      "equipmentName": "",
      "description": "CLP-Shipping/Receiving"
    },
    {
      "assetName": "BAG001780",
      "equipmentNo": "100001047756",
      "equipmentName": "543AD27",
      "description": "TRUCK, F150 AD27 2015 1FTFX1EFXFKD98825"
    },
    {
      "assetName": "BAG001781",
      "equipmentNo": "Chelsey Bocskay Training History",
      "equipmentName": "",
      "description": "Chelsey Bocskay's Training History"
    },
    {
      "assetName": "BAG001782",
      "equipmentNo": "9999999991",
      "equipmentName": "",
      "description": "Testing single template widget"
    },
    {
      "assetName": "BAG001788",
      "equipmentNo": "777777",
      "equipmentName": "",
      "description": "test 2"
    },
    {
      "assetName": "BAG001790",
      "equipmentNo": "4456677",
      "equipmentName": "",
      "description": "This is testing of bulk 1"
    },
    {
      "assetName": "BAG001795",
      "equipmentNo": "9999999993",
      "equipmentName": "",
      "description": "abcddd"
    },
    {
      "assetName": "BAG001796",
      "equipmentNo": "33445555",
      "equipmentName": "",
      "description": "testing adit"
    },
    {
      "assetName": "BAG001797",
      "equipmentNo": "11111",
      "equipmentName": "",
      "description": "testing of bulk 1"
    },
    {
      "assetName": "BAG001798",
      "equipmentNo": "22222",
      "equipmentName": "",
      "description": "testing of bulk 2"
    },
    {
      "assetName": "BAG001799",
      "equipmentNo": "100000841732",
      "equipmentName": "543BAM05004",
      "description": "BAM05004 CAT 980H LOADER  S/N JMS00840"
    },
    {
      "assetName": "BAG001800",
      "equipmentNo": "123",
      "equipmentName": "",
      "description": "Test Input Asset"
    },
    {
      "assetName": "BAG001801",
      "equipmentNo": "100000801136",
      "equipmentName": "543BAM13023",
      "description": "P&H 2800XPA SHOVEL #23 55264"
    },
    {
      "assetName": "BAG001802",
      "equipmentNo": "123",
      "equipmentName": "",
      "description": "Test Input Asset"
    },
    {
      "assetName": "BAG001803",
      "equipmentNo": "123451",
      "equipmentName": "",
      "description": "Test"
    },
    {
      "assetName": "BAG001804",
      "equipmentNo": "1234512",
      "equipmentName": "",
      "description": "Test"
    },
    {
      "assetName": "BAG001805",
      "equipmentNo": "1234512",
      "equipmentName": "",
      "description": "Test"
    },
    {
      "assetName": "BAG001806",
      "equipmentNo": "12345123",
      "equipmentName": "",
      "description": "Test"
    },
    {
      "assetName": "BAG001807",
      "equipmentNo": "123451234",
      "equipmentName": "",
      "description": "Test"
    },
    {
      "assetName": "BAG001808",
      "equipmentNo": "1114041913",
      "equipmentName": "",
      "description": "testing of bulk 1"
    },
    {
      "assetName": "BAG001809",
      "equipmentNo": "1114041913",
      "equipmentName": "",
      "description": "testing of bulk 2"
    },
    {
      "assetName": "BAG001810",
      "equipmentNo": "100000006143",
      "equipmentName": "11112281",
      "description": "testing of bulk 1"
    },
    {
      "assetName": "BAG001811",
      "equipmentNo": "100000006143",
      "equipmentName": "11112281",
      "description": "testing of bulk 14"
    },
    {
      "assetName": "BAG001812",
      "equipmentNo": "100000006143",
      "equipmentName": "11112281",
      "description": "testing of bulk 15"
    },
    {
      "assetName": "BAG001813",
      "equipmentNo": "1E+11",
      "equipmentName": "",
      "description": "testing of bulk 16"
    },
    {
      "assetName": "BAG001814",
      "equipmentNo": "1E+11",
      "equipmentName": "",
      "description": "testing of bulk 17"
    },
    {
      "assetName": "BAG001815",
      "equipmentNo": "1E+11",
      "equipmentName": "",
      "description": "testing of bulk 18"
    },
    {
      "assetName": "BAG001816",
      "equipmentNo": "1",
      "equipmentName": "",
      "description": "testing of bulk 19"
    },
    {
      "assetName": "BAG001817",
      "equipmentNo": "1",
      "equipmentName": "",
      "description": "testing of bulk 20"
    },
    {
      "assetName": "BAG001818",
      "equipmentNo": "1",
      "equipmentName": "",
      "description": "testing of bulk 21"
    },
    {
      "assetName": "BAG001819",
      "equipmentNo": "1",
      "equipmentName": "",
      "description": "testing of bulk 221234567897"
    },
    {
      "assetName": "BAG001820",
      "equipmentNo": "1",
      "equipmentName": "",
      "description": "testing of bulk 2345"
    },
    {
      "assetName": "BAG001821",
      "equipmentNo": "1",
      "equipmentName": "",
      "description": "testing of bulk 24"
    },
    {
      "assetName": "BAG001822",
      "equipmentNo": "1",
      "equipmentName": "",
      "description": "testing of bulk 25"
    },
    {
      "assetName": "BAG001823",
      "equipmentNo": "1",
      "equipmentName": "",
      "description": "testing of bulk 26"
    },
    {
      "assetName": "BAG001824",
      "equipmentNo": "1",
      "equipmentName": "",
      "description": "testing of bulk 27"
    },
    {
      "assetName": "BAG001825",
      "equipmentNo": "100000006143",
      "equipmentName": "11112281",
      "description": "300 Hp. Spendrup Fan 8100 4XC STORAGE"
    },
    {
      "assetName": "BAG001826",
      "equipmentNo": "100000006143",
      "equipmentName": "11112281",
      "description": "300 Hp. Spendrup Fan 8100 4XC STORAGE"
    },
    {
      "assetName": "BAG001827",
      "equipmentNo": "100000006143",
      "equipmentName": "11112281",
      "description": "300 Hp. Spendrup Fan 8100 4XC STORAGE"
    },
    {
      "assetName": "BAG001828",
      "equipmentNo": "100000006143",
      "equipmentName": "11112281",
      "description": "300 Hp. Spendrup Fan 8100 4XC STORAGE"
    },
    {
      "assetName": "BAG001829",
      "equipmentNo": "100000006143",
      "equipmentName": "11112281",
      "description": "300 Hp. Spendrup Fan 8100 4XC STORAGE"
    },
    {
      "assetName": "BAG001830",
      "equipmentNo": "100000006143",
      "equipmentName": "11112281",
      "description": "300 Hp. Spendrup Fan 8100 4XC STORAGE"
    },
    {
      "assetName": "BAG001831",
      "equipmentNo": "100000801221",
      "equipmentName": "543BAM00126",
      "description": "#126 CATERPILLAR 793B HAUL TRUCK"
    },
    {
      "assetName": "BAG001832",
      "equipmentNo": "100000006143",
      "equipmentName": "11112281",
      "description": "300 Hp. Spendrup Fan 8100 4XC STORAGE"
    },
    {
      "assetName": "BAG001833",
      "equipmentNo": "100000707774",
      "equipmentName": "3503 PLS BOOSTER SYS",
      "description": "#3  PLS BOOSTER SYSTEM: TANK/POND-"
    },
    {
      "assetName": "BAG001834",
      "equipmentNo": "100000700169",
      "equipmentName": "543BAM13022",
      "description": "P&H 2800XPA SHOVEL #22 54855"
    }
  ];
}
