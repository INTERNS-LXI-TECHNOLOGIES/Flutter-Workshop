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
    this.geographicalRechargePlans,
    this.promotions,
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
  List<GeographicalRechargePlan> geographicalRechargePlans;
  List<dynamic> promotions;

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
        geographicalRechargePlans: List<GeographicalRechargePlan>.from(
            json["geographicalRechargePlans"]
                .map((x) => GeographicalRechargePlan.fromJson(x))),
        promotions: List<dynamic>.from(json["promotions"].map((x) => x)),
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
        "geographicalRechargePlans": List<dynamic>.from(
            geographicalRechargePlans.map((x) => x.toJson())),
        "promotions": List<dynamic>.from(promotions.map((x) => x)),
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

class GeographicalRechargePlan {
  GeographicalRechargePlan({
    this.locationCode,
    this.locationName,
    this.fixedAmounts,
    this.localAmounts,
    this.fixedAmountsPlanNames,
    this.fixedAmountsDescriptions,
    this.localFixedAmountsPlanNames,
    this.localFixedAmountsDescriptions,
  });

  String locationCode;
  String locationName;
  List<double> fixedAmounts;
  List<int> localAmounts;
  FixedAmountsPlanNames fixedAmountsPlanNames;
  GeographicalRechargePlanFixedAmountsDescriptions fixedAmountsDescriptions;
  LocalFixedAmounts localFixedAmountsPlanNames;
  LocalFixedAmounts localFixedAmountsDescriptions;

  factory GeographicalRechargePlan.fromJson(Map<String, dynamic> json) =>
      GeographicalRechargePlan(
        locationCode: json["locationCode"],
        locationName: json["locationName"],
        fixedAmounts:
            List<double>.from(json["fixedAmounts"].map((x) => x.toDouble())),
        localAmounts: List<int>.from(json["localAmounts"].map((x) => x)),
        fixedAmountsPlanNames:
            FixedAmountsPlanNames.fromJson(json["fixedAmountsPlanNames"]),
        fixedAmountsDescriptions:
            GeographicalRechargePlanFixedAmountsDescriptions.fromJson(
                json["fixedAmountsDescriptions"]),
        localFixedAmountsPlanNames:
            LocalFixedAmounts.fromJson(json["localFixedAmountsPlanNames"]),
        localFixedAmountsDescriptions:
            LocalFixedAmounts.fromJson(json["localFixedAmountsDescriptions"]),
      );

  Map<String, dynamic> toJson() => {
        "locationCode": locationCode,
        "locationName": locationName,
        "fixedAmounts": List<dynamic>.from(fixedAmounts.map((x) => x)),
        "localAmounts": List<dynamic>.from(localAmounts.map((x) => x)),
        "fixedAmountsPlanNames": fixedAmountsPlanNames.toJson(),
        "fixedAmountsDescriptions": fixedAmountsDescriptions.toJson(),
        "localFixedAmountsPlanNames": localFixedAmountsPlanNames.toJson(),
        "localFixedAmountsDescriptions": localFixedAmountsDescriptions.toJson(),
      };
}

class GeographicalRechargePlanFixedAmountsDescriptions {
  GeographicalRechargePlanFixedAmountsDescriptions({
    this.the2374,
    this.the9794,
    this.the15804,
    this.the15952,
    this.the18401,
    this.the24633,
    this.the27082,
    this.the30792,
    this.the35763,
    this.the36876,
    this.the36950,
    this.the43182,
    this.the46892,
    this.the49192,
    this.the49341,
    this.the55499,
    this.the56389,
    this.the61361,
    this.the61732,
    this.the69003,
    this.the73974,
    this.the80132,
    this.the80281,
    this.the86291,
    this.the86439,
    this.the93339,
    this.the98830,
    this.the123315,
    this.the148245,
    this.the185269,
    this.the185343,
    this.the308881,
    this.the309029,
    this.the345979,
    this.the444957,
    this.the445032,
    this.the494001,
    this.the494298,
    this.the494372,
    this.the618207,
    this.the741596,
    this.the741744,
    this.the741818,
    this.the865504,
  });

