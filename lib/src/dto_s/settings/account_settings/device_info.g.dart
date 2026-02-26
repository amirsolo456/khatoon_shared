// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) => DeviceInfo(
  deviceId: json['device_id'] as String?,
  deviceModel: json['device_model'] as String?,
  os: json['os'] as String?,
  osVersion: json['os_version'] as String?,
  appVersion: json['app_version'] as String?,
  pushToken: json['push_token'] as String?,
  lastSeen: const DateTimeNullableConverter().fromJson(
    json['last_seen'] as String?,
  ),
);

Map<String, dynamic> _$DeviceInfoToJson(DeviceInfo instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'device_model': instance.deviceModel,
      'os': instance.os,
      'os_version': instance.osVersion,
      'app_version': instance.appVersion,
      'push_token': instance.pushToken,
      'last_seen': const DateTimeNullableConverter().toJson(instance.lastSeen),
    };
