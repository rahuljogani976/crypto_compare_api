// To parse this JSON data, do
//
//     final priceMultiModel = priceMultiModelFromJson(jsonString);

import 'dart:convert';

PriceMultiModel priceMultiModelFromJson(String str) => PriceMultiModel.fromJson(json.decode(str));

String priceMultiModelToJson(PriceMultiModel data) => json.encode(data.toJson());

class PriceMultiModel {
  PriceMultiModel({
    this.raw,
    this.display,
  });

  Raw raw;
  Display display;

  factory PriceMultiModel.fromJson(Map<String, dynamic> json) => PriceMultiModel(
    raw: json["RAW"] == null ? null : Raw.fromJson(json["RAW"]),
    display: json["DISPLAY"] == null ? null : Display.fromJson(json["DISPLAY"]),
  );

  Map<String, dynamic> toJson() => {
    "RAW": raw == null ? null : raw.toJson(),
    "DISPLAY": display == null ? null : display.toJson(),
  };
}

class Display {
  Display({
    this.btc,
  });

  DisplayBtc btc;

  factory Display.fromJson(Map<String, dynamic> json) => Display(
    btc: json["BTC"] == null ? null : DisplayBtc.fromJson(json["BTC"]),
  );

  Map<String, dynamic> toJson() => {
    "BTC": btc == null ? null : btc.toJson(),
  };
}

class DisplayBtc {
  DisplayBtc({
    this.usd,
    this.eur,
  });

  PurpleEur usd;
  PurpleEur eur;

  factory DisplayBtc.fromJson(Map<String, dynamic> json) => DisplayBtc(
    usd: json["USD"] == null ? null : PurpleEur.fromJson(json["USD"]),
    eur: json["EUR"] == null ? null : PurpleEur.fromJson(json["EUR"]),
  );

  Map<String, dynamic> toJson() => {
    "USD": usd == null ? null : usd.toJson(),
    "EUR": eur == null ? null : eur.toJson(),
  };
}

class PurpleEur {
  PurpleEur({
    this.fromsymbol,
    this.tosymbol,
    this.market,
    this.price,
    this.lastupdate,
    this.lastvolume,
    this.lastvolumeto,
    this.lasttradeid,
    this.volumeday,
    this.volumedayto,
    this.volume24Hour,
    this.volume24Hourto,
    this.openday,
    this.highday,
    this.lowday,
    this.open24Hour,
    this.high24Hour,
    this.low24Hour,
    this.lastmarket,
    this.volumehour,
    this.volumehourto,
    this.openhour,
    this.highhour,
    this.lowhour,
    this.toptiervolume24Hour,
    this.toptiervolume24Hourto,
    this.change24Hour,
    this.changepct24Hour,
    this.changeday,
    this.changepctday,
    this.changehour,
    this.changepcthour,
    this.conversiontype,
    this.conversionsymbol,
    this.supply,
    this.mktcap,
    this.mktcappenalty,
    this.circulatingsupply,
    this.circulatingsupplymktcap,
    this.totalvolume24H,
    this.totalvolume24Hto,
    this.totaltoptiervolume24H,
    this.totaltoptiervolume24Hto,
    this.imageurl,
  });

  String fromsymbol;
  String tosymbol;
  String market;
  String price;
  String lastupdate;
  String lastvolume;
  String lastvolumeto;
  String lasttradeid;
  String volumeday;
  String volumedayto;
  String volume24Hour;
  String volume24Hourto;
  String openday;
  String highday;
  String lowday;
  String open24Hour;
  String high24Hour;
  String low24Hour;
  String lastmarket;
  String volumehour;
  String volumehourto;
  String openhour;
  String highhour;
  String lowhour;
  String toptiervolume24Hour;
  String toptiervolume24Hourto;
  String change24Hour;
  String changepct24Hour;
  String changeday;
  String changepctday;
  String changehour;
  String changepcthour;
  String conversiontype;
  String conversionsymbol;
  String supply;
  String mktcap;
  String mktcappenalty;
  String circulatingsupply;
  String circulatingsupplymktcap;
  String totalvolume24H;
  String totalvolume24Hto;
  String totaltoptiervolume24H;
  String totaltoptiervolume24Hto;
  String imageurl;

