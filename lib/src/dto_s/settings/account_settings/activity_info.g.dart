// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityInfo _$ActivityInfoFromJson(Map<String, dynamic> json) => ActivityInfo(
  lastPurchaseDate: const DateTimeNullableConverter().fromJson(
    json['last_purchase_date'] as String?,
  ),
  lastLoginDate: const DateTimeNullableConverter().fromJson(
    json['last_login_date'] as String?,
  ),
  lastWishlistUpdate: const DateTimeNullableConverter().fromJson(
    json['last_wishlist_update'] as String?,
  ),
  lastCartUpdate: const DateTimeNullableConverter().fromJson(
    json['last_cart_update'] as String?,
  ),
  lastProfileUpdate: const DateTimeNullableConverter().fromJson(
    json['last_profile_update'] as String?,
  ),
  lastLoyaltyUpdate: const DateTimeNullableConverter().fromJson(
    json['last_loyalty_update'] as String?,
  ),
  totalLogins: (json['total_logins'] as num?)?.toInt() ?? 0,
  totalSessions: (json['total_sessions'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$ActivityInfoToJson(ActivityInfo instance) =>
    <String, dynamic>{
      'last_purchase_date': const DateTimeNullableConverter().toJson(
        instance.lastPurchaseDate,
      ),
      'last_login_date': const DateTimeNullableConverter().toJson(
        instance.lastLoginDate,
      ),
      'last_wishlist_update': const DateTimeNullableConverter().toJson(
        instance.lastWishlistUpdate,
      ),
      'last_cart_update': const DateTimeNullableConverter().toJson(
        instance.lastCartUpdate,
      ),
      'last_profile_update': const DateTimeNullableConverter().toJson(
        instance.lastProfileUpdate,
      ),
      'last_loyalty_update': const DateTimeNullableConverter().toJson(
        instance.lastLoyaltyUpdate,
      ),
      'total_logins': instance.totalLogins,
      'total_sessions': instance.totalSessions,
    };
