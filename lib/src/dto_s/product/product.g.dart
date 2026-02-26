// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  code: json['code'] as String?,
  description: json['description'] as String?,
  unit: json['unit'] as String?,
  defaultPrice: (json['default_price'] as num?)?.toDouble(),
  version: (json['version'] as num).toInt(),
  isDeleted: json['is_deleted'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': instance.code,
  'description': instance.description,
  'unit': instance.unit,
  'default_price': instance.defaultPrice,
  'version': instance.version,
  'is_deleted': instance.isDeleted,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