  factory PurpleEur.fromJson(Map<String, dynamic> json) => PurpleEur(
    fromsymbol: json["FROMSYMBOL"] == null ? null : json["FROMSYMBOL"],
    tosymbol: json["TOSYMBOL"] == null ? null : json["TOSYMBOL"],
    market: json["MARKET"] == null ? null : json["MARKET"],
    price: json["PRICE"] == null ? null : json["PRICE"],
    lastupdate: json["LASTUPDATE"] == null ? null : json["LASTUPDATE"],
    lastvolume: json["LASTVOLUME"] == null ? null : json["LASTVOLUME"],
    lastvolumeto: json["LASTVOLUMETO"] == null ? null : json["LASTVOLUMETO"],
    lasttradeid: json["LASTTRADEID"] == null ? null : json["LASTTRADEID"],
    volumeday: json["VOLUMEDAY"] == null ? null : json["VOLUMEDAY"],
    volumedayto: json["VOLUMEDAYTO"] == null ? null : json["VOLUMEDAYTO"],
    volume24Hour: json["VOLUME24HOUR"] == null ? null : json["VOLUME24HOUR"],
    volume24Hourto: json["VOLUME24HOURTO"] == null ? null : json["VOLUME24HOURTO"],
    openday: json["OPENDAY"] == null ? null : json["OPENDAY"],
    highday: json["HIGHDAY"] == null ? null : json["HIGHDAY"],
    lowday: json["LOWDAY"] == null ? null : json["LOWDAY"],
    open24Hour: json["OPEN24HOUR"] == null ? null : json["OPEN24HOUR"],
    high24Hour: json["HIGH24HOUR"] == null ? null : json["HIGH24HOUR"],
    low24Hour: json["LOW24HOUR"] == null ? null : json["LOW24HOUR"],
    lastmarket: json["LASTMARKET"] == null ? null : json["LASTMARKET"],
    volumehour: json["VOLUMEHOUR"] == null ? null : json["VOLUMEHOUR"],
    volumehourto: json["VOLUMEHOURTO"] == null ? null : json["VOLUMEHOURTO"],
    openhour: json["OPENHOUR"] == null ? null : json["OPENHOUR"],
    highhour: json["HIGHHOUR"] == null ? null : json["HIGHHOUR"],
    lowhour: json["LOWHOUR"] == null ? null : json["LOWHOUR"],
    toptiervolume24Hour: json["TOPTIERVOLUME24HOUR"] == null ? null : json["TOPTIERVOLUME24HOUR"],
    toptiervolume24Hourto: json["TOPTIERVOLUME24HOURTO"] == null ? null : json["TOPTIERVOLUME24HOURTO"],
    change24Hour: json["CHANGE24HOUR"] == null ? null : json["CHANGE24HOUR"],
    changepct24Hour: json["CHANGEPCT24HOUR"] == null ? null : json["CHANGEPCT24HOUR"],
    changeday: json["CHANGEDAY"] == null ? null : json["CHANGEDAY"],
    changepctday: json["CHANGEPCTDAY"] == null ? null : json["CHANGEPCTDAY"],
    changehour: json["CHANGEHOUR"] == null ? null : json["CHANGEHOUR"],
    changepcthour: json["CHANGEPCTHOUR"] == null ? null : json["CHANGEPCTHOUR"],
    conversiontype: json["CONVERSIONTYPE"] == null ? null : json["CONVERSIONTYPE"],
    conversionsymbol: json["CONVERSIONSYMBOL"] == null ? null : json["CONVERSIONSYMBOL"],
    supply: json["SUPPLY"] == null ? null : json["SUPPLY"],
    mktcap: json["MKTCAP"] == null ? null : json["MKTCAP"],
    mktcappenalty: json["MKTCAPPENALTY"] == null ? null : json["MKTCAPPENALTY"],
    circulatingsupply: json["CIRCULATINGSUPPLY"] == null ? null : json["CIRCULATINGSUPPLY"],
    circulatingsupplymktcap: json["CIRCULATINGSUPPLYMKTCAP"] == null ? null : json["CIRCULATINGSUPPLYMKTCAP"],
    totalvolume24H: json["TOTALVOLUME24H"] == null ? null : json["TOTALVOLUME24H"],
    totalvolume24Hto: json["TOTALVOLUME24HTO"] == null ? null : json["TOTALVOLUME24HTO"],
    totaltoptiervolume24H: json["TOTALTOPTIERVOLUME24H"] == null ? null : json["TOTALTOPTIERVOLUME24H"],
    totaltoptiervolume24Hto: json["TOTALTOPTIERVOLUME24HTO"] == null ? null : json["TOTALTOPTIERVOLUME24HTO"],
    imageurl: json["IMAGEURL"] == null ? null : json["IMAGEURL"],
  );

