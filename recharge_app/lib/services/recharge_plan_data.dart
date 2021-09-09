import 'dart:convert';

RechargePlanData rechargePlanDataFromJson(String str) =>
    RechargePlanData.fromJson(json.decode(str));

String rechargePlanDataToJson(RechargePlanData data) =>
    json.encode(data.toJson());

class RechargePlanData {
  RechargePlanData({
    this.response,
  });

  List<Response> response;

  factory RechargePlanData.fromJson(Map<String, dynamic> json) =>
      RechargePlanData(
        response: List<Response>.from(
            json["response"].map((x) => Response.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "response": List<dynamic>.from(response.map((x) => x.toJson())),
      };
}

class Response {
  Response({
    this.operatorName,
    this.operatorId,
    this.serviceType,
    this.status,
    this.billFetch,
    this.bbpsEnabled,
    this.message,
    this.description,
    this.amountMinimum,
    this.amountMaximum,
  });

  String operatorName;
  String operatorId;
  ServiceType serviceType;
  String status;
  BbpsEnabled billFetch;
  BbpsEnabled bbpsEnabled;
  String message;
  String description;
  String amountMinimum;
  String amountMaximum;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        operatorName: json["operator_name"],
        operatorId: json["operator_id"],
        serviceType: serviceTypeValues.map[json["service_type"]],
        status: json["status"],
        billFetch: bbpsEnabledValues.map[json["bill_fetch"]],
        bbpsEnabled: bbpsEnabledValues.map[json["bbps_enabled"]],
        message: json["message"],
        description: json["description"],
        amountMinimum: json["amount_minimum"],
        amountMaximum: json["amount_maximum"],
      );

  Map<String, dynamic> toJson() => {
        "operator_name": operatorName,
        "operator_id": operatorId,
        "service_type": serviceTypeValues.reverse[serviceType],
        "status": status,
        "bill_fetch": bbpsEnabledValues.reverse[billFetch],
        "bbps_enabled": bbpsEnabledValues.reverse[bbpsEnabled],
        "message": message,
        "description": description,
        "amount_minimum": amountMinimum,
        "amount_maximum": amountMaximum,
      };
}

enum BbpsEnabled { NO, YES, EMPTY }

final bbpsEnabledValues = EnumValues(
    {"": BbpsEnabled.EMPTY, "NO": BbpsEnabled.NO, "YES": BbpsEnabled.YES});

enum ServiceType {
  PREPAID,
  DTH,
  POSTPAID,
  DATACARD,
  ELC,
  MONEY_TRANSFER,
  PAN,
  GAS,
  WATER,
  LANDLINE,
  BROADBAND,
  INSURANCE,
  SERVICE_TYPE_GAS,
  PAYMENTS,
  FASTAG
}

final serviceTypeValues = EnumValues({
  "Broadband": ServiceType.BROADBAND,
  "DATACARD": ServiceType.DATACARD,
  "DTH": ServiceType.DTH,
  "ELC": ServiceType.ELC,
  "Fastag": ServiceType.FASTAG,
  "GAS": ServiceType.GAS,
  "Insurance": ServiceType.INSURANCE,
  "Landline": ServiceType.LANDLINE,
  "Money Transfer": ServiceType.MONEY_TRANSFER,
  "PAN": ServiceType.PAN,
  "PAYMENTS": ServiceType.PAYMENTS,
  "Postpaid": ServiceType.POSTPAID,
  "Prepaid": ServiceType.PREPAID,
  "Gas": ServiceType.SERVICE_TYPE_GAS,
  "Water": ServiceType.WATER
});

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
