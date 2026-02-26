// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrivacySettings _$PrivacySettingsFromJson(
  Map<String, dynamic> json,
) => PrivacySettings(
  showPurchaseHistory: json['show_purchase_history'] as bool? ?? true,
  shareWishlist: json['share_wishlist'] as bool? ?? false,
  receivePromotionalEmails: json['receive_promotional_emails'] as bool? ?? true,
  receiveSmsNotifications: json['receive_sms_notifications'] as bool? ?? true,
  isPhoneVerified: json['is_phone_verified'] as bool? ?? false,
  isEmailVerified: json['is_email_verified'] as bool? ?? false,
  shareLocation: json['share_location'] as bool? ?? false,
);

Map<String, dynamic> _$PrivacySettingsToJson(PrivacySettings instance) =>
    <String, dynamic>{
      'show_purchase_history': instance.showPurchaseHistory,
      'share_wishlist': instance.shareWishlist,
      'receive_promotional_emails': instance.receivePromotionalEmails,
      'receive_sms_notifications': instance.receiveSmsNotifications,
      'is_phone_verified': instance.isPhoneVerified,
      'is_email_verified': instance.isEmailVerified,
      'share_location': instance.shareLocation,
    };