  Map<String, dynamic> toJson() => {
    "FROMSYMBOL": fromsymbol == null ? null : fromsymbol,
    "TOSYMBOL": tosymbol == null ? null : tosymbol,
    "MARKET": market == null ? null : market,
    "PRICE": price == null ? null : price,
    "LASTUPDATE": lastupdate == null ? null : lastupdate,
    "LASTVOLUME": lastvolume == null ? null : lastvolume,
    "LASTVOLUMETO": lastvolumeto == null ? null : lastvolumeto,
    "LASTTRADEID": lasttradeid == null ? null : lasttradeid,
    "VOLUMEDAY": volumeday == null ? null : volumeday,
    "VOLUMEDAYTO": volumedayto == null ? null : volumedayto,
    "VOLUME24HOUR": volume24Hour == null ? null : volume24Hour,
    "VOLUME24HOURTO": volume24Hourto == null ? null : volume24Hourto,
    "OPENDAY": openday == null ? null : openday,
    "HIGHDAY": highday == null ? null : highday,
    "LOWDAY": lowday == null ? null : lowday,
    "OPEN24HOUR": open24Hour == null ? null : open24Hour,
    "HIGH24HOUR": high24Hour == null ? null : high24Hour,
    "LOW24HOUR": low24Hour == null ? null : low24Hour,
    "LASTMARKET": lastmarket == null ? null : lastmarket,
    "VOLUMEHOUR": volumehour == null ? null : volumehour,
    "VOLUMEHOURTO": volumehourto == null ? null : volumehourto,
    "OPENHOUR": openhour == null ? null : openhour,
    "HIGHHOUR": highhour == null ? null : highhour,
    "LOWHOUR": lowhour == null ? null : lowhour,
    "TOPTIERVOLUME24HOUR": toptiervolume24Hour == null ? null : toptiervolume24Hour,
    "TOPTIERVOLUME24HOURTO": toptiervolume24Hourto == null ? null : toptiervolume24Hourto,
    "CHANGE24HOUR": change24Hour == null ? null : change24Hour,
    "CHANGEPCT24HOUR": changepct24Hour == null ? null : changepct24Hour,
    "CHANGEDAY": changeday == null ? null : changeday,
    "CHANGEPCTDAY": changepctday == null ? null : changepctday,
    "CHANGEHOUR": changehour == null ? null : changehour,
    "CHANGEPCTHOUR": changepcthour == null ? null : changepcthour,
    "CONVERSIONTYPE": conversiontype == null ? null : conversiontype,
    "CONVERSIONSYMBOL": conversionsymbol == null ? null : conversionsymbol,
    "SUPPLY": supply == null ? null : supply,
    "MKTCAP": mktcap == null ? null : mktcap,
    "MKTCAPPENALTY": mktcappenalty == null ? null : mktcappenalty,
    "CIRCULATINGSUPPLY": circulatingsupply == null ? null : circulatingsupply,
    "CIRCULATINGSUPPLYMKTCAP": circulatingsupplymktcap == null ? null : circulatingsupplymktcap,
    "TOTALVOLUME24H": totalvolume24H == null ? null : totalvolume24H,
    "TOTALVOLUME24HTO": totalvolume24Hto == null ? null : totalvolume24Hto,
    "TOTALTOPTIERVOLUME24H": totaltoptiervolume24H == null ? null : totaltoptiervolume24H,
    "TOTALTOPTIERVOLUME24HTO": totaltoptiervolume24Hto == null ? null : totaltoptiervolume24Hto,
    "IMAGEURL": imageurl == null ? null : imageurl,
  };
}