  The2374 the2374;
  String the9794;
  String the15804;
  String the15952;
  String the18401;
  String the24633;
  String the27082;
  String the30792;
  String the35763;
  String the36876;
  String the36950;
  String the43182;
  String the46892;
  String the49192;
  String the49341;
  String the55499;
  String the56389;
  String the61361;
  String the61732;
  String the69003;
  String the73974;
  String the80132;
  String the80281;
  String the86291;
  String the86439;
  String the93339;
  String the98830;
  String the123315;
  String the148245;
  String the185269;
  String the185343;
  String the308881;
  String the309029;
  String the345979;
  String the444957;
  String the445032;
  String the494001;
  String the494298;
  String the494372;
  String the618207;
  String the741596;
  String the741744;
  String the741818;
  String the865504;

  factory GeographicalRechargePlanFixedAmountsDescriptions.fromJson(
          Map<String, dynamic> json) =>
      GeographicalRechargePlanFixedAmountsDescriptions(
        the2374: the2374Values.map[json["23.74"]],
        the9794: json["97.94"],
        the15804: json["158.04"],
        the15952: json["159.52"],
        the18401: json["184.01"],
        the24633: json["246.33"],
        the27082: json["270.82"],
        the30792: json["307.92"],
        the35763: json["357.63"],
        the36876: json["368.76"],
        the36950: json["369.50"],
        the43182: json["431.82"],
        the46892: json["468.92"],
        the49192: json["491.92"],
        the49341: json["493.41"],
        the55499: json["554.99"],
        the56389: json["563.89"],
        the61361: json["613.61"] == null ? null : json["613.61"],
        the61732: json["617.32"],
        the69003: json["690.03"],
        the73974: json["739.74"],
        the80132: json["801.32"] == null ? null : json["801.32"],
        the80281: json["802.81"] == null ? null : json["802.81"],
        the86291: json["862.91"],
        the86439: json["864.39"],
        the93339: json["933.39"] == null ? null : json["933.39"],
        the98830: json["988.30"] == null ? null : json["988.30"],
        the123315: json["1233.15"] == null ? null : json["1233.15"],
        the148245: json["1482.45"] == null ? null : json["1482.45"],
        the185269: json["1852.69"],
        the185343: json["1853.43"] == null ? null : json["1853.43"],
        the308881: json["3088.81"],
        the309029: json["3090.29"] == null ? null : json["3090.29"],
        the345979: json["3459.79"],
        the444957: json["4449.57"] == null ? null : json["4449.57"],
        the445032: json["4450.32"] == null ? null : json["4450.32"],
        the494001: json["4940.01"] == null ? null : json["4940.01"],
        the494298: json["4942.98"] == null ? null : json["4942.98"],
        the494372: json["4943.72"] == null ? null : json["4943.72"],
        the618207: json["6182.07"] == null ? null : json["6182.07"],
        the741596: json["7415.96"] == null ? null : json["7415.96"],
        the741744: json["7417.44"] == null ? null : json["7417.44"],
        the741818: json["7418.18"] == null ? null : json["7418.18"],
        the865504: json["8655.04"] == null ? null : json["8655.04"],
      );

