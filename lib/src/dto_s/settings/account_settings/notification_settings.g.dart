// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationSettings _$NotificationSettingsFromJson(
  Map<String, dynamic> json,
) => NotificationSettings(
  orderNotifications: json['order_notifications'] as bool? ?? true,
  inventoryAlerts: json['inventory_alerts'] as bool? ?? true,
  newsletter: json['newsletter'] as bool? ?? true,
  promotionEmails: json['promotion_emails'] as bool? ?? true,
  smsNotifications: json['sms_notifications'] as bool? ?? true,
);

Map<String, dynamic> _$NotificationSettingsToJson(
  NotificationSettings instance,
) => <String, dynamic>{
  'order_notifications': instance.orderNotifications,
  'inventory_alerts': instance.inventoryAlerts,
  'newsletter': instance.newsletter,
  'promotion_emails': instance.promotionEmails,
  'sms_notifications': instance.smsNotifications,
};