class Raw {
  Raw({
    this.btc,
  });

  RawBtc btc;

  factory Raw.fromJson(Map<String, dynamic> json) => Raw(
    btc: json["BTC"] == null ? null : RawBtc.fromJson(json["BTC"]),
  );

  Map<String, dynamic> toJson() => {
    "BTC": btc == null ? null : btc.toJson(),
  };
}

class RawBtc {
  RawBtc({
    this.usd,
    this.eur,
  });

  FluffyEur usd;
  FluffyEur eur;

  factory RawBtc.fromJson(Map<String, dynamic> json) => RawBtc(
    usd: json["USD"] == null ? null : FluffyEur.fromJson(json["USD"]),
    eur: json["EUR"] == null ? null : FluffyEur.fromJson(json["EUR"]),
  );

  Map<String, dynamic> toJson() => {
    "USD": usd == null ? null : usd.toJson(),
    "EUR": eur == null ? null : eur.toJson(),
  };
}

class FluffyEur {
  FluffyEur({
    this.type,
    this.market,
    this.fromsymbol,
    this.tosymbol,
    this.flags,
    this.price,
    this.lastupdate,
    this.median,
    this.lastvolume,
    this.lastvolumeto,
    this.lasttradeid,
    this.volumeday,
    this.volumedayto,
    this.volume24Hour,
    this.volume24Hourto,
    this.openday,
    this.highday,
    this.lowday,
    this.open24Hour,
    this.high24Hour,
    this.low24Hour,
    this.lastmarket,
    this.volumehour,
    this.volumehourto,
    this.openhour,
    this.highhour,
    this.lowhour,
    this.toptiervolume24Hour,
    this.toptiervolume24Hourto,
    this.change24Hour,
    this.changepct24Hour,
    this.changeday,
    this.changepctday,
    this.changehour,
    this.changepcthour,
    this.conversiontype,
    this.conversionsymbol,
    this.supply,
    this.mktcap,
    this.mktcappenalty,
    this.circulatingsupply,
    this.circulatingsupplymktcap,
    this.totalvolume24H,
    this.totalvolume24Hto,
    this.totaltoptiervolume24H,
    this.totaltoptiervolume24Hto,
    this.imageurl,
  });

  String type;
  String market;
  String fromsymbol;
  String tosymbol;
  String flags;
  double price;
  int lastupdate;
  double median;
  double lastvolume;
  double lastvolumeto;
  String lasttradeid;
  double volumeday;
  double volumedayto;
  double volume24Hour;
  double volume24Hourto;
  double openday;
  double highday;
  double lowday;
  double open24Hour;
  double high24Hour;
  double low24Hour;
  String lastmarket;
  double volumehour;
  double volumehourto;
  double openhour;
  double highhour;
  double lowhour;
  double toptiervolume24Hour;
  double toptiervolume24Hourto;
  double change24Hour;
  double changepct24Hour;
  double changeday;
  double changepctday;
  double changehour;
  double changepcthour;
  String conversiontype;
  String conversionsymbol;
  int supply;
  double mktcap;
  int mktcappenalty;
  int circulatingsupply;
  double circulatingsupplymktcap;
  double totalvolume24H;
  double totalvolume24Hto;
  double totaltoptiervolume24H;
  double totaltoptiervolume24Hto;
  String imageurl;