  Map<String, dynamic> toJson() => {
        "23.74": the2374Values.reverse[the2374],
        "97.94": the9794,
        "158.04": the15804,
        "159.52": the15952,
        "184.01": the18401,
        "246.33": the24633,
        "270.82": the27082,
        "307.92": the30792,
        "357.63": the35763,
        "368.76": the36876,
        "369.50": the36950,
        "431.82": the43182,
        "468.92": the46892,
        "491.92": the49192,
        "493.41": the49341,
        "554.99": the55499,
        "563.89": the56389,
        "613.61": the61361 == null ? null : the61361,
        "617.32": the61732,
        "690.03": the69003,
        "739.74": the73974,
        "801.32": the80132 == null ? null : the80132,
        "802.81": the80281 == null ? null : the80281,
        "862.91": the86291,
        "864.39": the86439,
        "933.39": the93339 == null ? null : the93339,
        "988.30": the98830 == null ? null : the98830,
        "1233.15": the123315 == null ? null : the123315,
        "1482.45": the148245 == null ? null : the148245,
        "1852.69": the185269,
        "1853.43": the185343 == null ? null : the185343,
        "3088.81": the308881,
        "3090.29": the309029 == null ? null : the309029,
        "3459.79": the345979,
        "4449.57": the444957 == null ? null : the444957,
        "4450.32": the445032 == null ? null : the445032,
        "4940.01": the494001 == null ? null : the494001,
        "4942.98": the494298 == null ? null : the494298,
        "4943.72": the494372 == null ? null : the494372,
        "6182.07": the618207 == null ? null : the618207,
        "7415.96": the741596 == null ? null : the741596,
        "7417.44": the741744 == null ? null : the741744,
        "7418.18": the741818 == null ? null : the741818,
        "8655.04": the865504 == null ? null : the865504,
      };
}

enum The2374 {
  GET_TRULY_UNLIMITED_CALLS_200_MB_DATA_VALIDITY_2_DAYS,
  UNLIMITED_PACKS
}

final the2374Values = EnumValues({
  "Get Truly Unlimited calls + 200 MB Data.. Validity : 2 Days":
      The2374.GET_TRULY_UNLIMITED_CALLS_200_MB_DATA_VALIDITY_2_DAYS,
  "Unlimited Packs": The2374.UNLIMITED_PACKS
});

class FixedAmountsPlanNames {
  FixedAmountsPlanNames({
    this.the032,
    this.the132,
    this.the213,
    this.the215,
    this.the248,
    this.the332,
    this.the365,
    this.the415,
    this.the482,
    this.the497,
    this.the498,
    this.the582,
    this.the632,
    this.the663,
    this.the665,
    this.the748,
    this.the760,
    this.the827,
    this.the832,
    this.the930,
    this.the997,
    this.the1080,
    this.the1082,
    this.the1163,
    this.the1165,
    this.the1258,
    this.the1332,
    this.the1662,
    this.the1998,
    this.the2497,
    this.the2498,
    this.the4163,
    this.the4165,
    this.the4663,
    this.the5997,
    this.the5998,
    this.the6658,
    this.the6662,
    this.the6663,
    this.the8332,
    this.the9995,
    this.the9997,
    this.the9998,
    this.the11665,
  });

  The2374 the032;
  The132 the132;
  The132 the213;
  The2374 the215;
  The2374 the248;
  The2374 the332;
  The2374 the365;
  The2374 the415;
  The2374 the482;
  The2374 the497;
  The2374 the498;
  The2374 the582;
  The2374 the632;
  The2374 the663;
  The2374 the665;
  The2374 the748;
  The2374 the760;
  The1080 the827;
  The2374 the832;
  The2374 the930;
  The2374 the997;
  The1080 the1080;
  The1080 the1082;
  The2374 the1163;
  The2374 the1165;
  The1080 the1258;
  The1080 the1332;
  The1080 the1662;
  The1080 the1998;
  The2374 the2497;
  The1080 the2498;
  The2374 the4163;
  The1080 the4165;
  The2374 the4663;
  The1080 the5997;
  The1080 the5998;
  The1080 the6658;
  The1080 the6662;
  The1080 the6663;
  The1080 the8332;
  The1080 the9995;
  The1080 the9997;
  The1080 the9998;
  The1080 the11665;

