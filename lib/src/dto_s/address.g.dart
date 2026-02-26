// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'province',
      'city',
      'street',
      'plaque',
      'postal_code',
    ],
  );
  return Address(
    province: json['province'] as String,
    city: json['city'] as String,
    district: json['district'] as String?,
    street: json['street'] as String,
    alley: json['alley'] as String?,
    plaque: json['plaque'] as String,
    floor: json['floor'] as String?,
    unit: json['unit'] as String?,
    postalCode: json['postal_code'] as String,
    coordinates: const LatLngNullableConverter().fromJson(
      json['coordinates'] as Map<String, dynamic>?,
    ),
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  'id': instance.id,
  'province': instance.province,
  'city': instance.city,
  'district': instance.district,
  'street': instance.street,
  'alley': instance.alley,
  'plaque': instance.plaque,
  'floor': instance.floor,
  'unit': instance.unit,
  'postal_code': instance.postalCode,
  'coordinates': const LatLngNullableConverter().toJson(instance.coordinates),
};

AddressWithId _$AddressWithIdFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'province',
      'city',
      'street',
      'plaque',
      'postal_code',
      'address_type',
      'recipient_name',
      'recipient_phone',
    ],
  );
  return AddressWithId(
    recipientName: json['recipient_name'] as String,
    recipientPhone: json['recipient_phone'] as String,
    addressType: json['address_type'] as String,
    province: json['province'] as String,
    city: json['city'] as String,
    district: json['district'] as String?,
    street: json['street'] as String,
    alley: json['alley'] as String?,
    plaque: json['plaque'] as String,
    floor: json['floor'] as String?,
    unit: json['unit'] as String?,
    postalCode: json['postal_code'] as String,
    coordinates: const LatLngNullableConverter().fromJson(
      json['coordinates'] as Map<String, dynamic>?,
    ),
    isDefaultShipping: json['is_default_shipping'] as bool? ?? false,
    isDefaultBilling: json['is_default_billing'] as bool? ?? false,
    notes: json['notes'] as String?,
    verified: json['verified'] as bool? ?? false,
  );
}

Map<String, dynamic> _$AddressWithIdToJson(
  AddressWithId instance,
) => <String, dynamic>{
  'province': instance.province,
  'city': instance.city,
  'district': instance.district,
  'street': instance.street,
  'alley': instance.alley,
  'plaque': instance.plaque,
  'floor': instance.floor,
  'unit': instance.unit,
  'postal_code': instance.postalCode,
  'coordinates': const LatLngNullableConverter().toJson(instance.coordinates),
  'address_type': instance.addressType,
  'recipient_name': instance.recipientName,
  'recipient_phone': instance.recipientPhone,
  'is_default_shipping': instance.isDefaultShipping,
  'is_default_billing': instance.isDefaultBilling,
  'notes': instance.notes,
  'verified': instance.verified,
};
