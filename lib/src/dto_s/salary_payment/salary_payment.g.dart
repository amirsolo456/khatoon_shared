// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalaryPayment _$SalaryPaymentFromJson(Map<String, dynamic> json) =>
    SalaryPayment(
      id: (json['id'] as num).toInt(),
      employeeId: (json['employee_id'] as num).toInt(),
      amountPaid: (json['amount_paid'] as num).toDouble(),
      datePaid: json['date_paid'] == null
          ? null
          : DateTime.parse(json['date_paid'] as String),
      periodStart: DateTime.parse(json['period_start'] as String),
      periodEnd: DateTime.parse(json['period_end'] as String),
      notes: json['notes'] as String?,
      version: (json['version'] as num).toInt(),
      isDeleted: json['is_deleted'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SalaryPaymentToJson(SalaryPayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_id': instance.employeeId,
      'amount_paid': instance.amountPaid,
      'date_paid': instance.datePaid?.toIso8601String(),
      'period_start': instance.periodStart.toIso8601String(),
      'period_end': instance.periodEnd.toIso8601String(),
      'notes': instance.notes,
      'version': instance.version,
      'is_deleted': instance.isDeleted,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
