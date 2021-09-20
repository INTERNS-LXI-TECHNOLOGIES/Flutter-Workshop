import 'dart:convert';

RechargePlanData rechargePlanDataFromJson(String str) =>
    RechargePlanData.fromJson(json.decode(str));

String rechargePlanDataToJson(RechargePlanData data) =>
    json.encode(data.toJson());

class RechargePlanData {
  RechargePlanData({
    this.error,
    this.status,
    this.rechargePlanDataOperator,
    this.circle,
    this.rdata,
    this.message,
  });

  String error;
  String status;
  String rechargePlanDataOperator;
  String circle;
  Map<String, List<Rdatum>> rdata;
  String message;

  factory RechargePlanData.fromJson(Map<String, dynamic> json) =>
      RechargePlanData(
        error: json["ERROR"],
        status: json["STATUS"],
        rechargePlanDataOperator: json["Operator"],
        circle: json["Circle"],
        rdata: Map.from(json["RDATA"]).map((k, v) =>
            MapEntry<String, List<Rdatum>>(
                k,
                v == null
                    ? null
                    : List<Rdatum>.from(v.map((x) => Rdatum.fromJson(x))))),
        message: json["MESSAGE"],
      );

  Map<String, dynamic> toJson() => {
        "ERROR": error,
        "STATUS": status,
        "Operator": rechargePlanDataOperator,
        "Circle": circle,
        "RDATA": Map.from(rdata).map((k, v) => MapEntry<String, dynamic>(k,
            v == null ? null : List<dynamic>.from(v.map((x) => x.toJson())))),
        "MESSAGE": message,
      };
}

class Rdatum {
  Rdatum({
    this.rs,
    this.validity,
    this.desc,
    this.type,
  });

  int rs;
  String validity;
  String desc;
  Type type;

  factory Rdatum.fromJson(Map<String, dynamic> json) => Rdatum(
        rs: json["rs"],
        validity: json["validity"],
        desc: json["desc"],
        type: typeValues.map[json["Type"]],
      );

  Map<String, dynamic> toJson() => {
        "rs": rs,
        "validity": validity,
        "desc": desc,
        "Type": typeValues.reverse[type],
      };
}

enum Type { DATA, FRC, UNLIMITED, SMS, STV, TALKTIME }

final typeValues = EnumValues({
  "data": Type.DATA,
  "frc": Type.FRC,
  "sms": Type.SMS,
  "stv": Type.STV,
  "talktime": Type.TALKTIME,
  "unlimited": Type.UNLIMITED
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