  factory FluffyEur.fromJson(Map<String, dynamic> json) => FluffyEur(
    type: json["TYPE"] == null ? null : json["TYPE"],
    market: json["MARKET"] == null ? null : json["MARKET"],
    fromsymbol: json["FROMSYMBOL"] == null ? null : json["FROMSYMBOL"],
    tosymbol: json["TOSYMBOL"] == null ? null : json["TOSYMBOL"],
    flags: json["FLAGS"] == null ? null : json["FLAGS"],
    price: json["PRICE"] == null ? null : json["PRICE"].toDouble(),
    lastupdate: json["LASTUPDATE"] == null ? null : json["LASTUPDATE"],
    median: json["MEDIAN"] == null ? null : json["MEDIAN"].toDouble(),
    lastvolume: json["LASTVOLUME"] == null ? null : json["LASTVOLUME"].toDouble(),
    lastvolumeto: json["LASTVOLUMETO"] == null ? null : json["LASTVOLUMETO"].toDouble(),
    lasttradeid: json["LASTTRADEID"] == null ? null : json["LASTTRADEID"],
    volumeday: json["VOLUMEDAY"] == null ? null : json["VOLUMEDAY"].toDouble(),
    volumedayto: json["VOLUMEDAYTO"] == null ? null : json["VOLUMEDAYTO"].toDouble(),
    volume24Hour: json["VOLUME24HOUR"] == null ? null : json["VOLUME24HOUR"].toDouble(),
    volume24Hourto: json["VOLUME24HOURTO"] == null ? null : json["VOLUME24HOURTO"].toDouble(),
    openday: json["OPENDAY"] == null ? null : json["OPENDAY"].toDouble(),
    highday: json["HIGHDAY"] == null ? null : json["HIGHDAY"].toDouble(),
    lowday: json["LOWDAY"] == null ? null : json["LOWDAY"].toDouble(),
    open24Hour: json["OPEN24HOUR"] == null ? null : json["OPEN24HOUR"].toDouble(),
    high24Hour: json["HIGH24HOUR"] == null ? null : json["HIGH24HOUR"].toDouble(),
    low24Hour: json["LOW24HOUR"] == null ? null : json["LOW24HOUR"].toDouble(),
    lastmarket: json["LASTMARKET"] == null ? null : json["LASTMARKET"],
    volumehour: json["VOLUMEHOUR"] == null ? null : json["VOLUMEHOUR"].toDouble(),
    volumehourto: json["VOLUMEHOURTO"] == null ? null : json["VOLUMEHOURTO"].toDouble(),
    openhour: json["OPENHOUR"] == null ? null : json["OPENHOUR"].toDouble(),
    highhour: json["HIGHHOUR"] == null ? null : json["HIGHHOUR"].toDouble(),
    lowhour: json["LOWHOUR"] == null ? null : json["LOWHOUR"].toDouble(),
    toptiervolume24Hour: json["TOPTIERVOLUME24HOUR"] == null ? null : json["TOPTIERVOLUME24HOUR"].toDouble(),
    toptiervolume24Hourto: json["TOPTIERVOLUME24HOURTO"] == null ? null : json["TOPTIERVOLUME24HOURTO"].toDouble(),
    change24Hour: json["CHANGE24HOUR"] == null ? null : json["CHANGE24HOUR"].toDouble(),
    changepct24Hour: json["CHANGEPCT24HOUR"] == null ? null : json["CHANGEPCT24HOUR"].toDouble(),
    changeday: json["CHANGEDAY"] == null ? null : json["CHANGEDAY"].toDouble(),
    changepctday: json["CHANGEPCTDAY"] == null ? null : json["CHANGEPCTDAY"].toDouble(),
    changehour: json["CHANGEHOUR"] == null ? null : json["CHANGEHOUR"].toDouble(),
    changepcthour: json["CHANGEPCTHOUR"] == null ? null : json["CHANGEPCTHOUR"].toDouble(),
    conversiontype: json["CONVERSIONTYPE"] == null ? null : json["CONVERSIONTYPE"],
    conversionsymbol: json["CONVERSIONSYMBOL"] == null ? null : json["CONVERSIONSYMBOL"],
    supply: json["SUPPLY"] == null ? null : json["SUPPLY"],
    mktcap: json["MKTCAP"] == null ? null : json["MKTCAP"].toDouble(),
    mktcappenalty: json["MKTCAPPENALTY"] == null ? null : json["MKTCAPPENALTY"],
    circulatingsupply: json["CIRCULATINGSUPPLY"] == null ? null : json["CIRCULATINGSUPPLY"],
    circulatingsupplymktcap: json["CIRCULATINGSUPPLYMKTCAP"] == null ? null : json["CIRCULATINGSUPPLYMKTCAP"].toDouble(),
    totalvolume24H: json["TOTALVOLUME24H"] == null ? null : json["TOTALVOLUME24H"].toDouble(),
    totalvolume24Hto: json["TOTALVOLUME24HTO"] == null ? null : json["TOTALVOLUME24HTO"].toDouble(),
    totaltoptiervolume24H: json["TOTALTOPTIERVOLUME24H"] == null ? null : json["TOTALTOPTIERVOLUME24H"].toDouble(),
    totaltoptiervolume24Hto: json["TOTALTOPTIERVOLUME24HTO"] == null ? null : json["TOTALTOPTIERVOLUME24HTO"].toDouble(),
    imageurl: json["IMAGEURL"] == null ? null : json["IMAGEURL"],
  );

