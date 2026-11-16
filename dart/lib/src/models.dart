/// Response models for the Random Joke API.

/// API Response wrapper.
class RandomjokeResponse {
  final String status;
  final dynamic error;
  final RandomjokeData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  RandomjokeResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory RandomjokeResponse.fromJson(Map<String, dynamic> json) => RandomjokeResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? RandomjokeData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Random Joke API.

class RandomjokeData {
  num? score;
  String? setup;
  String? punchline;

  RandomjokeData({
    this.score,
    this.setup,
    this.punchline,
  });

  factory RandomjokeData.fromJson(Map<String, dynamic> json) => RandomjokeData(
      score: json['score'],
      setup: json['setup'],
      punchline: json['punchline'],
    );
}

class RandomjokeRequest {
  bool? safe;

  RandomjokeRequest({
    this.safe,
  });

  Map<String, dynamic> toJson() => {
      if (safe != null) 'safe': safe,
    };
}
