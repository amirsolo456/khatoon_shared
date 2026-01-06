

import 'package:json_annotation/json_annotation.dart';
part 'buyer_stats.g.dart';
@JsonSerializable()
class BuyerStats {
  @JsonKey(defaultValue: 0)
  final int totalOrders;

  @JsonKey(defaultValue: 0)
  final int successfulOrders;

  @JsonKey(defaultValue: 0)
  final int canceledOrders;

  @JsonKey(defaultValue: 0)
  final int returnedOrders;

  @JsonKey(defaultValue: 0.0)
  final double averageOrderValue;

  @JsonKey(defaultValue: 0)
  final int wishlistItems;

  @JsonKey(defaultValue: 0)
  final int cartItems;

  @JsonKey(defaultValue: 0)
  final int followingSellers;

  BuyerStats({
    this.totalOrders = 0,
    this.successfulOrders = 0,
    this.canceledOrders = 0,
    this.returnedOrders = 0,
    this.averageOrderValue = 0.0,
    this.wishlistItems = 0,
    this.cartItems = 0,
    this.followingSellers = 0,
  });

  factory BuyerStats.fromJson(Map<String, dynamic> json) => _$BuyerStatsFromJson(json);
  Map<String, dynamic> toJson() => _$BuyerStatsToJson(this);
}