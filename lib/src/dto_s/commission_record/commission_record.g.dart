// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commission_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommissionRecord _$CommissionRecordFromJson(Map<String, dynamic> json) =>
    CommissionRecord(
      id: (json['id'] as num).toInt(),
      employeeId: (json['employee_id'] as num).toInt(),
      invoiceId: (json['invoice_id'] as num).toInt(),
      calculatedAmount: (json['calculated_amount'] as num).toDouble(),
      paidAmount: (json['paid_amount'] as num).toDouble(),
      version: (json['version'] as num).toInt(),
      isDeleted: json['is_deleted'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CommissionRecordToJson(CommissionRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_id': instance.employeeId,
      'invoice_id': instance.invoiceId,
      'calculated_amount': instance.calculatedAmount,
      'paid_amount': instance.paidAmount,
      'version': instance.version,
      'is_deleted': instance.isDeleted,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
