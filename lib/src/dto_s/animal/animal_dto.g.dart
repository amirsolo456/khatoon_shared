// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalDTO _$AnimalDTOFromJson(Map<String, dynamic> json) => AnimalDTO(
  id: (json['id'] as num).toInt(),
  tagNumber: json['tag_number'] as String,
  name: json['name'] as String?,
  type: $enumDecode(_$AnimalTypeEnumMap, json['type']),
  breed: json['breed'] as String?,
  gender: $enumDecode(_$GenderEnumMap, json['gender']),
  birthDate: json['birth_date'] == null
      ? null
      : DateTime.parse(json['birth_date'] as String),
  purchaseDate: json['purchase_date'] == null
      ? null
      : DateTime.parse(json['purchase_date'] as String),
  purchasePrice: (json['purchase_price'] as num?)?.toDouble(),
  purchaseSource: json['purchase_source'] as String?,
  currentWeight: (json['current_weight'] as num?)?.toDouble(),
  color: json['color'] as String?,
  healthStatus: $enumDecodeNullable(
    _$HealthStatusEnumMap,
    json['health_status'],
  ),
  reproductionStatus: $enumDecodeNullable(
    _$ReproductionStatusEnumMap,
    json['reproduction_status'],
  ),
  notes: json['notes'] as String?,
  version: (json['version'] as num).toInt(),
  isDeleted: json['is_deleted'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$AnimalDTOToJson(AnimalDTO instance) => <String, dynamic>{
  'id': instance.id,
  'tag_number': instance.tagNumber,
  'name': instance.name,
  'type': _$AnimalTypeEnumMap[instance.type]!,
  'breed': instance.breed,
  'gender': _$GenderEnumMap[instance.gender]!,
  'birth_date': instance.birthDate?.toIso8601String(),
  'purchase_date': instance.purchaseDate?.toIso8601String(),
  'purchase_price': instance.purchasePrice,
  'purchase_source': instance.purchaseSource,
  'current_weight': instance.currentWeight,
  'color': instance.color,
  'health_status': _$HealthStatusEnumMap[instance.healthStatus],
  'reproduction_status':
      _$ReproductionStatusEnumMap[instance.reproductionStatus],
  'notes': instance.notes,
  'version': instance.version,
  'is_deleted': instance.isDeleted,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$AnimalTypeEnumMap = {
  AnimalType.cow: 'cow',
  AnimalType.sheep: 'sheep',
  AnimalType.goat: 'goat',
  AnimalType.camel: 'camel',
  AnimalType.horse: 'horse',
  AnimalType.poultry: 'poultry',
  AnimalType.other: 'other',
};

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

const _$HealthStatusEnumMap = {
  HealthStatus.excellent: 'excellent',
  HealthStatus.good: 'good',
  HealthStatus.average: 'average',
  HealthStatus.recovering: 'recovering',
  HealthStatus.underTreatment: 'underTreatment',
  HealthStatus.critical: 'critical',
  HealthStatus.unknown: 'unknown',
};

const _$ReproductionStatusEnumMap = {
  ReproductionStatus.pregnant: 'pregnant',
  ReproductionStatus.readyForPregnancy: 'readyForPregnancy',
  ReproductionStatus.recentlyGaveBirth: 'recentlyGaveBirth',
  ReproductionStatus.notReady: 'notReady',
  ReproductionStatus.infertile: 'infertile',
  ReproductionStatus.unknown: 'unknown',
};
