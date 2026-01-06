// seller_related.dart
import 'package:json_annotation/json_annotation.dart';import '../../services/conveters/converters.dart';



part 'seller_related.g.dart';



@JsonSerializable()
class NotificationSettings {
  @JsonKey(defaultValue: true)
  final bool orderNotifications;

  @JsonKey(defaultValue: true)
  final bool inventoryAlerts;

  @JsonKey(defaultValue: true)
  final bool newsletter;

  @JsonKey(defaultValue: true)
  final bool promotionEmails;

  @JsonKey(defaultValue: true)
  final bool smsNotifications;

  NotificationSettings({
    this.orderNotifications = true,
    this.inventoryAlerts = true,
    this.newsletter = true,
    this.promotionEmails = true,
    this.smsNotifications = true,
  });

  factory NotificationSettings.fromJson(Map<String, dynamic> json) => _$NotificationSettingsFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationSettingsToJson(this);
}

@JsonSerializable()
class MetaInfo {
  final String? title;
  final String? description;
  final String? keywords;

  MetaInfo({
    this.title,
    this.description,
    this.keywords,
  });

  factory MetaInfo.fromJson(Map<String, dynamic> json) => _$MetaInfoFromJson(json);
  Map<String, dynamic> toJson() => _$MetaInfoToJson(this);
}

@JsonSerializable()
class DailyStat {
  @DateTimeConverter()
  @JsonKey(required: true)
  final DateTime date;

  @JsonKey(required: true)
  final int orders;

  @JsonKey(required: true)
  final double revenue;

  DailyStat({
    required this.date,
    required this.orders,
    required this.revenue,
  });

  factory DailyStat.fromJson(Map<String, dynamic> json) => _$DailyStatFromJson(json);
  Map<String, dynamic> toJson() => _$DailyStatToJson(this);
}

@JsonSerializable()
class ProductPerformance {
  @JsonKey(required: true)
  final String productId;

  @JsonKey(required: true)
  final String productName;

  @JsonKey(required: true)
  final int sales;

  @JsonKey(required: true)
  final double revenue;

  @JsonKey(defaultValue: 0.0)
  final double growthRate;

  ProductPerformance({
    required this.productId,
    required this.productName,
    required this.sales,
    required this.revenue,
    this.growthRate = 0.0,
  });

  factory ProductPerformance.fromJson(Map<String, dynamic> json) => _$ProductPerformanceFromJson(json);
  Map<String, dynamic> toJson() => _$ProductPerformanceToJson(this);
}

@JsonSerializable()
class SellerStats {
  @JsonKey(defaultValue: 0)
  final int todayOrders;

  @JsonKey(defaultValue: 0)
  final int todayRevenue;

  @JsonKey(defaultValue: 0)
  final int weekOrders;

  @JsonKey(defaultValue: 0)
  final int weekRevenue;

  @JsonKey(defaultValue: 0)
  final int monthOrders;

  @JsonKey(defaultValue: 0)
  final int monthRevenue;

  @JsonKey(defaultValue: [])
  final List<DailyStat> dailyStats;

  @JsonKey(defaultValue: [])
  final List<ProductPerformance> topProducts;

  SellerStats({
    this.todayOrders = 0,
    this.todayRevenue = 0,
    this.weekOrders = 0,
    this.weekRevenue = 0,
    this.monthOrders = 0,
    this.monthRevenue = 0,
    this.dailyStats = const [],
    this.topProducts = const [],
  });

  factory SellerStats.fromJson(Map<String, dynamic> json) => _$SellerStatsFromJson(json);
  Map<String, dynamic> toJson() => _$SellerStatsToJson(this);
}