  Map<String, dynamic> toJson() => {
    "TYPE": type == null ? null : type,
    "MARKET": market == null ? null : market,
    "FROMSYMBOL": fromsymbol == null ? null : fromsymbol,
    "TOSYMBOL": tosymbol == null ? null : tosymbol,
    "FLAGS": flags == null ? null : flags,
    "PRICE": price == null ? null : price,
    "LASTUPDATE": lastupdate == null ? null : lastupdate,
    "MEDIAN": median == null ? null : median,
    "LASTVOLUME": lastvolume == null ? null : lastvolume,
    "LASTVOLUMETO": lastvolumeto == null ? null : lastvolumeto,
    "LASTTRADEID": lasttradeid == null ? null : lasttradeid,
    "VOLUMEDAY": volumeday == null ? null : volumeday,
    "VOLUMEDAYTO": volumedayto == null ? null : volumedayto,
    "VOLUME24HOUR": volume24Hour == null ? null : volume24Hour,
    "VOLUME24HOURTO": volume24Hourto == null ? null : volume24Hourto,
    "OPENDAY": openday == null ? null : openday,
    "HIGHDAY": highday == null ? null : highday,
    "LOWDAY": lowday == null ? null : lowday,
    "OPEN24HOUR": open24Hour == null ? null : open24Hour,
    "HIGH24HOUR": high24Hour == null ? null : high24Hour,
    "LOW24HOUR": low24Hour == null ? null : low24Hour,
    "LASTMARKET": lastmarket == null ? null : lastmarket,
    "VOLUMEHOUR": volumehour == null ? null : volumehour,
    "VOLUMEHOURTO": volumehourto == null ? null : volumehourto,
    "OPENHOUR": openhour == null ? null : openhour,
    "HIGHHOUR": highhour == null ? null : highhour,
    "LOWHOUR": lowhour == null ? null : lowhour,
    "TOPTIERVOLUME24HOUR": toptiervolume24Hour == null ? null : toptiervolume24Hour,
    "TOPTIERVOLUME24HOURTO": toptiervolume24Hourto == null ? null : toptiervolume24Hourto,
    "CHANGE24HOUR": change24Hour == null ? null : change24Hour,
    "CHANGEPCT24HOUR": changepct24Hour == null ? null : changepct24Hour,
    "CHANGEDAY": changeday == null ? null : changeday,
    "CHANGEPCTDAY": changepctday == null ? null : changepctday,
    "CHANGEHOUR": changehour == null ? null : changehour,
    "CHANGEPCTHOUR": changepcthour == null ? null : changepcthour,
    "CONVERSIONTYPE": conversiontype == null ? null : conversiontype,
    "CONVERSIONSYMBOL": conversionsymbol == null ? null : conversionsymbol,
    "SUPPLY": supply == null ? null : supply,
    "MKTCAP": mktcap == null ? null : mktcap,
    "MKTCAPPENALTY": mktcappenalty == null ? null : mktcappenalty,
    "CIRCULATINGSUPPLY": circulatingsupply == null ? null : circulatingsupply,
    "CIRCULATINGSUPPLYMKTCAP": circulatingsupplymktcap == null ? null : circulatingsupplymktcap,
    "TOTALVOLUME24H": totalvolume24H == null ? null : totalvolume24H,
    "TOTALVOLUME24HTO": totalvolume24Hto == null ? null : totalvolume24Hto,
    "TOTALTOPTIERVOLUME24H": totaltoptiervolume24H == null ? null : totaltoptiervolume24H,
    "TOTALTOPTIERVOLUME24HTO": totaltoptiervolume24Hto == null ? null : totaltoptiervolume24Hto,
    "IMAGEURL": imageurl == null ? null : imageurl,
  };
}