  factory FixedAmountsPlanNames.fromJson(Map<String, dynamic> json) =>
      FixedAmountsPlanNames(
        the032: the2374Values.map[json["0.32"]],
        the132: the132Values.map[json["1.32"]],
        the213: the132Values.map[json["2.13"]],
        the215: the2374Values.map[json["2.15"]],
        the248: the2374Values.map[json["2.48"]],
        the332: the2374Values.map[json["3.32"]],
        the365: the2374Values.map[json["3.65"]],
        the415: the2374Values.map[json["4.15"]],
        the482: the2374Values.map[json["4.82"]],
        the497: the2374Values.map[json["4.97"]],
        the498: the2374Values.map[json["4.98"]],
        the582: the2374Values.map[json["5.82"]],
        the632: the2374Values.map[json["6.32"]],
        the663: the2374Values.map[json["6.63"]],
        the665: the2374Values.map[json["6.65"]],
        the748: the2374Values.map[json["7.48"]],
        the760: the2374Values.map[json["7.60"]],
        the827: json["8.27"] == null ? null : the1080Values.map[json["8.27"]],
        the832: the2374Values.map[json["8.32"]],
        the930: the2374Values.map[json["9.30"]],
        the997: the2374Values.map[json["9.97"]],
        the1080:
            json["10.80"] == null ? null : the1080Values.map[json["10.80"]],
        the1082:
            json["10.82"] == null ? null : the1080Values.map[json["10.82"]],
        the1163: the2374Values.map[json["11.63"]],
        the1165: the2374Values.map[json["11.65"]],
        the1258:
            json["12.58"] == null ? null : the1080Values.map[json["12.58"]],
        the1332:
            json["13.32"] == null ? null : the1080Values.map[json["13.32"]],
        the1662:
            json["16.62"] == null ? null : the1080Values.map[json["16.62"]],
        the1998:
            json["19.98"] == null ? null : the1080Values.map[json["19.98"]],
        the2497: the2374Values.map[json["24.97"]],
        the2498:
            json["24.98"] == null ? null : the1080Values.map[json["24.98"]],
        the4163: the2374Values.map[json["41.63"]],
        the4165:
            json["41.65"] == null ? null : the1080Values.map[json["41.65"]],
        the4663: the2374Values.map[json["46.63"]],
        the5997:
            json["59.97"] == null ? null : the1080Values.map[json["59.97"]],
        the5998:
            json["59.98"] == null ? null : the1080Values.map[json["59.98"]],
        the6658:
            json["66.58"] == null ? null : the1080Values.map[json["66.58"]],
        the6662:
            json["66.62"] == null ? null : the1080Values.map[json["66.62"]],
        the6663:
            json["66.63"] == null ? null : the1080Values.map[json["66.63"]],
        the8332:
            json["83.32"] == null ? null : the1080Values.map[json["83.32"]],
        the9995:
            json["99.95"] == null ? null : the1080Values.map[json["99.95"]],
        the9997:
            json["99.97"] == null ? null : the1080Values.map[json["99.97"]],
        the9998:
            json["99.98"] == null ? null : the1080Values.map[json["99.98"]],
        the11665:
            json["116.65"] == null ? null : the1080Values.map[json["116.65"]],
      );

