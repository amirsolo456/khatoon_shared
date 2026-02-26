// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Preferences _$PreferencesFromJson(Map<String, dynamic> json) => Preferences(
  language: json['language'] as String? ?? 'fa',
  currency: json['currency'] as String? ?? 'IRT',
  theme: json['theme'] as String? ?? 'light',
  notificationSettings:
      json['notification_settings'] as Map<String, dynamic>? ?? const {},
  favoriteCategories:
      (json['favorite_categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  autoLogin: json['auto_login'] as bool? ?? true,
  biometricAuth: json['biometric_auth'] as bool? ?? false,
);

Map<String, dynamic> _$PreferencesToJson(Preferences instance) =>
    <String, dynamic>{
      'language': instance.language,
      'currency': instance.currency,
      'theme': instance.theme,
      'notification_settings': instance.notificationSettings,
      'favorite_categories': instance.favoriteCategories,
      'auto_login': instance.autoLogin,
      'biometric_auth': instance.biometricAuth,
    };
