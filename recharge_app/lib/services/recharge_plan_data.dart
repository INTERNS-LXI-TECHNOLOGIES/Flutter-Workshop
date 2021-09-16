// To parse this JSON data, do
//
//     final rechargePlanData = rechargePlanDataFromJson(jsonString);

import 'dart:convert';

RechargePlanData rechargePlanDataFromJson(String str) =>
    RechargePlanData.fromJson(json.decode(str));

String rechargePlanDataToJson(RechargePlanData data) =>
    json.encode(data.toJson());

class RechargePlanData {
  RechargePlanData({
    this.id,
    this.operatorId,
    this.name,
    this.bundle,
    this.data,
    this.pin,
    this.supportsLocalAmounts,
    this.supportsGeographicalRechargePlans,
    this.denominationType,
    this.senderCurrencyCode,
    this.senderCurrencySymbol,
    this.destinationCurrencyCode,
    this.destinationCurrencySymbol,
    this.commission,
    this.internationalDiscount,
    this.localDiscount,
    this.mostPopularAmount,
    this.mostPopularLocalAmount,
    this.minAmount,
    this.maxAmount,
    this.localMinAmount,
    this.localMaxAmount,
    this.country,
    this.fx,
    this.logoUrls,
    this.fixedAmounts,
    this.fixedAmountsDescriptions,
    this.localFixedAmounts,
    this.localFixedAmountsDescriptions,
    this.suggestedAmounts,
    this.suggestedAmountsMap,
  });

  int id;
  int operatorId;
  String name;
  bool bundle;
  bool data;
  bool pin;
  bool supportsLocalAmounts;
  bool supportsGeographicalRechargePlans;
  String denominationType;
  String senderCurrencyCode;
  String senderCurrencySymbol;
  String destinationCurrencyCode;
  String destinationCurrencySymbol;
  int commission;
  int internationalDiscount;
  double localDiscount;
  dynamic mostPopularAmount;
  dynamic mostPopularLocalAmount;
  dynamic minAmount;
  dynamic maxAmount;
  dynamic localMinAmount;
  dynamic localMaxAmount;
  Country country;
  Fx fx;
  List<String> logoUrls;
  List<dynamic> fixedAmounts;
  FixedAmountsDescriptions fixedAmountsDescriptions;
  List<dynamic> localFixedAmounts;
  FixedAmountsDescriptions localFixedAmountsDescriptions;
  List<dynamic> suggestedAmounts;
  FixedAmountsDescriptions suggestedAmountsMap;

  factory RechargePlanData.fromJson(Map<String, dynamic> json) =>
      RechargePlanData(
        id: json["id"],
        operatorId: json["operatorId"],
        name: json["name"],
        bundle: json["bundle"],
        data: json["data"],
        pin: json["pin"],
        supportsLocalAmounts: json["supportsLocalAmounts"],
        supportsGeographicalRechargePlans:
            json["supportsGeographicalRechargePlans"],
        denominationType: json["denominationType"],
        senderCurrencyCode: json["senderCurrencyCode"],
        senderCurrencySymbol: json["senderCurrencySymbol"],
        destinationCurrencyCode: json["destinationCurrencyCode"],
        destinationCurrencySymbol: json["destinationCurrencySymbol"],
        commission: json["commission"],
        internationalDiscount: json["internationalDiscount"],
        localDiscount: json["localDiscount"].toDouble(),
        mostPopularAmount: json["mostPopularAmount"],
        mostPopularLocalAmount: json["mostPopularLocalAmount"],
        minAmount: json["minAmount"],
        maxAmount: json["maxAmount"],
        localMinAmount: json["localMinAmount"],
        localMaxAmount: json["localMaxAmount"],
        country: Country.fromJson(json["country"]),
        fx: Fx.fromJson(json["fx"]),
        logoUrls: List<String>.from(json["logoUrls"].map((x) => x)),
        fixedAmounts: List<dynamic>.from(json["fixedAmounts"].map((x) => x)),
        fixedAmountsDescriptions:
            FixedAmountsDescriptions.fromJson(json["fixedAmountsDescriptions"]),
        localFixedAmounts:
            List<dynamic>.from(json["localFixedAmounts"].map((x) => x)),
        localFixedAmountsDescriptions: FixedAmountsDescriptions.fromJson(
            json["localFixedAmountsDescriptions"]),
        suggestedAmounts:
            List<dynamic>.from(json["suggestedAmounts"].map((x) => x)),
        suggestedAmountsMap:
            FixedAmountsDescriptions.fromJson(json["suggestedAmountsMap"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "operatorId": operatorId,
        "name": name,
        "bundle": bundle,
        "data": data,
        "pin": pin,
        "supportsLocalAmounts": supportsLocalAmounts,
        "supportsGeographicalRechargePlans": supportsGeographicalRechargePlans,
        "denominationType": denominationType,
        "senderCurrencyCode": senderCurrencyCode,
        "senderCurrencySymbol": senderCurrencySymbol,
        "destinationCurrencyCode": destinationCurrencyCode,
        "destinationCurrencySymbol": destinationCurrencySymbol,
        "commission": commission,
        "internationalDiscount": internationalDiscount,
        "localDiscount": localDiscount,
        "mostPopularAmount": mostPopularAmount,
        "mostPopularLocalAmount": mostPopularLocalAmount,
        "minAmount": minAmount,
        "maxAmount": maxAmount,
        "localMinAmount": localMinAmount,
        "localMaxAmount": localMaxAmount,
        "country": country.toJson(),
        "fx": fx.toJson(),
        "logoUrls": List<dynamic>.from(logoUrls.map((x) => x)),
        "fixedAmounts": List<dynamic>.from(fixedAmounts.map((x) => x)),
        "fixedAmountsDescriptions": fixedAmountsDescriptions.toJson(),
        "localFixedAmounts":
            List<dynamic>.from(localFixedAmounts.map((x) => x)),
        "localFixedAmountsDescriptions": localFixedAmountsDescriptions.toJson(),
        "suggestedAmounts": List<dynamic>.from(suggestedAmounts.map((x) => x)),
        "suggestedAmountsMap": suggestedAmountsMap.toJson(),
      };
}

class Country {
  Country({
    this.isoName,
    this.name,
  });

  String isoName;
  String name;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        isoName: json["isoName"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "isoName": isoName,
        "name": name,
      };
}

class FixedAmountsDescriptions {
  FixedAmountsDescriptions();

  factory FixedAmountsDescriptions.fromJson(Map<String, dynamic> json) =>
      FixedAmountsDescriptions();

  Map<String, dynamic> toJson() => {};
}

class Fx {
  Fx({
    this.rate,
    this.currencyCode,
  });

  int rate;
  String currencyCode;

  factory Fx.fromJson(Map<String, dynamic> json) => Fx(
        rate: json["rate"],
        currencyCode: json["currencyCode"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "currencyCode": currencyCode,
      };
}