  Map<String, dynamic> toJson() => {
        "0.32": the2374Values.reverse[the032],
        "1.32": the132Values.reverse[the132],
        "2.13": the132Values.reverse[the213],
        "2.15": the2374Values.reverse[the215],
        "2.48": the2374Values.reverse[the248],
        "3.32": the2374Values.reverse[the332],
        "3.65": the2374Values.reverse[the365],
        "4.15": the2374Values.reverse[the415],
        "4.82": the2374Values.reverse[the482],
        "4.97": the2374Values.reverse[the497],
        "4.98": the2374Values.reverse[the498],
        "5.82": the2374Values.reverse[the582],
        "6.32": the2374Values.reverse[the632],
        "6.63": the2374Values.reverse[the663],
        "6.65": the2374Values.reverse[the665],
        "7.48": the2374Values.reverse[the748],
        "7.60": the2374Values.reverse[the760],
        "8.27": the827 == null ? null : the1080Values.reverse[the827],
        "8.32": the2374Values.reverse[the832],
        "9.30": the2374Values.reverse[the930],
        "9.97": the2374Values.reverse[the997],
        "10.80": the1080 == null ? null : the1080Values.reverse[the1080],
        "10.82": the1082 == null ? null : the1080Values.reverse[the1082],
        "11.63": the2374Values.reverse[the1163],
        "11.65": the2374Values.reverse[the1165],
        "12.58": the1258 == null ? null : the1080Values.reverse[the1258],
        "13.32": the1332 == null ? null : the1080Values.reverse[the1332],
        "16.62": the1662 == null ? null : the1080Values.reverse[the1662],
        "19.98": the1998 == null ? null : the1080Values.reverse[the1998],
        "24.97": the2374Values.reverse[the2497],
        "24.98": the2498 == null ? null : the1080Values.reverse[the2498],
        "41.63": the2374Values.reverse[the4163],
        "41.65": the4165 == null ? null : the1080Values.reverse[the4165],
        "46.63": the2374Values.reverse[the4663],
        "59.97": the5997 == null ? null : the1080Values.reverse[the5997],
        "59.98": the5998 == null ? null : the1080Values.reverse[the5998],
        "66.58": the6658 == null ? null : the1080Values.reverse[the6658],
        "66.62": the6662 == null ? null : the1080Values.reverse[the6662],
        "66.63": the6663 == null ? null : the1080Values.reverse[the6663],
        "83.32": the8332 == null ? null : the1080Values.reverse[the8332],
        "99.95": the9995 == null ? null : the1080Values.reverse[the9995],
        "99.97": the9997 == null ? null : the1080Values.reverse[the9997],
        "99.98": the9998 == null ? null : the1080Values.reverse[the9998],
        "116.65": the11665 == null ? null : the1080Values.reverse[the11665],
      };
}

enum The1080 { INTERNATIONAL_ROAMING }

final the1080Values =
    EnumValues({"International Roaming": The1080.INTERNATIONAL_ROAMING});

enum The132 { COMBO_PACK }

final the132Values = EnumValues({"Combo Pack": The132.COMBO_PACK});

class LocalFixedAmounts {
  LocalFixedAmounts({
    this.the1900,
    this.the7900,
    this.the12800,
    this.the12900,
    this.the14900,
    this.the19900,
    this.the21900,
    this.the24900,
    this.the28900,
    this.the29800,
    this.the29900,
    this.the34900,
    this.the37900,
    this.the39800,
    this.the39900,
    this.the44900,
    this.the45600,
    this.the49600,
    this.the49900,
    this.the55800,
    this.the59800,
    this.the64800,
    this.the64900,
    this.the69800,
    this.the69900,
    this.the75500,
    this.the79900,
    this.the99700,
    this.the119900,
    this.the149800,
    this.the149900,
    this.the249800,
    this.the249900,
    this.the279800,
    this.the359800,
    this.the359900,
    this.the399500,
    this.the399700,
    this.the399800,
    this.the499900,
    this.the599700,
    this.the599800,
    this.the599900,
    this.the699900,
  });

  The2374 the1900;
  String the7900;
  String the12800;
  String the12900;
  String the14900;
  String the19900;
  String the21900;
  String the24900;
  String the28900;
  String the29800;
  String the29900;
  String the34900;
  String the37900;
  String the39800;
  String the39900;
  String the44900;
  String the45600;
  String the49600;
  String the49900;
  String the55800;
  String the59800;
  String the64800;
  String the64900;
  String the69800;
  String the69900;
  String the75500;
  String the79900;
  String the99700;
  String the119900;
  String the149800;
  String the149900;
  String the249800;
  String the249900;
  String the279800;
  String the359800;
  String the359900;
  String the399500;
  String the399700;
  String the399800;
  String the499900;
  String the599700;
  String the599800;
  String the599900;
  String the699900;

