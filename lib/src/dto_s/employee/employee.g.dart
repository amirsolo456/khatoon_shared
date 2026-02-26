// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  role: json['role'] as String?,
  salaryAmount: (json['salary_amount'] as num?)?.toDouble(),
  isCommissioned: json['is_commissioned'] as bool,
  commissionPercent: (json['commission_percent'] as num?)?.toDouble(),
  notes: json['notes'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  version: (json['version'] as num).toInt(),
  isDeleted: json['is_deleted'] as bool,
);

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'role': instance.role,
  'salary_amount': instance.salaryAmount,
  'is_commissioned': instance.isCommissioned,
  'commission_percent': instance.commissionPercent,
  'notes': instance.notes,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'version': instance.version,
  'is_deleted': instance.isDeleted,
};
