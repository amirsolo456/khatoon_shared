import 'package:json_annotation/json_annotation.dart';

import '../product/product_performance.dart';
import '../settings/app_settings/daily_stat.dart';

part 'seller_stats.g.dart';

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

  factory SellerStats.fromJson(Map<String, dynamic> json) =>
      _$SellerStatsFromJson(json);

  Map<String, dynamic> toJson() => _$SellerStatsToJson(this);

  Map<String, dynamic> toMap() {
    return {
      'todayOrders': todayOrders,
      'todayRevenue': todayRevenue,
      'weekOrders': weekOrders,
      'weekRevenue': weekRevenue,
      'monthOrders': monthOrders,
      'monthRevenue': monthRevenue,
      'dailyStats': dailyStats.map((x) => x.toJson()).toList(),
      'topProducts': topProducts.map((x) => x.toJson()).toList(),
    };
  }

  factory SellerStats.fromMap(Map<String, dynamic> map) {
    return SellerStats(
      todayOrders: (map['todayOrders'] as num).toInt(),
      todayRevenue: (map['todayRevenue'] as num).toInt(),
      weekOrders: (map['weekOrders'] as num).toInt(),
      weekRevenue: (map['weekRevenue'] as num).toInt(),
      monthOrders: (map['monthOrders'] as num).toInt(),
      monthRevenue: (map['monthRevenue'] as num).toInt(),
      dailyStats: List<DailyStat>.from(
        map['dailyStats']?.map((x) => DailyStat.fromJson(x)) ?? [],
      ),
      topProducts: List<ProductPerformance>.from(
        map['topProducts']?.map((x) => ProductPerformance.fromJson(x)) ?? [],
      ),
    );
  }
}