  factory LocalFixedAmounts.fromJson(Map<String, dynamic> json) =>
      LocalFixedAmounts(
        the1900: the2374Values.map[json["19.00"]],
        the7900: json["79.00"],
        the12800: json["128.00"],
        the12900: json["129.00"],
        the14900: json["149.00"],
        the19900: json["199.00"],
        the21900: json["219.00"],
        the24900: json["249.00"],
        the28900: json["289.00"],
        the29800: json["298.00"],
        the29900: json["299.00"],
        the34900: json["349.00"],
        the37900: json["379.00"],
        the39800: json["398.00"],
        the39900: json["399.00"],
        the44900: json["449.00"],
        the45600: json["456.00"],
        the49600: json["496.00"] == null ? null : json["496.00"],
        the49900: json["499.00"],
        the55800: json["558.00"],
        the59800: json["598.00"],
        the64800: json["648.00"] == null ? null : json["648.00"],
        the64900: json["649.00"] == null ? null : json["649.00"],
        the69800: json["698.00"],
        the69900: json["699.00"],
        the75500: json["755.00"] == null ? null : json["755.00"],
        the79900: json["799.00"] == null ? null : json["799.00"],
        the99700: json["997.00"] == null ? null : json["997.00"],
        the119900: json["1199.00"] == null ? null : json["1199.00"],
        the149800: json["1498.00"],
        the149900: json["1499.00"] == null ? null : json["1499.00"],
        the249800: json["2498.00"],
        the249900: json["2499.00"] == null ? null : json["2499.00"],
        the279800: json["2798.00"],
        the359800: json["3598.00"] == null ? null : json["3598.00"],
        the359900: json["3599.00"] == null ? null : json["3599.00"],
        the399500: json["3995.00"] == null ? null : json["3995.00"],
        the399700: json["3997.00"] == null ? null : json["3997.00"],
        the399800: json["3998.00"] == null ? null : json["3998.00"],
        the499900: json["4999.00"] == null ? null : json["4999.00"],
        the599700: json["5997.00"] == null ? null : json["5997.00"],
        the599800: json["5998.00"] == null ? null : json["5998.00"],
        the599900: json["5999.00"] == null ? null : json["5999.00"],
        the699900: json["6999.00"] == null ? null : json["6999.00"],
      );

  Map<String, dynamic> toJson() => {
        "19.00": the2374Values.reverse[the1900],
        "79.00": the7900,
        "128.00": the12800,
        "129.00": the12900,
        "149.00": the14900,
        "199.00": the19900,
        "219.00": the21900,
        "249.00": the24900,
        "289.00": the28900,
        "298.00": the29800,
        "299.00": the29900,
        "349.00": the34900,
        "379.00": the37900,
        "398.00": the39800,
        "399.00": the39900,
        "449.00": the44900,
        "456.00": the45600,
        "496.00": the49600 == null ? null : the49600,
        "499.00": the49900,
        "558.00": the55800,
        "598.00": the59800,
        "648.00": the64800 == null ? null : the64800,
        "649.00": the64900 == null ? null : the64900,
        "698.00": the69800,
        "699.00": the69900,
        "755.00": the75500 == null ? null : the75500,
        "799.00": the79900 == null ? null : the79900,
        "997.00": the99700 == null ? null : the99700,
        "1199.00": the119900 == null ? null : the119900,
        "1498.00": the149800,
        "1499.00": the149900 == null ? null : the149900,
        "2498.00": the249800,
        "2499.00": the249900 == null ? null : the249900,
        "2798.00": the279800,
        "3598.00": the359800 == null ? null : the359800,
        "3599.00": the359900 == null ? null : the359900,
        "3995.00": the399500 == null ? null : the399500,
        "3997.00": the399700 == null ? null : the399700,
        "3998.00": the399800 == null ? null : the399800,
        "4999.00": the499900 == null ? null : the499900,
        "5997.00": the599700 == null ? null : the599700,
        "5998.00": the599800 == null ? null : the599800,
        "5999.00": the599900 == null ? null : the599900,
        "6999.00": the699900 == null ? null : the699900,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
