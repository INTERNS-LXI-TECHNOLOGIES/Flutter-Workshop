class RechargeApiData {
  bool _success;
  String _hitCredit;
  String _apiStarted;
  String _apiExpiry;
  String _operator;
  String _circle;
  String _message;

  RechargeApiData({
    bool success,
    String hitCredit,
    String apiStarted,
    String apiExpiry,
    String operator,
    String circle,
    String message,
  }) {
    this._success = success;
    this._hitCredit = hitCredit;
    this._apiStarted = apiStarted;
    this._apiExpiry = apiExpiry;
    this._operator = operator;
    this._circle = circle;
    this._message = message;
  }

  bool get success => _success;
  set success(bool success) => _success = success;
  String get hitCredit => _hitCredit;
  set hitCredit(String hitCredit) => _hitCredit = hitCredit;
  String get apiStarted => _apiStarted;
  set apiStarted(String apiStarted) => _apiStarted = apiStarted;
  String get apiExpiry => _apiExpiry;
  set apiExpiry(String apiExpiry) => _apiExpiry = apiExpiry;
  String get operator => _operator;
  set operator(String operator) => _operator = operator;
  String get circle => _circle;
  set circle(String circle) => _circle = circle;
  String get message => _message;
  set message(String message) => _message = message;

  RechargeApiData.fromJson(Map<String, dynamic> json) {
    _success = json['success'];
    _hitCredit = json['hit_credit'];
    _apiStarted = json['api_started'];
    _apiExpiry = json['api_expiry'];
    _operator = json['operator'];
    _circle = json['circle'];
    _message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this._success;
    data['hit_credit'] = this._hitCredit;
    data['api_started'] = this._apiStarted;
    data['api_expiry'] = this._apiExpiry;
    data['operator'] = this._operator;
    data['circle'] = this._circle;
    data['message'] = this._message;

    return data;
  }
}
